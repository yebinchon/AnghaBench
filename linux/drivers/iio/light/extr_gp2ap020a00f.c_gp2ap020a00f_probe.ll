; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.i2c_device_id = type { i32 }
%struct.gp2ap020a00f_data = type { %struct.regmap*, %struct.TYPE_10__*, i32, %struct.i2c_client*, i32, i32, %struct.regmap*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.regmap = type { i32 }
%struct.iio_dev = type { %struct.TYPE_11__, i32, i32, i32*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vled\00", align 1
@gp2ap020a00f_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Regmap initialization failed.\0A\00", align 1
@GP2AP020A00F_OP_REG = common dso_local global i32 0, align 4
@gp2ap020a00f_reg_init_tab = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Device initialization failed.\0A\00", align 1
@GP2AP020A00F_OPMODE_SHUTDOWN = common dso_local global i32 0, align 4
@gp2ap020a00f_channels = common dso_local global i32 0, align 4
@gp2ap020a00f_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@gp2ap020a00f_trigger_handler = common dso_local global i32 0, align 4
@gp2ap020a00f_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"%s-trigger\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to allocate iio trigger.\0A\00", align 1
@gp2ap020a00f_thresh_event_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"gp2ap020a00f_als_event\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Irq request failed.\0A\00", align 1
@gp2ap020a00f_trigger_ops = common dso_local global i32 0, align 4
@gp2ap020a00f_iio_trigger_work = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to register iio trigger.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @gp2ap020a00f_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.gp2ap020a00f_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__* %11, i32 56)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %205

18:                                               ; preds = %2
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev* %19)
  store %struct.gp2ap020a00f_data* %20, %struct.gp2ap020a00f_data** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = call %struct.regmap* @devm_regulator_get(%struct.TYPE_11__* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %25 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %24, i32 0, i32 0
  store %struct.regmap* %23, %struct.regmap** %25, align 8
  %26 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %27 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %26, i32 0, i32 0
  %28 = load %struct.regmap*, %struct.regmap** %27, align 8
  %29 = call i64 @IS_ERR(%struct.regmap* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %33 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %32, i32 0, i32 0
  %34 = load %struct.regmap*, %struct.regmap** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.regmap* %34)
  store i32 %35, i32* %3, align 4
  br label %205

36:                                               ; preds = %18
  %37 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %38 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %37, i32 0, i32 0
  %39 = load %struct.regmap*, %struct.regmap** %38, align 8
  %40 = call i32 @regulator_enable(%struct.regmap* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %205

45:                                               ; preds = %36
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %46, i32* @gp2ap020a00f_regmap_config)
  store %struct.regmap* %47, %struct.regmap** %8, align 8
  %48 = load %struct.regmap*, %struct.regmap** %8, align 8
  %49 = call i64 @IS_ERR(%struct.regmap* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 1
  %54 = call i32 @dev_err(%struct.TYPE_11__* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.regmap*, %struct.regmap** %8, align 8
  %56 = call i32 @PTR_ERR(%struct.regmap* %55)
  store i32 %56, i32* %9, align 4
  br label %199

57:                                               ; preds = %45
  %58 = load %struct.regmap*, %struct.regmap** %8, align 8
  %59 = load i32, i32* @GP2AP020A00F_OP_REG, align 4
  %60 = load i32, i32* @gp2ap020a00f_reg_init_tab, align 4
  %61 = load i32, i32* @gp2ap020a00f_reg_init_tab, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = call i32 @regmap_bulk_write(%struct.regmap* %58, i32 %59, i32 %60, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = call i32 @dev_err(%struct.TYPE_11__* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %199

70:                                               ; preds = %57
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = call i32 @i2c_set_clientdata(%struct.i2c_client* %71, %struct.iio_dev* %72)
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %76 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %75, i32 0, i32 3
  store %struct.i2c_client* %74, %struct.i2c_client** %76, align 8
  %77 = load i32, i32* @GP2AP020A00F_OPMODE_SHUTDOWN, align 4
  %78 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %79 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  %80 = load %struct.regmap*, %struct.regmap** %8, align 8
  %81 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %82 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %81, i32 0, i32 6
  store %struct.regmap* %80, %struct.regmap** %82, align 8
  %83 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %84 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %83, i32 0, i32 5
  %85 = call i32 @init_waitqueue_head(i32* %84)
  %86 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %87 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %86, i32 0, i32 4
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 1
  %91 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %92 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %93, align 8
  %94 = load i32, i32* @gp2ap020a00f_channels, align 4
  %95 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %96 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @gp2ap020a00f_channels, align 4
  %98 = call i32 @ARRAY_SIZE(i32 %97)
  %99 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %100 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 3
  store i32* @gp2ap020a00f_info, i32** %102, align 8
  %103 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %107 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %109 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %112 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %111, i32* @iio_pollfunc_store_time, i32* @gp2ap020a00f_trigger_handler, i32* @gp2ap020a00f_buffer_setup_ops)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %70
  br label %199

116:                                              ; preds = %70
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 1
  %119 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %120 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call %struct.TYPE_10__* @devm_iio_trigger_alloc(%struct.TYPE_11__* %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %124 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %123, i32 0, i32 1
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %124, align 8
  %125 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %126 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %125, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = icmp eq %struct.TYPE_10__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %116
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %9, align 4
  %132 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %133 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %132, i32 0, i32 0
  %134 = call i32 @dev_err(%struct.TYPE_11__* %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %196

135:                                              ; preds = %116
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %140 = load i32, i32* @IRQF_ONESHOT, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %143 = call i32 @request_threaded_irq(i32 %138, i32* null, i32* @gp2ap020a00f_thresh_event_handler, i32 %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.iio_dev* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %135
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 1
  %149 = call i32 @dev_err(%struct.TYPE_11__* %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %196

150:                                              ; preds = %135
  %151 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %152 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %151, i32 0, i32 1
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  store i32* @gp2ap020a00f_trigger_ops, i32** %154, align 8
  %155 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %156 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %155, i32 0, i32 3
  %157 = load %struct.i2c_client*, %struct.i2c_client** %156, align 8
  %158 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %157, i32 0, i32 1
  %159 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %160 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %159, i32 0, i32 1
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %163, align 8
  %164 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %165 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %164, i32 0, i32 2
  %166 = load i32, i32* @gp2ap020a00f_iio_trigger_work, align 4
  %167 = call i32 @init_irq_work(i32* %165, i32 %166)
  %168 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %169 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %168, i32 0, i32 1
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = call i32 @iio_trigger_register(%struct.TYPE_10__* %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %150
  %175 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %176 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %175, i32 0, i32 1
  %177 = call i32 @dev_err(%struct.TYPE_11__* %176, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %190

178:                                              ; preds = %150
  %179 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %180 = call i32 @iio_device_register(%struct.iio_dev* %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %185

184:                                              ; preds = %178
  store i32 0, i32* %3, align 4
  br label %205

185:                                              ; preds = %183
  %186 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %187 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %186, i32 0, i32 1
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = call i32 @iio_trigger_unregister(%struct.TYPE_10__* %188)
  br label %190

190:                                              ; preds = %185, %174
  %191 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %192 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %195 = call i32 @free_irq(i32 %193, %struct.iio_dev* %194)
  br label %196

196:                                              ; preds = %190, %146, %129
  %197 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %198 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %197)
  br label %199

199:                                              ; preds = %196, %115, %66, %51
  %200 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %6, align 8
  %201 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %200, i32 0, i32 0
  %202 = load %struct.regmap*, %struct.regmap** %201, align 8
  %203 = call i32 @regulator_disable(%struct.regmap* %202)
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %3, align 4
  br label %205

205:                                              ; preds = %199, %184, %43, %31, %15
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.gp2ap020a00f_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.regmap* @devm_regulator_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regulator_enable(%struct.regmap*) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @devm_iio_trigger_alloc(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32*, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_10__*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_10__*) #1

declare dso_local i32 @free_irq(i32, %struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
