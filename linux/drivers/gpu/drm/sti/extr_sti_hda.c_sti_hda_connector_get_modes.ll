; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hda.c_sti_hda_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.drm_connector = type { i32 }
%struct.sti_hda_connector = type { %struct.sti_hda* }
%struct.sti_hda = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@hda_supported_modes = common dso_local global %struct.TYPE_3__* null, align 8
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @sti_hda_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hda_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sti_hda_connector*, align 8
  %6 = alloca %struct.sti_hda*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = call %struct.sti_hda_connector* @to_sti_hda_connector(%struct.drm_connector* %8)
  store %struct.sti_hda_connector* %9, %struct.sti_hda_connector** %5, align 8
  %10 = load %struct.sti_hda_connector*, %struct.sti_hda_connector** %5, align 8
  %11 = getelementptr inbounds %struct.sti_hda_connector, %struct.sti_hda_connector* %10, i32 0, i32 0
  %12 = load %struct.sti_hda*, %struct.sti_hda** %11, align 8
  store %struct.sti_hda* %12, %struct.sti_hda** %6, align 8
  %13 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %51, %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hda_supported_modes, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = load %struct.sti_hda*, %struct.sti_hda** %6, align 8
  %21 = getelementptr inbounds %struct.sti_hda, %struct.sti_hda* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hda_supported_modes, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %22, i32* %27)
  store %struct.drm_display_mode* %28, %struct.drm_display_mode** %7, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %30 = icmp ne %struct.drm_display_mode* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  br label %51

32:                                               ; preds = %19
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %34 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %33)
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %48 = call i32 @drm_mode_probed_add(%struct.drm_connector* %46, %struct.drm_display_mode* %47)
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %31
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %14

54:                                               ; preds = %14
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.sti_hda_connector* @to_sti_hda_connector(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32*) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
