; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ir35221.c_ir35221_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ir35221.c_ir35221_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.pmbus_driver_info = type { i32, i32*, i8**, i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BLOCK_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PMBUS_MFR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to read PMBUS_MFR_ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RI\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"MFR_ID unrecognised\0A\00", align 1
@PMBUS_MFR_MODEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to read PMBUS_MFR_MODEL\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"MFR_MODEL unrecognised\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ir35221_read_word_data = common dso_local global i32 0, align 4
@linear = common dso_local global i8* null, align 8
@PSC_VOLTAGE_IN = common dso_local global i64 0, align 8
@PSC_VOLTAGE_OUT = common dso_local global i64 0, align 8
@PSC_CURRENT_IN = common dso_local global i64 0, align 8
@PSC_CURRENT_OUT = common dso_local global i64 0, align 8
@PSC_POWER = common dso_local global i64 0, align 8
@PSC_TEMPERATURE = common dso_local global i64 0, align 8
@PMBUS_HAVE_VIN = common dso_local global i32 0, align 4
@PMBUS_HAVE_VOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_IIN = common dso_local global i32 0, align 4
@PMBUS_HAVE_IOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_PIN = common dso_local global i32 0, align 4
@PMBUS_HAVE_POUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_TEMP = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_VOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_IOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_INPUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ir35221_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir35221_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pmbus_driver_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %19 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @I2C_FUNC_SMBUS_READ_BLOCK_DATA, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @i2c_check_functionality(i32 %17, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %170

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @PMBUS_MFR_ID, align 4
  %31 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %29, i32 %30, i32* %14)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %170

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i64 @strncmp(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42, %39
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %170

52:                                               ; preds = %42
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load i32, i32* @PMBUS_MFR_MODEL, align 4
  %55 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %53, i32 %54, i32* %14)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %170

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 2
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds i32, i32* %14, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = icmp eq i32 %68, 108
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds i32, i32* %14, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70, %66, %63
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %170

80:                                               ; preds = %70
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call %struct.pmbus_driver_info* @devm_kzalloc(i32* %82, i32 32, i32 %83)
  store %struct.pmbus_driver_info* %84, %struct.pmbus_driver_info** %6, align 8
  %85 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %86 = icmp ne %struct.pmbus_driver_info* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %170

90:                                               ; preds = %80
  %91 = load i32, i32* @ir35221_read_word_data, align 4
  %92 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %93 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %95 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %94, i32 0, i32 0
  store i32 2, i32* %95, align 8
  %96 = load i8*, i8** @linear, align 8
  %97 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %98 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %97, i32 0, i32 2
  %99 = load i8**, i8*** %98, align 8
  %100 = load i64, i64* @PSC_VOLTAGE_IN, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  store i8* %96, i8** %101, align 8
  %102 = load i8*, i8** @linear, align 8
  %103 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %104 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %103, i32 0, i32 2
  %105 = load i8**, i8*** %104, align 8
  %106 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  store i8* %102, i8** %107, align 8
  %108 = load i8*, i8** @linear, align 8
  %109 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %110 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %109, i32 0, i32 2
  %111 = load i8**, i8*** %110, align 8
  %112 = load i64, i64* @PSC_CURRENT_IN, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  store i8* %108, i8** %113, align 8
  %114 = load i8*, i8** @linear, align 8
  %115 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %116 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %115, i32 0, i32 2
  %117 = load i8**, i8*** %116, align 8
  %118 = load i64, i64* @PSC_CURRENT_OUT, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  store i8* %114, i8** %119, align 8
  %120 = load i8*, i8** @linear, align 8
  %121 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %122 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %121, i32 0, i32 2
  %123 = load i8**, i8*** %122, align 8
  %124 = load i64, i64* @PSC_POWER, align 8
  %125 = getelementptr inbounds i8*, i8** %123, i64 %124
  store i8* %120, i8** %125, align 8
  %126 = load i8*, i8** @linear, align 8
  %127 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %128 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %127, i32 0, i32 2
  %129 = load i8**, i8*** %128, align 8
  %130 = load i64, i64* @PSC_TEMPERATURE, align 8
  %131 = getelementptr inbounds i8*, i8** %129, i64 %130
  store i8* %126, i8** %131, align 8
  %132 = load i32, i32* @PMBUS_HAVE_VIN, align 4
  %133 = load i32, i32* @PMBUS_HAVE_VOUT, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @PMBUS_HAVE_IIN, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @PMBUS_HAVE_IOUT, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @PMBUS_HAVE_PIN, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @PMBUS_HAVE_POUT, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @PMBUS_HAVE_TEMP, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @PMBUS_HAVE_STATUS_VOUT, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @PMBUS_HAVE_STATUS_IOUT, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @PMBUS_HAVE_STATUS_INPUT, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @PMBUS_HAVE_STATUS_TEMP, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %154 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %152, i32* %156, align 4
  %157 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %158 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %163 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %161, i32* %165, align 4
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %168 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %6, align 8
  %169 = call i32 @pmbus_do_probe(%struct.i2c_client* %166, %struct.i2c_device_id* %167, %struct.pmbus_driver_info* %168)
  store i32 %169, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %170

170:                                              ; preds = %90, %87, %74, %58, %46, %34, %25
  %171 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #2

declare dso_local i32 @i2c_smbus_read_block_data(%struct.i2c_client*, i32, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i64 @strncmp(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.pmbus_driver_info* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @pmbus_do_probe(%struct.i2c_client*, %struct.i2c_device_id*, %struct.pmbus_driver_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
