; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpio_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_gpio_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_device = type { %struct.acpi_gpio_mapping* }
%struct.acpi_gpio_mapping = type { i32, i64 }
%union.acpi_object = type { i64 }
%struct.list_head = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@gpio_suffixes = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@acpi_find_gpio_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_gpio_count(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.acpi_gpio_mapping*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.list_head, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %15)
  store %struct.acpi_device* %16, %struct.acpi_device** %6, align 8
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %105, %2
  %20 = load i32, i32* %12, align 4
  %21 = load i8**, i8*** @gpio_suffixes, align 8
  %22 = call i32 @ARRAY_SIZE(i8** %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %108

24:                                               ; preds = %19
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %29 = load i8*, i8** %5, align 8
  %30 = load i8**, i8*** @gpio_suffixes, align 8
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %34)
  br label %44

36:                                               ; preds = %24
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %38 = load i8**, i8*** @gpio_suffixes, align 8
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %37, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %36, %27
  %45 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %47 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %48 = call i32 @acpi_dev_get_property(%struct.acpi_device* %45, i8* %46, i32 %47, %union.acpi_object** %7)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %53 = bitcast %union.acpi_object* %52 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %9, align 4
  br label %68

58:                                               ; preds = %51
  %59 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %60 = bitcast %union.acpi_object* %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %66 = call i32 @acpi_gpio_package_count(%union.acpi_object* %65)
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %58
  br label %68

68:                                               ; preds = %67, %57
  br label %100

69:                                               ; preds = %44
  %70 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %71 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %70, i32 0, i32 0
  %72 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %71, align 8
  %73 = icmp ne %struct.acpi_gpio_mapping* %72, null
  br i1 %73, label %74, label %99

74:                                               ; preds = %69
  %75 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %76 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %75, i32 0, i32 0
  %77 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %76, align 8
  store %struct.acpi_gpio_mapping* %77, %struct.acpi_gpio_mapping** %8, align 8
  br label %78

78:                                               ; preds = %95, %74
  %79 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %8, align 8
  %80 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %85 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %8, align 8
  %86 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @strcmp(i8* %84, i64 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %8, align 8
  %92 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %9, align 4
  br label %98

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.acpi_gpio_mapping*, %struct.acpi_gpio_mapping** %8, align 8
  %97 = getelementptr inbounds %struct.acpi_gpio_mapping, %struct.acpi_gpio_mapping* %96, i32 1
  store %struct.acpi_gpio_mapping* %97, %struct.acpi_gpio_mapping** %8, align 8
  br label %78

98:                                               ; preds = %90, %78
  br label %99

99:                                               ; preds = %98, %69
  br label %100

100:                                              ; preds = %99, %68
  %101 = load i32, i32* %9, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %108

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %19

108:                                              ; preds = %103, %19
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  store i32 0, i32* %14, align 4
  %112 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = call i32 @acpi_can_fallback_to_crs(%struct.acpi_device* %112, i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %139

118:                                              ; preds = %111
  %119 = call i32 @INIT_LIST_HEAD(%struct.list_head* %13)
  %120 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %121 = load i32, i32* @acpi_find_gpio_count, align 4
  %122 = call i32 @acpi_dev_get_resources(%struct.acpi_device* %120, %struct.list_head* %13, i32 %121, i32* %14)
  %123 = call i32 @acpi_dev_free_resource_list(%struct.list_head* %13)
  %124 = load i32, i32* %14, align 4
  %125 = icmp ugt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %126, %118
  br label %129

129:                                              ; preds = %128, %108
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  br label %137

134:                                              ; preds = %129
  %135 = load i32, i32* @ENOENT, align 4
  %136 = sub nsw i32 0, %135
  br label %137

137:                                              ; preds = %134, %132
  %138 = phi i32 [ %133, %132 ], [ %136, %134 ]
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %116
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @acpi_dev_get_property(%struct.acpi_device*, i8*, i32, %union.acpi_object**) #1

declare dso_local i32 @acpi_gpio_package_count(%union.acpi_object*) #1

declare dso_local i64 @strcmp(i8*, i64) #1

declare dso_local i32 @acpi_can_fallback_to_crs(%struct.acpi_device*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @acpi_dev_get_resources(%struct.acpi_device*, %struct.list_head*, i32, i32*) #1

declare dso_local i32 @acpi_dev_free_resource_list(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
