; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma8452.c_mma8452_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mma8452_data = type { i32, i32, i8*, i8*, i32, %struct.TYPE_15__*, i32, %struct.i2c_client* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }
%struct.iio_dev = type { i32, i32, i32, i32, %struct.TYPE_14__, i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.of_device_id = type { i32, %struct.TYPE_15__* }

@mma8452_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown device model\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get VDD regulator!\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to get VDDIO regulator!\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to enable VDD regulator!\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"failed to enable VDDIO regulator!\0A\00", align 1
@MMA8452_WHO_AM_I = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"registering %s accelerometer; ID 0x%x\0A\00", align 1
@mma8452_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mma8452_scan_masks = common dso_local global i32 0, align 4
@MMA8452_DATA_CFG_FS_2G = common dso_local global i32 0, align 4
@MMA8452_DATA_CFG = common dso_local global i32 0, align 4
@MMA8452_TRANSIENT_THS = common dso_local global i32 0, align 4
@MMA8452_TRANSIENT_THS_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"INT2\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"using interrupt line INT2\0A\00", align 1
@MMA8452_CTRL_REG5 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"using interrupt line INT1\0A\00", align 1
@MMA8452_CTRL_REG4 = common dso_local global i32 0, align 4
@MMA8452_CTRL_ACTIVE = common dso_local global i32 0, align 4
@MMA8452_CTRL_DR_DEFAULT = common dso_local global i32 0, align 4
@MMA8452_CTRL_DR_SHIFT = common dso_local global i32 0, align 4
@MMA8452_CTRL_REG1 = common dso_local global i32 0, align 4
@mma8452_trigger_handler = common dso_local global i32 0, align 4
@mma8452_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@MMA8452_AUTO_SUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mma8452_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma8452_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mma8452_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load i32, i32* @mma8452_dt_ids, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = call %struct.of_device_id* @of_match_device(i32 %11, %struct.TYPE_16__* %13)
  store %struct.of_device_id* %14, %struct.of_device_id** %9, align 8
  %15 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %16 = icmp ne %struct.of_device_id* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 1
  %20 = call i32 @dev_err(%struct.TYPE_16__* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %377

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_16__* %25, i32 56)
  store %struct.iio_dev* %26, %struct.iio_dev** %7, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = icmp ne %struct.iio_dev* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %377

32:                                               ; preds = %23
  %33 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %34 = call %struct.mma8452_data* @iio_priv(%struct.iio_dev* %33)
  store %struct.mma8452_data* %34, %struct.mma8452_data** %6, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %37 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %36, i32 0, i32 7
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %39 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %38, i32 0, i32 6
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %42 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %41, i32 0, i32 1
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %45 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %44, i32 0, i32 5
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 1
  %48 = call i8* @devm_regulator_get(%struct.TYPE_16__* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %50 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %52 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %32
  %57 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %58 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  %61 = load i32, i32* @EPROBE_DEFER, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EPROBE_DEFER, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %377

67:                                               ; preds = %56
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 1
  %70 = call i32 @dev_err(%struct.TYPE_16__* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %72 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %3, align 4
  br label %377

75:                                               ; preds = %32
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 1
  %78 = call i8* @devm_regulator_get(%struct.TYPE_16__* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %80 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %82 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @IS_ERR(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %75
  %87 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %88 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @PTR_ERR(i8* %89)
  %91 = load i32, i32* @EPROBE_DEFER, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @EPROBE_DEFER, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %377

97:                                               ; preds = %86
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 1
  %100 = call i32 @dev_err(%struct.TYPE_16__* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %101 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %102 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %3, align 4
  br label %377

105:                                              ; preds = %75
  %106 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %107 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @regulator_enable(i8* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 1
  %115 = call i32 @dev_err(%struct.TYPE_16__* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %377

117:                                              ; preds = %105
  %118 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %119 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @regulator_enable(i8* %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 1
  %127 = call i32 @dev_err(%struct.TYPE_16__* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %371

128:                                              ; preds = %117
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = load i32, i32* @MMA8452_WHO_AM_I, align 4
  %131 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %366

135:                                              ; preds = %128
  %136 = load i32, i32* %8, align 4
  switch i32 %136, label %147 [
    i32 132, label %137
    i32 131, label %137
    i32 130, label %137
    i32 129, label %137
    i32 128, label %137
    i32 133, label %137
  ]

137:                                              ; preds = %135, %135, %135, %135, %135, %135
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %140 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %139, i32 0, i32 5
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %138, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %150

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %135, %146
  %148 = load i32, i32* @ENODEV, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %8, align 4
  br label %366

150:                                              ; preds = %145
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 1
  %153 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %154 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %157 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %156, i32 0, i32 5
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dev_info(%struct.TYPE_16__* %152, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %155, i32 %160)
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %164 = call i32 @i2c_set_clientdata(%struct.i2c_client* %162, %struct.iio_dev* %163)
  %165 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %166 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %165, i32 0, i32 6
  store i32* @mma8452_info, i32** %166, align 8
  %167 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %168 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %171 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %170, i32 0, i32 5
  store i32 %169, i32* %171, align 8
  %172 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %173 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %172, i32 0, i32 1
  %174 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %175 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  store %struct.TYPE_16__* %173, %struct.TYPE_16__** %176, align 8
  %177 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %178 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %179 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %181 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %180, i32 0, i32 5
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %186 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %188 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %187, i32 0, i32 5
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %193 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @mma8452_scan_masks, align 4
  %195 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %196 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = call i32 @mma8452_reset(%struct.i2c_client* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %150
  br label %366

202:                                              ; preds = %150
  %203 = load i32, i32* @MMA8452_DATA_CFG_FS_2G, align 4
  %204 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %205 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = load i32, i32* @MMA8452_DATA_CFG, align 4
  %208 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %209 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %206, i32 %207, i32 %210)
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %202
  br label %366

215:                                              ; preds = %202
  %216 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %217 = load i32, i32* @MMA8452_TRANSIENT_THS, align 4
  %218 = load i32, i32* @MMA8452_TRANSIENT_THS_MASK, align 4
  %219 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %216, i32 %217, i32 %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  br label %366

223:                                              ; preds = %215
  %224 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %225 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %278

228:                                              ; preds = %223
  %229 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %230 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @of_irq_get_byname(i32 %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %236 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %234, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %228
  %240 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %241 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %240, i32 0, i32 1
  %242 = call i32 @dev_dbg(%struct.TYPE_16__* %241, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %259

243:                                              ; preds = %228
  %244 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %245 = load i32, i32* @MMA8452_CTRL_REG5, align 4
  %246 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %247 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %246, i32 0, i32 5
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %244, i32 %245, i32 %250)
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* %8, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %243
  br label %366

255:                                              ; preds = %243
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %256, i32 0, i32 1
  %258 = call i32 @dev_dbg(%struct.TYPE_16__* %257, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %259

259:                                              ; preds = %255, %239
  %260 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %261 = load i32, i32* @MMA8452_CTRL_REG4, align 4
  %262 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %263 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %262, i32 0, i32 5
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %260, i32 %261, i32 %266)
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %8, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %259
  br label %366

271:                                              ; preds = %259
  %272 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %273 = call i32 @mma8452_trigger_setup(%struct.iio_dev* %272)
  store i32 %273, i32* %8, align 4
  %274 = load i32, i32* %8, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  br label %366

277:                                              ; preds = %271
  br label %278

278:                                              ; preds = %277, %223
  %279 = load i32, i32* @MMA8452_CTRL_ACTIVE, align 4
  %280 = load i32, i32* @MMA8452_CTRL_DR_DEFAULT, align 4
  %281 = load i32, i32* @MMA8452_CTRL_DR_SHIFT, align 4
  %282 = shl i32 %280, %281
  %283 = or i32 %279, %282
  %284 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %285 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %284, i32 0, i32 1
  store i32 %283, i32* %285, align 4
  %286 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %287 = call i32 @mma8452_calculate_sleep(%struct.mma8452_data* %286)
  %288 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %289 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %288, i32 0, i32 4
  store i32 %287, i32* %289, align 8
  %290 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %291 = load i32, i32* @MMA8452_CTRL_REG1, align 4
  %292 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %293 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %290, i32 %291, i32 %294)
  store i32 %295, i32* %8, align 4
  %296 = load i32, i32* %8, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %278
  br label %363

299:                                              ; preds = %278
  %300 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %301 = load i32, i32* @mma8452_trigger_handler, align 4
  %302 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %300, i32* null, i32 %301, i32* null)
  store i32 %302, i32* %8, align 4
  %303 = load i32, i32* %8, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %299
  br label %363

306:                                              ; preds = %299
  %307 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %308 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %330

311:                                              ; preds = %306
  %312 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %313 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %312, i32 0, i32 1
  %314 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %315 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @mma8452_interrupt, align 4
  %318 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %319 = load i32, i32* @IRQF_ONESHOT, align 4
  %320 = or i32 %318, %319
  %321 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %322 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %325 = call i32 @devm_request_threaded_irq(%struct.TYPE_16__* %313, i32 %316, i32* null, i32 %317, i32 %320, i32 %323, %struct.iio_dev* %324)
  store i32 %325, i32* %8, align 4
  %326 = load i32, i32* %8, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %311
  br label %360

329:                                              ; preds = %311
  br label %330

330:                                              ; preds = %329, %306
  %331 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %332 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %331, i32 0, i32 1
  %333 = call i32 @pm_runtime_set_active(%struct.TYPE_16__* %332)
  store i32 %333, i32* %8, align 4
  %334 = load i32, i32* %8, align 4
  %335 = icmp slt i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  br label %360

337:                                              ; preds = %330
  %338 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %339 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %338, i32 0, i32 1
  %340 = call i32 @pm_runtime_enable(%struct.TYPE_16__* %339)
  %341 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %342 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %341, i32 0, i32 1
  %343 = load i32, i32* @MMA8452_AUTO_SUSPEND_DELAY_MS, align 4
  %344 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_16__* %342, i32 %343)
  %345 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %346 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %345, i32 0, i32 1
  %347 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_16__* %346)
  %348 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %349 = call i32 @iio_device_register(%struct.iio_dev* %348)
  store i32 %349, i32* %8, align 4
  %350 = load i32, i32* %8, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %337
  br label %360

353:                                              ; preds = %337
  %354 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %355 = call i32 @mma8452_set_freefall_mode(%struct.mma8452_data* %354, i32 0)
  store i32 %355, i32* %8, align 4
  %356 = load i32, i32* %8, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %353
  br label %360

359:                                              ; preds = %353
  store i32 0, i32* %3, align 4
  br label %377

360:                                              ; preds = %358, %352, %336, %328
  %361 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %362 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %361)
  br label %363

363:                                              ; preds = %360, %305, %298
  %364 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %365 = call i32 @mma8452_trigger_cleanup(%struct.iio_dev* %364)
  br label %366

366:                                              ; preds = %363, %276, %270, %254, %222, %214, %201, %147, %134
  %367 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %368 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %367, i32 0, i32 3
  %369 = load i8*, i8** %368, align 8
  %370 = call i32 @regulator_disable(i8* %369)
  br label %371

371:                                              ; preds = %366, %124
  %372 = load %struct.mma8452_data*, %struct.mma8452_data** %6, align 8
  %373 = getelementptr inbounds %struct.mma8452_data, %struct.mma8452_data* %372, i32 0, i32 2
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @regulator_disable(i8* %374)
  %376 = load i32, i32* %8, align 4
  store i32 %376, i32* %3, align 4
  br label %377

377:                                              ; preds = %371, %359, %112, %97, %94, %67, %64, %29, %17
  %378 = load i32, i32* %3, align 4
  ret i32 %378
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.mma8452_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_16__*, i8*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mma8452_reset(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @of_irq_get_byname(i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @mma8452_trigger_setup(%struct.iio_dev*) #1

declare dso_local i32 @mma8452_calculate_sleep(%struct.mma8452_data*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_16__*, i32, i32*, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_16__*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @mma8452_set_freefall_mode(%struct.mma8452_data*, i32) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @mma8452_trigger_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
