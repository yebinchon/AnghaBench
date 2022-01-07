; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_irq_rearm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_ih.c_vega10_ih_irq_rearm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring }
%struct.amdgpu_ih_ring = type { i64, i64, i32 }

@OSSSYS = common dso_local global i32 0, align 4
@mmIH_RB_RPTR = common dso_local global i32 0, align 4
@mmIH_RB_RPTR_RING1 = common dso_local global i32 0, align 4
@mmIH_RB_RPTR_RING2 = common dso_local global i32 0, align 4
@MAX_REARM_RETRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ih_ring*)* @vega10_ih_irq_rearm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_ih_irq_rearm(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ih_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ih_ring* %1, %struct.amdgpu_ih_ring** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = icmp eq %struct.amdgpu_ih_ring* %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @OSSSYS, align 4
  %15 = load i32, i32* @mmIH_RB_RPTR, align 4
  %16 = call i64 @SOC15_REG_OFFSET(i32 %14, i32 0, i32 %15)
  store i64 %16, i64* %5, align 8
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = icmp eq %struct.amdgpu_ih_ring* %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @OSSSYS, align 4
  %25 = load i32, i32* @mmIH_RB_RPTR_RING1, align 4
  %26 = call i64 @SOC15_REG_OFFSET(i32 %24, i32 0, i32 %25)
  store i64 %26, i64* %5, align 8
  br label %39

27:                                               ; preds = %17
  %28 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = icmp eq %struct.amdgpu_ih_ring* %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @OSSSYS, align 4
  %35 = load i32, i32* @mmIH_RB_RPTR_RING2, align 4
  %36 = call i64 @SOC15_REG_OFFSET(i32 %34, i32 0, i32 %35)
  store i64 %36, i64* %5, align 8
  br label %38

37:                                               ; preds = %27
  br label %72

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %23
  br label %40

40:                                               ; preds = %39, %13
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %69, %40
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @MAX_REARM_RETRY, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @RREG32_NO_KIQ(i64 %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %45
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %56 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @WDOORBELL32(i32 %62, i64 %65)
  br label %68

67:                                               ; preds = %53, %45
  br label %72

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %7, align 8
  br label %41

72:                                               ; preds = %37, %67, %41
  ret void
}

declare dso_local i64 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i64 @RREG32_NO_KIQ(i64) #1

declare dso_local i32 @WDOORBELL32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
