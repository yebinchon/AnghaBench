; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_3d_struct_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_3d_struct_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }

@DRM_MODE_FLAG_3D_FRAME_PACKING = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_TOP_AND_BOTTOM = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32, i32*, i32, i32)* @add_3d_struct_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_3d_struct_modes(%struct.drm_connector* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %5
  %17 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.drm_display_mode* @drm_display_mode_from_vic_index(%struct.drm_connector* %17, i32* %18, i32 %19, i32 %20)
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %11, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %23 = icmp ne %struct.drm_display_mode* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load i32, i32* @DRM_MODE_FLAG_3D_FRAME_PACKING, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %32 = call i32 @drm_mode_probed_add(%struct.drm_connector* %30, %struct.drm_display_mode* %31)
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %24, %16
  br label %36

36:                                               ; preds = %35, %5
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 64
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call %struct.drm_display_mode* @drm_display_mode_from_vic_index(%struct.drm_connector* %41, i32* %42, i32 %43, i32 %44)
  store %struct.drm_display_mode* %45, %struct.drm_display_mode** %11, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %47 = icmp ne %struct.drm_display_mode* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load i32, i32* @DRM_MODE_FLAG_3D_TOP_AND_BOTTOM, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %56 = call i32 @drm_mode_probed_add(%struct.drm_connector* %54, %struct.drm_display_mode* %55)
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %48, %40
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 256
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call %struct.drm_display_mode* @drm_display_mode_from_vic_index(%struct.drm_connector* %65, i32* %66, i32 %67, i32 %68)
  store %struct.drm_display_mode* %69, %struct.drm_display_mode** %11, align 8
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %71 = icmp ne %struct.drm_display_mode* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load i32, i32* @DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF, align 4
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %80 = call i32 @drm_mode_probed_add(%struct.drm_connector* %78, %struct.drm_display_mode* %79)
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %72, %64
  br label %84

84:                                               ; preds = %83, %60
  %85 = load i32, i32* %12, align 4
  ret i32 %85
}

declare dso_local %struct.drm_display_mode* @drm_display_mode_from_vic_index(%struct.drm_connector*, i32*, i32, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
