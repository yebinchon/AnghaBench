; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_crtc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_crtc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32, i32* }

@interrupt_status_offsets = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"IH: IH event w/o asserted irq bit?\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"IH: D%d vblank\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"IH: D%d vline\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unhandled interrupt: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @dce_v11_0_crtc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v11_0_crtc_irq(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
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
  switch i32 %28, label %81 [
    i32 0, label %29
    i32 1, label %61
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
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dce_v11_0_crtc_vblank_int_ack(%struct.amdgpu_device* %40, i32 %41)
  br label %45

43:                                               ; preds = %29
  %44 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %47 = load %struct.amdgpu_irq_src*, %struct.amdgpu_irq_src** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @amdgpu_irq_enabled(%struct.amdgpu_device* %46, %struct.amdgpu_irq_src* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @drm_handle_vblank(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  %60 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %91

61:                                               ; preds = %3
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @interrupt_status_offsets, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %62, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @dce_v11_0_crtc_vline_int_ack(%struct.amdgpu_device* %72, i32 %73)
  br label %77

75:                                               ; preds = %61
  %76 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  %80 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %91

81:                                               ; preds = %3
  %82 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %83 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %86 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %89)
  br label %91

91:                                               ; preds = %81, %77, %57
  ret i32 0
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @amdgpu_display_crtc_idx_to_irq_type(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @dce_v11_0_crtc_vblank_int_ack(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @amdgpu_irq_enabled(%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32) #1

declare dso_local i32 @drm_handle_vblank(i32, i32) #1

declare dso_local i32 @dce_v11_0_crtc_vline_int_ack(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
