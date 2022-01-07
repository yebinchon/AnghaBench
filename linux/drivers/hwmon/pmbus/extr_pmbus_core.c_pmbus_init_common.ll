; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.pmbus_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.pmbus_driver_info = type { i32 (%struct.i2c_client.0*, %struct.pmbus_driver_info*)*, i32 }
%struct.i2c_client.0 = type opaque

@pmbus_read_status_word = common dso_local global i32 0, align 4
@PMBUS_STATUS_WORD = common dso_local global i32 0, align 4
@pmbus_read_status_byte = common dso_local global i32 0, align 4
@PMBUS_STATUS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"PMBus status register not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PMBUS_CAPABILITY = common dso_local global i32 0, align 4
@PB_CAPABILITY_ERROR_CHECK = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Chip identification failed\0A\00", align 1
@PMBUS_PAGES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Bad number of PMBus pages: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to identify chip capabilities\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.pmbus_data*, %struct.pmbus_driver_info*)* @pmbus_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_init_common(%struct.i2c_client* %0, %struct.pmbus_data* %1, %struct.pmbus_driver_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.pmbus_data*, align 8
  %7 = alloca %struct.pmbus_driver_info*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.pmbus_data* %1, %struct.pmbus_data** %6, align 8
  store %struct.pmbus_driver_info* %2, %struct.pmbus_driver_info** %7, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %8, align 8
  %13 = load i32, i32* @pmbus_read_status_word, align 4
  %14 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %15 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = load i32, i32* @PMBUS_STATUS_WORD, align 4
  %18 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 65535
  br i1 %23, label %24, label %42

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @pmbus_read_status_byte, align 4
  %26 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %27 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %29 = load i32, i32* @PMBUS_STATUS_BYTE, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 255
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %24
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %137

41:                                               ; preds = %33
  br label %45

42:                                               ; preds = %21
  %43 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %44 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %41
  %46 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %47 = load i32, i32* @PMBUS_CAPABILITY, align 4
  %48 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @PB_CAPABILITY_ERROR_CHECK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @I2C_CLIENT_PEC, align 4
  %58 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %51, %45
  %63 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %64 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %71 = call i32 @pmbus_clear_faults(%struct.i2c_client* %70)
  br label %75

72:                                               ; preds = %62
  %73 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %74 = call i32 @pmbus_clear_fault_page(%struct.i2c_client* %73, i32 -1)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %77 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %76, i32 0, i32 0
  %78 = load i32 (%struct.i2c_client.0*, %struct.pmbus_driver_info*)*, i32 (%struct.i2c_client.0*, %struct.pmbus_driver_info*)** %77, align 8
  %79 = icmp ne i32 (%struct.i2c_client.0*, %struct.pmbus_driver_info*)* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %82 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %81, i32 0, i32 0
  %83 = load i32 (%struct.i2c_client.0*, %struct.pmbus_driver_info*)*, i32 (%struct.i2c_client.0*, %struct.pmbus_driver_info*)** %82, align 8
  %84 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %85 = bitcast %struct.i2c_client* %84 to %struct.i2c_client.0*
  %86 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %87 = call i32 %83(%struct.i2c_client.0* %85, %struct.pmbus_driver_info* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %80
  %91 = load %struct.device*, %struct.device** %8, align 8
  %92 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %137

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %97 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp sle i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %102 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PMBUS_PAGES, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %100, %95
  %107 = load %struct.device*, %struct.device** %8, align 8
  %108 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %109 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %137

114:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %133, %114
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %7, align 8
  %118 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %115
  %122 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %123 = load %struct.pmbus_data*, %struct.pmbus_data** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @pmbus_identify_common(%struct.i2c_client* %122, %struct.pmbus_data* %123, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load %struct.device*, %struct.device** %8, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %4, align 4
  br label %137

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %115

136:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %137

137:                                              ; preds = %136, %128, %106, %90, %36
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pmbus_clear_faults(%struct.i2c_client*) #1

declare dso_local i32 @pmbus_clear_fault_page(%struct.i2c_client*, i32) #1

declare dso_local i32 @pmbus_identify_common(%struct.i2c_client*, %struct.pmbus_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
