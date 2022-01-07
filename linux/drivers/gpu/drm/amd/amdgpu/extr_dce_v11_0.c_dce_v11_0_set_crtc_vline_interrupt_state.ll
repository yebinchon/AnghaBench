; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_set_crtc_vline_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_set_crtc_vline_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"invalid crtc %d\0A\00", align 1
@mmLB_INTERRUPT_MASK = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@LB_INTERRUPT_MASK = common dso_local global i32 0, align 4
@VLINE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32)* @dce_v11_0_set_crtc_vline_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_set_crtc_vline_interrupt_state(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %8, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %64

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %63 [
    i32 129, label %19
    i32 128, label %41
  ]

19:                                               ; preds = %17
  %20 = load i64, i64* @mmLB_INTERRUPT_MASK, align 8
  %21 = load i64*, i64** @crtc_offsets, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %20, %25
  %27 = call i32 @RREG32(i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LB_INTERRUPT_MASK, align 4
  %30 = load i32, i32* @VLINE_INTERRUPT_MASK, align 4
  %31 = call i32 @REG_SET_FIELD(i32 %28, i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i64, i64* @mmLB_INTERRUPT_MASK, align 8
  %33 = load i64*, i64** @crtc_offsets, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %32, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @WREG32(i64 %38, i32 %39)
  br label %64

41:                                               ; preds = %17
  %42 = load i64, i64* @mmLB_INTERRUPT_MASK, align 8
  %43 = load i64*, i64** @crtc_offsets, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %42, %47
  %49 = call i32 @RREG32(i64 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @LB_INTERRUPT_MASK, align 4
  %52 = load i32, i32* @VLINE_INTERRUPT_MASK, align 4
  %53 = call i32 @REG_SET_FIELD(i32 %50, i32 %51, i32 %52, i32 1)
  store i32 %53, i32* %7, align 4
  %54 = load i64, i64* @mmLB_INTERRUPT_MASK, align 8
  %55 = load i64*, i64** @crtc_offsets, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %54, %59
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @WREG32(i64 %60, i32 %61)
  br label %64

63:                                               ; preds = %17
  br label %64

64:                                               ; preds = %14, %63, %41, %19
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
