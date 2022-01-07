; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_set_pageflip_irq_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_set_pageflip_irq_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"invalid pageflip crtc %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmGRPH_INTERRUPT_CONTROL = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@AMDGPU_IRQ_STATE_DISABLE = common dso_local global i32 0, align 4
@GRPH_INTERRUPT_CONTROL__GRPH_PFLIP_INT_MASK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @dce_v11_0_set_pageflip_irq_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v11_0_set_pageflip_irq_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_irq_src*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp uge i32 %11, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %60

22:                                               ; preds = %4
  %23 = load i64, i64* @mmGRPH_INTERRUPT_CONTROL, align 8
  %24 = load i64*, i64** @crtc_offsets, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %23, %28
  %30 = call i32 @RREG32(i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @AMDGPU_IRQ_STATE_DISABLE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %22
  %35 = load i64, i64* @mmGRPH_INTERRUPT_CONTROL, align 8
  %36 = load i64*, i64** @crtc_offsets, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %35, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @GRPH_INTERRUPT_CONTROL__GRPH_PFLIP_INT_MASK_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i32 @WREG32(i64 %41, i32 %45)
  br label %59

47:                                               ; preds = %22
  %48 = load i64, i64* @mmGRPH_INTERRUPT_CONTROL, align 8
  %49 = load i64*, i64** @crtc_offsets, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %48, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @GRPH_INTERRUPT_CONTROL__GRPH_PFLIP_INT_MASK_MASK, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @WREG32(i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %47, %34
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %17
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
