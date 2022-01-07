; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_set_rptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_set_rptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring }
%struct.amdgpu_ih_ring = type { i32, i32, i32*, i64 }

@OSSSYS = common dso_local global i32 0, align 4
@mmIH_RB_RPTR = common dso_local global i32 0, align 4
@mmIH_RB_RPTR_RING1 = common dso_local global i32 0, align 4
@mmIH_RB_RPTR_RING2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ih_ring*)* @vega10_ih_set_rptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_ih_set_rptr(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ih_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ih_ring* %1, %struct.amdgpu_ih_ring** %4, align 8
  %5 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32 %12, i32* %15, align 4
  %16 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @WDOORBELL32(i32 %18, i32 %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %9
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %29 = call i32 @vega10_ih_irq_rearm(%struct.amdgpu_device* %27, %struct.amdgpu_ih_ring* %28)
  br label %30

30:                                               ; preds = %26, %9
  br label %73

31:                                               ; preds = %2
  %32 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = icmp eq %struct.amdgpu_ih_ring* %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @OSSSYS, align 4
  %39 = load i32, i32* @mmIH_RB_RPTR, align 4
  %40 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @WREG32_SOC15(i32 %38, i32 0, i32 %39, i32 %42)
  br label %72

44:                                               ; preds = %31
  %45 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = icmp eq %struct.amdgpu_ih_ring* %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32, i32* @OSSSYS, align 4
  %52 = load i32, i32* @mmIH_RB_RPTR_RING1, align 4
  %53 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @WREG32_SOC15(i32 %51, i32 0, i32 %52, i32 %55)
  br label %71

57:                                               ; preds = %44
  %58 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = icmp eq %struct.amdgpu_ih_ring* %58, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i32, i32* @OSSSYS, align 4
  %65 = load i32, i32* @mmIH_RB_RPTR_RING2, align 4
  %66 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %67 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @WREG32_SOC15(i32 %64, i32 0, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %63, %57
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72, %30
  ret void
}

declare dso_local i32 @WDOORBELL32(i32, i32) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @vega10_ih_irq_rearm(%struct.amdgpu_device*, %struct.amdgpu_ih_ring*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
