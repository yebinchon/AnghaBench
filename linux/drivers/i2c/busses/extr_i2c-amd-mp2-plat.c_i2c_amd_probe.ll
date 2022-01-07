; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.amd_i2c_dev = type { %struct.TYPE_16__, i32, %struct.TYPE_18__, %struct.platform_device* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__, i32, %struct.amd_i2c_dev*, i32*, i32*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32*, i32*, i32*, %struct.amd_mp2_dev* }
%struct.amd_mp2_dev = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.acpi_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i2c_amd_cmd_completion = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"missing UID/bus id!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"incorrect UID/bus id \22%s\22!\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bus id is %u\0A\00", align 1
@i2c_none = common dso_local global i32 0, align 4
@DL_FLAG_AUTOREMOVE_CONSUMER = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@i2c_amd_algorithm = common dso_local global i32 0, align 4
@amd_i2c_dev_quirks = common dso_local global i32 0, align 4
@AMD_I2C_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"AMD MP2 i2c bus %u\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"initial bus enable failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"i2c add adapter failed = %d\0A\00", align 1
@i2c_amd_resume = common dso_local global i32 0, align 4
@i2c_amd_suspend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_amd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_amd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd_i2c_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca %struct.amd_mp2_dev*, align 8
  %9 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @ACPI_HANDLE(%struct.TYPE_17__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @acpi_bus_get_device(i32 %13, %struct.acpi_device** %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %206

19:                                               ; preds = %1
  %20 = call %struct.amd_mp2_dev* (...) @amd_mp2_find_device()
  store %struct.amd_mp2_dev* %20, %struct.amd_mp2_dev** %8, align 8
  %21 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %8, align 8
  %22 = icmp ne %struct.amd_mp2_dev* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %8, align 8
  %25 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* @EPROBE_DEFER, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %206

31:                                               ; preds = %23
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.amd_i2c_dev* @devm_kzalloc(%struct.TYPE_17__* %33, i32 128, i32 %34)
  store %struct.amd_i2c_dev* %35, %struct.amd_i2c_dev** %5, align 8
  %36 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %37 = icmp ne %struct.amd_i2c_dev* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %206

41:                                               ; preds = %31
  %42 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %8, align 8
  %43 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %44 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 6
  store %struct.amd_mp2_dev* %42, %struct.amd_mp2_dev** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %48 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %47, i32 0, i32 3
  store %struct.platform_device* %46, %struct.platform_device** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.amd_i2c_dev* %50)
  %52 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %53 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 5
  store i32* @i2c_amd_cmd_completion, i32** %54, align 8
  %55 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %56 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %41
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %206

67:                                               ; preds = %41
  %68 = load i8*, i8** %9, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %73 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  br label %91

75:                                               ; preds = %67
  %76 = load i8*, i8** %9, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %81 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %90

83:                                               ; preds = %75
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %206

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %96 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_dbg(%struct.TYPE_17__* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %8, align 8
  %101 = call i32 @amd_mp2_pm_runtime_get(%struct.amd_mp2_dev* %100)
  %102 = load i32, i32* @i2c_none, align 4
  %103 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %104 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %107 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %106, i32 0, i32 2
  %108 = call i64 @amd_mp2_register_cb(%struct.TYPE_18__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %92
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %206

113:                                              ; preds = %92
  %114 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %115 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %114, i32 0, i32 3
  %116 = load %struct.platform_device*, %struct.platform_device** %115, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %8, align 8
  %119 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* @DL_FLAG_AUTOREMOVE_CONSUMER, align 4
  %123 = call i32 @device_link_add(%struct.TYPE_17__* %117, i32* %121, i32 %122)
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = call i32 @i2c_amd_get_bus_speed(%struct.platform_device* %124)
  %126 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %127 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @THIS_MODULE, align 4
  %130 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %131 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 6
  store i32 %129, i32* %132, align 8
  %133 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %134 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 5
  store i32* @i2c_amd_algorithm, i32** %135, align 8
  %136 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %137 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  store i32* @amd_i2c_dev_quirks, i32** %138, align 8
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %142 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  store %struct.TYPE_17__* %140, %struct.TYPE_17__** %144, align 8
  %145 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %146 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %147 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  store %struct.amd_i2c_dev* %145, %struct.amd_i2c_dev** %148, align 8
  %149 = load i32, i32* @AMD_I2C_TIMEOUT, align 4
  %150 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %151 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 8
  %153 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %154 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = call i32 @ACPI_COMPANION(%struct.TYPE_17__* %157)
  %159 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_13__* %155, i32 %158)
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %165 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  store i32 %163, i32* %167, align 8
  %168 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %169 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %173 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @snprintf(i32 %171, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  %177 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %178 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %177, i32 0, i32 0
  %179 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %180 = call i32 @i2c_set_adapdata(%struct.TYPE_16__* %178, %struct.amd_i2c_dev* %179)
  %181 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %182 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %181, i32 0, i32 1
  %183 = call i32 @init_completion(i32* %182)
  %184 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %185 = call i64 @i2c_amd_enable_set(%struct.amd_i2c_dev* %184, i32 1)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %113
  %188 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %189 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %188, i32 0, i32 0
  %190 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %189, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %191

191:                                              ; preds = %187, %113
  %192 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %193 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %192, i32 0, i32 0
  %194 = call i32 @i2c_add_adapter(%struct.TYPE_16__* %193)
  store i32 %194, i32* %4, align 4
  %195 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %8, align 8
  %196 = call i32 @amd_mp2_pm_runtime_put(%struct.amd_mp2_dev* %195)
  %197 = load i32, i32* %4, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %191
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = load i32, i32* %4, align 4
  %203 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %201, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %199, %191
  %205 = load i32, i32* %4, align 4
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %204, %110, %83, %61, %38, %28, %16
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @ACPI_HANDLE(%struct.TYPE_17__*) #1

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local %struct.amd_mp2_dev* @amd_mp2_find_device(...) #1

declare dso_local %struct.amd_i2c_dev* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.amd_i2c_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @amd_mp2_pm_runtime_get(%struct.amd_mp2_dev*) #1

declare dso_local i64 @amd_mp2_register_cb(%struct.TYPE_18__*) #1

declare dso_local i32 @device_link_add(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @i2c_amd_get_bus_speed(%struct.platform_device*) #1

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.TYPE_17__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_16__*, %struct.amd_i2c_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @i2c_amd_enable_set(%struct.amd_i2c_dev*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_16__*) #1

declare dso_local i32 @amd_mp2_pm_runtime_put(%struct.amd_mp2_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
