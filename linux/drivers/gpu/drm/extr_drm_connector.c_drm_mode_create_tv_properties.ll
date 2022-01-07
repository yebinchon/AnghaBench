; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_mode_create_tv_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_mode_create_tv_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"select subconnector\00", align 1
@drm_tv_select_enum_list = common dso_local global i32 0, align 4
@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"subconnector\00", align 1
@drm_tv_subconnector_enum_list = common dso_local global i32 0, align 4
@DRM_MODE_PROP_ENUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"flicker reduction\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_create_tv_properties(%struct.drm_device* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca %struct.drm_property*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 8
  %14 = load %struct.drm_property*, %struct.drm_property** %13, align 8
  %15 = icmp ne %struct.drm_property* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %159

17:                                               ; preds = %3
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i32, i32* @drm_tv_select_enum_list, align 4
  %20 = load i32, i32* @drm_tv_select_enum_list, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %18, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21)
  store %struct.drm_property* %22, %struct.drm_property** %8, align 8
  %23 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %24 = icmp ne %struct.drm_property* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %156

26:                                               ; preds = %17
  %27 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 8
  store %struct.drm_property* %27, %struct.drm_property** %30, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %33 = load i32, i32* @drm_tv_subconnector_enum_list, align 4
  %34 = load i32, i32* @drm_tv_subconnector_enum_list, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %31, i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  store %struct.drm_property* %36, %struct.drm_property** %9, align 8
  %37 = load %struct.drm_property*, %struct.drm_property** %9, align 8
  %38 = icmp ne %struct.drm_property* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %156

40:                                               ; preds = %26
  %41 = load %struct.drm_property*, %struct.drm_property** %9, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 7
  store %struct.drm_property* %41, %struct.drm_property** %44, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %46 = call i64 @drm_mode_create_tv_margin_properties(%struct.drm_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %156

49:                                               ; preds = %40
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = load i32, i32* @DRM_MODE_PROP_ENUM, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @drm_property_create(%struct.drm_device* %50, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 8
  %57 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %49
  br label %156

63:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i8**, i8*** %7, align 8
  %75 = load i32, i32* %10, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @drm_property_add_enum(i32 %72, i32 %73, i8* %78)
  br label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %64

83:                                               ; preds = %64
  %84 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %85 = call i8* @drm_property_create_range(%struct.drm_device* %84, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 100)
  %86 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  store i8* %85, i8** %88, align 8
  %89 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %83
  br label %156

95:                                               ; preds = %83
  %96 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %97 = call i8* @drm_property_create_range(%struct.drm_device* %96, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 100)
  %98 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  store i8* %97, i8** %100, align 8
  %101 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %102 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %95
  br label %156

107:                                              ; preds = %95
  %108 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %109 = call i8* @drm_property_create_range(%struct.drm_device* %108, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 100)
  %110 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %111 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  store i8* %109, i8** %112, align 8
  %113 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %114 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %107
  br label %156

119:                                              ; preds = %107
  %120 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %121 = call i8* @drm_property_create_range(%struct.drm_device* %120, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 100)
  %122 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %123 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  store i8* %121, i8** %124, align 8
  %125 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %126 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %119
  br label %156

131:                                              ; preds = %119
  %132 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %133 = call i8* @drm_property_create_range(%struct.drm_device* %132, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 100)
  %134 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %135 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i8* %133, i8** %136, align 8
  %137 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %138 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %131
  br label %156

143:                                              ; preds = %131
  %144 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %145 = call i8* @drm_property_create_range(%struct.drm_device* %144, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 100)
  %146 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %147 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i8* %145, i8** %148, align 8
  %149 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %150 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %143
  br label %156

155:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %159

156:                                              ; preds = %154, %142, %130, %118, %106, %94, %62, %48, %39, %25
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %156, %155, %16
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.drm_property* @drm_property_create_enum(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @drm_mode_create_tv_margin_properties(%struct.drm_device*) #1

declare dso_local i32 @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local i32 @drm_property_add_enum(i32, i32, i8*) #1

declare dso_local i8* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
