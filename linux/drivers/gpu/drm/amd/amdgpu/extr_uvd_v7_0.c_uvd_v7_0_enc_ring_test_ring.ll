; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_enc_ring_test_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_uvd_v7_0.c_uvd_v7_0_enc_ring_test_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@HEVC_ENC_CMD_END = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @uvd_v7_0_enc_ring_test_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvd_v7_0_enc_ring_test_ring(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 0
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  store %struct.amdgpu_device* %10, %struct.amdgpu_device** %4, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %17 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %16, i32 16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %15
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %24 = call i64 @amdgpu_ring_get_rptr(%struct.amdgpu_ring* %23)
  store i64 %24, i64* %5, align 8
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %26 = load i32, i32* @HEVC_ENC_CMD_END, align 4
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %26)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %29 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %44, %22
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %38 = call i64 @amdgpu_ring_get_rptr(%struct.amdgpu_ring* %37)
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %36
  %43 = call i32 @udelay(i32 1)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %30

47:                                               ; preds = %41, %30
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp uge i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %20, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i64 @amdgpu_ring_get_rptr(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
