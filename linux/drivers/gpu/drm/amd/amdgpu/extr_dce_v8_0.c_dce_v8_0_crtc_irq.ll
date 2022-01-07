; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32, i32* }

@interrupt_status_offsets = common dso_local global %struct.TYPE_2__* null, align 8
@mmLB_VBLANK_STATUS = common dso_local global i64 0, align 8
@crtc_offsets = common dso_local global i64* null, align 8
@LB_VBLANK_STATUS__VBLANK_ACK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"IH: IH event w/o asserted irq bit?\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"IH: D%d vblank\0A\00", align 1
@mmLB_VLINE_STATUS = common dso_local global i64 0, align 8
@LB_VLINE_STATUS__VLINE_ACK_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"IH: D%d vline\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unhandled interrupt: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @dce_v8_0_crtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v8_0_crtc_irq(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_irq_src*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %5, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %6, align 8
  %10 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %11 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @interrupt_status_offsets, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @amdgpu_display_crtc_idx_to_irq_type(%struct.amdgpu_device* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %25 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %93 [
    i32 0, label %29
    i32 1, label %67
  ]

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @interrupt_status_offsets, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %30, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load i64, i64* @mmLB_VBLANK_STATUS, align 8
  %41 = load i64*, i64** @crtc_offsets, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %40, %45
  %47 = load i32, i32* @LB_VBLANK_STATUS__VBLANK_ACK_MASK, align 4
  %48 = call i32 @WREG32(i64 %46, i32 %47)
  br label %51

49:                                               ; preds = %29
  %50 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %39
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %53 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @amdgpu_irq_enabled(%struct.amdgpu_device* %52, %struct.amdgpu_irq_src* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @drm_handle_vblank(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  %66 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %103

67:                                               ; preds = %3
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @interrupt_status_offsets, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %68, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %67
  %78 = load i64, i64* @mmLB_VLINE_STATUS, align 8
  %79 = load i64*, i64** @crtc_offsets, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %78, %83
  %85 = load i32, i32* @LB_VLINE_STATUS__VLINE_ACK_MASK, align 4
  %86 = call i32 @WREG32(i64 %84, i32 %85)
  br label %89

87:                                               ; preds = %67
  %88 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %77
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  %92 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %103

93:                                               ; preds = %3
  %94 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %95 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %98 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %101)
  br label %103

103:                                              ; preds = %93, %89, %63
  ret i32 0
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @amdgpu_display_crtc_idx_to_irq_type(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @amdgpu_irq_enabled(%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
