; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_ring_test_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_ring_test_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v6_0_ring_test_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v6_0_ring_test_ring(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = call i32 @amdgpu_gfx_scratch_get(%struct.amdgpu_device* %12, i32* %5)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %72

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @WREG32(i32 %19, i32 -889266515)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %22 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %21, i32 3)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %67

26:                                               ; preds = %18
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %28 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %29 = call i32 @PACKET3(i32 %28, i32 1)
  %30 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %27, i32 %29)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %31, i32 %34)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %36, i32 -559038737)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %39 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %38)
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %54, %26
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @RREG32(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, -559038737
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %57

52:                                               ; preds = %46
  %53 = call i32 @udelay(i32 1)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %40

57:                                               ; preds = %51, %40
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp uge i32 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %25
  %68 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @amdgpu_gfx_scratch_free(%struct.amdgpu_device* %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %16
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @amdgpu_gfx_scratch_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @amdgpu_gfx_scratch_free(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
