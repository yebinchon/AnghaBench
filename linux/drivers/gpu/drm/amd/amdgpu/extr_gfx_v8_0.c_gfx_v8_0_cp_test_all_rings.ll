; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_cp_test_all_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_cp_test_all_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.amdgpu_ring*, %struct.TYPE_4__, %struct.amdgpu_ring* }
%struct.TYPE_4__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v8_0_cp_test_all_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_cp_test_all_rings(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i64 0
  store %struct.amdgpu_ring* %11, %struct.amdgpu_ring** %6, align 8
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %13 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.amdgpu_ring* %22, %struct.amdgpu_ring** %6, align 8
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %24 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %41, i64 %43
  store %struct.amdgpu_ring* %44, %struct.amdgpu_ring** %6, align 8
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %6, align 8
  %46 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %30

50:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %27, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
