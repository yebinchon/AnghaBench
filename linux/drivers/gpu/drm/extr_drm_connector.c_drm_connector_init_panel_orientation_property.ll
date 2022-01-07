; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_init_panel_orientation_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_init_panel_orientation_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.drm_display_info, %struct.drm_device* }
%struct.drm_display_info = type { i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_property* }
%struct.drm_property = type { i32 }

@DRM_MODE_PANEL_ORIENTATION_UNKNOWN = common dso_local global i32 0, align 4
@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"panel orientation\00", align 1
@drm_panel_orientation_enum_list = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_init_panel_orientation_property(%struct.drm_connector* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_display_info*, align 8
  %10 = alloca %struct.drm_property*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 2
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %8, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 1
  store %struct.drm_display_info* %16, %struct.drm_display_info** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @drm_get_panel_orientation_quirk(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_UNKNOWN, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.drm_display_info*, %struct.drm_display_info** %9, align 8
  %26 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %3
  %28 = load %struct.drm_display_info*, %struct.drm_display_info** %9, align 8
  %29 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DRM_MODE_PANEL_ORIENTATION_UNKNOWN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %66

34:                                               ; preds = %27
  %35 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.drm_property*, %struct.drm_property** %37, align 8
  store %struct.drm_property* %38, %struct.drm_property** %10, align 8
  %39 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %40 = icmp ne %struct.drm_property* %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %34
  %42 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %43 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %44 = load i32, i32* @drm_panel_orientation_enum_list, align 4
  %45 = load i32, i32* @drm_panel_orientation_enum_list, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %42, i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  store %struct.drm_property* %47, %struct.drm_property** %10, align 8
  %48 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %49 = icmp ne %struct.drm_property* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %66

53:                                               ; preds = %41
  %54 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %55 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.drm_property* %54, %struct.drm_property** %57, align 8
  br label %58

58:                                               ; preds = %53, %34
  %59 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 0
  %61 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %62 = load %struct.drm_display_info*, %struct.drm_display_info** %9, align 8
  %63 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @drm_object_attach_property(i32* %60, %struct.drm_property* %61, i32 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %50, %33
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @drm_get_panel_orientation_quirk(i32, i32) #1

declare dso_local %struct.drm_property* @drm_property_create_enum(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, %struct.drm_property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
