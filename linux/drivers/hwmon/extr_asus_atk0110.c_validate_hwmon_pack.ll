; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_validate_hwmon_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_validate_hwmon_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }

@_HWMON_OLD_PACK_SIZE = common dso_local global i32 0, align 4
@_HWMON_NEW_PACK_SIZE = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid package size: %d, expected: %d\0A\00", align 1
@HWMON_PACK_FLAGS = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid type (flag): %d\0A\00", align 1
@HWMON_PACK_NAME = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Invalid type (name): %d\0A\00", align 1
@HWMON_PACK_LIMIT1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid type (limit1): %d\0A\00", align 1
@HWMON_PACK_LIMIT2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Invalid type (limit2): %d\0A\00", align 1
@HWMON_PACK_ENABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Invalid type (enable): %d\0A\00", align 1
@HWMON_PACK_UNK1 = common dso_local global i64 0, align 8
@HWMON_PACK_UNK2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atk_data*, %union.acpi_object*)* @validate_hwmon_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_hwmon_pack(%struct.atk_data* %0, %union.acpi_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atk_data*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atk_data* %0, %struct.atk_data** %4, align 8
  store %union.acpi_object* %1, %union.acpi_object** %5, align 8
  %10 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %11 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %15 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @_HWMON_OLD_PACK_SIZE, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @_HWMON_NEW_PACK_SIZE, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %9, align 4
  %25 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %26 = bitcast %union.acpi_object* %25 to i32*
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %33 = bitcast %union.acpi_object* %32 to i32*
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %149

38:                                               ; preds = %23
  %39 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %40 = bitcast %union.acpi_object* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %48 = bitcast %union.acpi_object* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %149

55:                                               ; preds = %38
  %56 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %57 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %58 = load i32, i32* @HWMON_PACK_FLAGS, align 4
  %59 = call %union.acpi_object* @atk_get_pack_member(%struct.atk_data* %56, %union.acpi_object* %57, i32 %58)
  store %union.acpi_object* %59, %union.acpi_object** %7, align 8
  %60 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %61 = bitcast %union.acpi_object* %60 to i32*
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %68 = bitcast %union.acpi_object* %67 to i32*
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %149

73:                                               ; preds = %55
  %74 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %75 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %76 = load i32, i32* @HWMON_PACK_NAME, align 4
  %77 = call %union.acpi_object* @atk_get_pack_member(%struct.atk_data* %74, %union.acpi_object* %75, i32 %76)
  store %union.acpi_object* %77, %union.acpi_object** %7, align 8
  %78 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %79 = bitcast %union.acpi_object* %78 to i32*
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ACPI_TYPE_STRING, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %86 = bitcast %union.acpi_object* %85 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %149

91:                                               ; preds = %73
  %92 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %93 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %94 = load i32, i32* @HWMON_PACK_LIMIT1, align 4
  %95 = call %union.acpi_object* @atk_get_pack_member(%struct.atk_data* %92, %union.acpi_object* %93, i32 %94)
  store %union.acpi_object* %95, %union.acpi_object** %7, align 8
  %96 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %97 = bitcast %union.acpi_object* %96 to i32*
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %91
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %104 = bitcast %union.acpi_object* %103 to i32*
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %149

109:                                              ; preds = %91
  %110 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %111 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %112 = load i32, i32* @HWMON_PACK_LIMIT2, align 4
  %113 = call %union.acpi_object* @atk_get_pack_member(%struct.atk_data* %110, %union.acpi_object* %111, i32 %112)
  store %union.acpi_object* %113, %union.acpi_object** %7, align 8
  %114 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %115 = bitcast %union.acpi_object* %114 to i32*
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %109
  %120 = load %struct.device*, %struct.device** %6, align 8
  %121 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %122 = bitcast %union.acpi_object* %121 to i32*
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %149

127:                                              ; preds = %109
  %128 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %129 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %130 = load i32, i32* @HWMON_PACK_ENABLE, align 4
  %131 = call %union.acpi_object* @atk_get_pack_member(%struct.atk_data* %128, %union.acpi_object* %129, i32 %130)
  store %union.acpi_object* %131, %union.acpi_object** %7, align 8
  %132 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %133 = bitcast %union.acpi_object* %132 to i32*
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %127
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %140 = bitcast %union.acpi_object* %139 to i32*
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %149

145:                                              ; preds = %127
  %146 = load %struct.atk_data*, %struct.atk_data** %4, align 8
  %147 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %148 = call i32 @atk_print_sensor(%struct.atk_data* %146, %union.acpi_object* %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %137, %119, %101, %83, %65, %45, %30
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #1

declare dso_local %union.acpi_object* @atk_get_pack_member(%struct.atk_data*, %union.acpi_object*, i32) #1

declare dso_local i32 @atk_print_sensor(%struct.atk_data*, %union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
