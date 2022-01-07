; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lvds.c_panel_lvds_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-lvds.c_panel_lvds_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_lvds = type { i8*, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.display_timing = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"panel-timing\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%pOF: problems parsing panel-timing (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"width-mm\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%pOF: invalid or missing %s DT property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"height-mm\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"data-mapping\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"jeida-18\00", align 1
@MEDIA_BUS_FMT_RGB666_1X7X3_SPWG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"jeida-24\00", align 1
@MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"vesa-24\00", align 1
@MEDIA_BUS_FMT_RGB888_1X7X4_SPWG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"data-mirror\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_lvds*)* @panel_lvds_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_lvds_parse_dt(%struct.panel_lvds* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_lvds*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.display_timing, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.panel_lvds* %0, %struct.panel_lvds** %3, align 8
  %8 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %9 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = call i32 @of_get_display_timing(%struct.device_node* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.display_timing* %5)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %19 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (%struct.TYPE_2__*, i8*, %struct.device_node*, ...) @dev_err(%struct.TYPE_2__* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %114

25:                                               ; preds = %1
  %26 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %27 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %26, i32 0, i32 6
  %28 = call i32 @videomode_from_timing(%struct.display_timing* %5, i32* %27)
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %31 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %30, i32 0, i32 5
  %32 = call i32 @of_property_read_u32(%struct.device_node* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %37 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call i32 (%struct.TYPE_2__*, i8*, %struct.device_node*, ...) @dev_err(%struct.TYPE_2__* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %114

43:                                               ; preds = %25
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %46 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %45, i32 0, i32 4
  %47 = call i32 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %52 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.device_node*, %struct.device_node** %4, align 8
  %55 = call i32 (%struct.TYPE_2__*, i8*, %struct.device_node*, ...) @dev_err(%struct.TYPE_2__* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %114

58:                                               ; preds = %43
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %61 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %60, i32 0, i32 0
  %62 = call i32 @of_property_read_string(%struct.device_node* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %61)
  %63 = load %struct.device_node*, %struct.device_node** %4, align 8
  %64 = call i32 @of_property_read_string(%struct.device_node* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %6)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %58
  %68 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %69 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load %struct.device_node*, %struct.device_node** %4, align 8
  %72 = call i32 (%struct.TYPE_2__*, i8*, %struct.device_node*, ...) @dev_err(%struct.TYPE_2__* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %114

75:                                               ; preds = %58
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @MEDIA_BUS_FMT_RGB666_1X7X3_SPWG, align 4
  %81 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %82 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  br label %109

83:                                               ; preds = %75
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA, align 4
  %89 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %90 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  br label %108

91:                                               ; preds = %83
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @MEDIA_BUS_FMT_RGB888_1X7X4_SPWG, align 4
  %97 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %98 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  br label %107

99:                                               ; preds = %91
  %100 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %101 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load %struct.device_node*, %struct.device_node** %4, align 8
  %104 = call i32 (%struct.TYPE_2__*, i8*, %struct.device_node*, ...) @dev_err(%struct.TYPE_2__* %102, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %114

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107, %87
  br label %109

109:                                              ; preds = %108, %79
  %110 = load %struct.device_node*, %struct.device_node** %4, align 8
  %111 = call i32 @of_property_read_bool(%struct.device_node* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %112 = load %struct.panel_lvds*, %struct.panel_lvds** %3, align 8
  %113 = getelementptr inbounds %struct.panel_lvds, %struct.panel_lvds* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %109, %99, %67, %50, %35, %17
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @of_get_display_timing(%struct.device_node*, i8*, %struct.display_timing*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, %struct.device_node*, ...) #1

declare dso_local i32 @videomode_from_timing(%struct.display_timing*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
