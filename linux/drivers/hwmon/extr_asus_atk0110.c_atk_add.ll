; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.atk_data*, i32, i32 }
%struct.atk_data = type { i32, i64, i32, i32, %struct.acpi_device* }
%struct.acpi_buffer = type { %union.acpi_object*, i32 }
%union.acpi_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"adding...\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@BOARD_ID = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"atk: method MBIF not found\0A\00", align 1
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"board ID = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"No usable hwmon interface detected\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Using old hwmon interface\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Using new hwmon interface\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"No usable sensor detected, bailing out\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @atk_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.atk_data*, align 8
  %9 = alloca %union.acpi_object*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %10 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %10, i32 0, i32 1
  %12 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.atk_data* @devm_kzalloc(i32* %14, i32 32, i32 %15)
  store %struct.atk_data* %16, %struct.atk_data** %8, align 8
  %17 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %18 = icmp ne %struct.atk_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %150

22:                                               ; preds = %1
  %23 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %24 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %25 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %24, i32 0, i32 4
  store %struct.acpi_device* %23, %struct.acpi_device** %25, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %30 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %32 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %31, i32 0, i32 3
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %35 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %37 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %39 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BOARD_ID, align 4
  %42 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %43 = call i64 @acpi_evaluate_object_typed(i32 %40, i32 %41, i32* null, %struct.acpi_buffer* %6, i32 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @AE_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %22
  %48 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 1
  %50 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %83

51:                                               ; preds = %22
  %52 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %53 = load %union.acpi_object*, %union.acpi_object** %52, align 8
  store %union.acpi_object* %53, %union.acpi_object** %7, align 8
  %54 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %79

59:                                               ; preds = %51
  %60 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %61 = bitcast %union.acpi_object* %60 to %struct.TYPE_3__*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load %union.acpi_object*, %union.acpi_object** %62, align 8
  %64 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %63, i64 1
  store %union.acpi_object* %64, %union.acpi_object** %9, align 8
  %65 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %66 = bitcast %union.acpi_object* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %59
  %71 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %72 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %71, i32 0, i32 1
  %73 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %74 = bitcast %union.acpi_object* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %70, %59
  br label %79

79:                                               ; preds = %78, %51
  %80 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %81 = load %union.acpi_object*, %union.acpi_object** %80, align 8
  %82 = call i32 @ACPI_FREE(%union.acpi_object* %81)
  br label %83

83:                                               ; preds = %79, %47
  %84 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %85 = call i32 @atk_probe_if(%struct.atk_data* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %90 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %89, i32 0, i32 1
  %91 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %140

92:                                               ; preds = %83
  %93 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %94 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %99 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %98, i32 0, i32 1
  %100 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %101 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %102 = call i32 @atk_enumerate_old_hwmon(%struct.atk_data* %101)
  store i32 %102, i32* %5, align 4
  br label %109

103:                                              ; preds = %92
  %104 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %105 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %104, i32 0, i32 1
  %106 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %108 = call i32 @atk_enumerate_new_hwmon(%struct.atk_data* %107)
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %103, %97
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %140

113:                                              ; preds = %109
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %118 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %117, i32 0, i32 1
  %119 = call i32 @dev_info(i32* %118, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* @ENODEV, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %140

122:                                              ; preds = %113
  %123 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %124 = call i32 @atk_init_attribute_groups(%struct.atk_data* %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %140

128:                                              ; preds = %122
  %129 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %130 = call i32 @atk_register_hwmon(%struct.atk_data* %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %140

134:                                              ; preds = %128
  %135 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %136 = call i32 @atk_debugfs_init(%struct.atk_data* %135)
  %137 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %138 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %139 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %138, i32 0, i32 0
  store %struct.atk_data* %137, %struct.atk_data** %139, align 8
  store i32 0, i32* %2, align 4
  br label %150

140:                                              ; preds = %133, %127, %116, %112, %88
  %141 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %142 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.atk_data*, %struct.atk_data** %8, align 8
  %147 = call i32 @atk_ec_ctl(%struct.atk_data* %146, i32 0)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32, i32* %5, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %134, %19
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.atk_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @acpi_evaluate_object_typed(i32, i32, i32*, %struct.acpi_buffer*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

declare dso_local i32 @atk_probe_if(%struct.atk_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @atk_enumerate_old_hwmon(%struct.atk_data*) #1

declare dso_local i32 @atk_enumerate_new_hwmon(%struct.atk_data*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @atk_init_attribute_groups(%struct.atk_data*) #1

declare dso_local i32 @atk_register_hwmon(%struct.atk_data*) #1

declare dso_local i32 @atk_debugfs_init(%struct.atk_data*) #1

declare dso_local i32 @atk_ec_ctl(%struct.atk_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
