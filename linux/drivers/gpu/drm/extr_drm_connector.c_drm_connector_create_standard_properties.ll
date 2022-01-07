; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_create_standard_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_create_standard_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }

@DRM_MODE_PROP_BLOB = common dso_local global i32 0, align 4
@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EDID\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"DPMS\00", align 1
@drm_dpms_enum_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TILE\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"link-status\00", align 1
@drm_link_status_enum_list = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"non-desktop\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"HDR_OUTPUT_METADATA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_create_standard_properties(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_property*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %7 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %5, i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.drm_property* %9, %struct.drm_property** %4, align 8
  %10 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %11 = icmp ne %struct.drm_property* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %106

15:                                               ; preds = %1
  %16 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  store %struct.drm_property* %16, %struct.drm_property** %19, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = load i32, i32* @drm_dpms_enum_list, align 4
  %22 = load i32, i32* @drm_dpms_enum_list, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %20, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %23)
  store %struct.drm_property* %24, %struct.drm_property** %4, align 8
  %25 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %26 = icmp ne %struct.drm_property* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %106

30:                                               ; preds = %15
  %31 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store %struct.drm_property* %31, %struct.drm_property** %34, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %37 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %35, i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.drm_property* %39, %struct.drm_property** %4, align 8
  %40 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %41 = icmp ne %struct.drm_property* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %106

45:                                               ; preds = %30
  %46 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  store %struct.drm_property* %46, %struct.drm_property** %49, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %51 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %52 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %53 = or i32 %51, %52
  %54 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %50, i32 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.drm_property* %54, %struct.drm_property** %4, align 8
  %55 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %56 = icmp ne %struct.drm_property* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %106

60:                                               ; preds = %45
  %61 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %62 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  store %struct.drm_property* %61, %struct.drm_property** %64, align 8
  %65 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %66 = load i32, i32* @drm_link_status_enum_list, align 4
  %67 = load i32, i32* @drm_link_status_enum_list, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %65, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %68)
  store %struct.drm_property* %69, %struct.drm_property** %4, align 8
  %70 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %71 = icmp ne %struct.drm_property* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %106

75:                                               ; preds = %60
  %76 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %77 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %78 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store %struct.drm_property* %76, %struct.drm_property** %79, align 8
  %80 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %81 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %82 = call %struct.drm_property* @drm_property_create_bool(%struct.drm_device* %80, i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store %struct.drm_property* %82, %struct.drm_property** %4, align 8
  %83 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %84 = icmp ne %struct.drm_property* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %106

88:                                               ; preds = %75
  %89 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %90 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store %struct.drm_property* %89, %struct.drm_property** %92, align 8
  %93 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %94 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %95 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %93, i32 %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store %struct.drm_property* %95, %struct.drm_property** %4, align 8
  %96 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %97 = icmp ne %struct.drm_property* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %106

101:                                              ; preds = %88
  %102 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %103 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %104 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store %struct.drm_property* %102, %struct.drm_property** %105, align 8
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %101, %98, %85, %72, %57, %42, %27, %12
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local %struct.drm_property* @drm_property_create_enum(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.drm_property* @drm_property_create_bool(%struct.drm_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
