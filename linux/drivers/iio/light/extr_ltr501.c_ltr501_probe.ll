; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_ltr501.c_ltr501_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i8*, i32 }
%struct.ltr501_data = type { %struct.TYPE_4__*, %struct.regmap*, %struct.regmap*, %struct.regmap*, %struct.regmap*, %struct.regmap*, %struct.regmap*, %struct.regmap*, %struct.regmap*, i32, i32, %struct.i2c_client* }
%struct.regmap = type { i32 }
%struct.iio_dev = type { i8*, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ltr501_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Regmap initialization failed.\0A\00", align 1
@reg_field_it = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Integ time reg field init failed.\0A\00", align 1
@reg_field_als_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"ALS intr mode reg field init failed\0A\00", align 1
@reg_field_ps_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"PS intr mode reg field init failed.\0A\00", align 1
@reg_field_als_rate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"ALS samp rate field init failed.\0A\00", align 1
@reg_field_ps_rate = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"PS samp rate field init failed.\0A\00", align 1
@reg_field_als_prst = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"ALS prst reg field init failed\0A\00", align 1
@reg_field_ps_prst = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"PS prst reg field init failed.\0A\00", align 1
@LTR501_PART_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ltr501_chip_info_tbl = common dso_local global %struct.TYPE_4__* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ltr501_interrupt_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"ltr501_thresh_event\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"request irq (%d) failed\0A\00", align 1
@ltr501_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ltr501_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltr501_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ltr501_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %14, i32 88)
  store %struct.iio_dev* %15, %struct.iio_dev** %7, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = icmp ne %struct.iio_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %351

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %22, i32* @ltr501_regmap_config)
  store %struct.regmap* %23, %struct.regmap** %8, align 8
  %24 = load %struct.regmap*, %struct.regmap** %8, align 8
  %25 = call i64 @IS_ERR(%struct.regmap* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.regmap*, %struct.regmap** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.regmap* %31)
  store i32 %32, i32* %3, align 4
  br label %351

33:                                               ; preds = %21
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = call %struct.ltr501_data* @iio_priv(%struct.iio_dev* %34)
  store %struct.ltr501_data* %35, %struct.ltr501_data** %6, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = call i32 @i2c_set_clientdata(%struct.i2c_client* %36, %struct.iio_dev* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %41 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %40, i32 0, i32 11
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load %struct.regmap*, %struct.regmap** %8, align 8
  %43 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %44 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %43, i32 0, i32 1
  store %struct.regmap* %42, %struct.regmap** %44, align 8
  %45 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %46 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %45, i32 0, i32 10
  %47 = call i32 @mutex_init(i32* %46)
  %48 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %49 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %48, i32 0, i32 9
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 1
  %53 = load %struct.regmap*, %struct.regmap** %8, align 8
  %54 = load i32, i32* @reg_field_it, align 4
  %55 = call i8* @devm_regmap_field_alloc(i32* %52, %struct.regmap* %53, i32 %54)
  %56 = bitcast i8* %55 to %struct.regmap*
  %57 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %58 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %57, i32 0, i32 8
  store %struct.regmap* %56, %struct.regmap** %58, align 8
  %59 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %60 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %59, i32 0, i32 8
  %61 = load %struct.regmap*, %struct.regmap** %60, align 8
  %62 = call i64 @IS_ERR(%struct.regmap* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %33
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 1
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %69 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %68, i32 0, i32 8
  %70 = load %struct.regmap*, %struct.regmap** %69, align 8
  %71 = call i32 @PTR_ERR(%struct.regmap* %70)
  store i32 %71, i32* %3, align 4
  br label %351

72:                                               ; preds = %33
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 1
  %75 = load %struct.regmap*, %struct.regmap** %8, align 8
  %76 = load i32, i32* @reg_field_als_intr, align 4
  %77 = call i8* @devm_regmap_field_alloc(i32* %74, %struct.regmap* %75, i32 %76)
  %78 = bitcast i8* %77 to %struct.regmap*
  %79 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %80 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %79, i32 0, i32 7
  store %struct.regmap* %78, %struct.regmap** %80, align 8
  %81 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %82 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %81, i32 0, i32 7
  %83 = load %struct.regmap*, %struct.regmap** %82, align 8
  %84 = call i64 @IS_ERR(%struct.regmap* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %72
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 1
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %91 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %90, i32 0, i32 7
  %92 = load %struct.regmap*, %struct.regmap** %91, align 8
  %93 = call i32 @PTR_ERR(%struct.regmap* %92)
  store i32 %93, i32* %3, align 4
  br label %351

94:                                               ; preds = %72
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 1
  %97 = load %struct.regmap*, %struct.regmap** %8, align 8
  %98 = load i32, i32* @reg_field_ps_intr, align 4
  %99 = call i8* @devm_regmap_field_alloc(i32* %96, %struct.regmap* %97, i32 %98)
  %100 = bitcast i8* %99 to %struct.regmap*
  %101 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %102 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %101, i32 0, i32 6
  store %struct.regmap* %100, %struct.regmap** %102, align 8
  %103 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %104 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %103, i32 0, i32 6
  %105 = load %struct.regmap*, %struct.regmap** %104, align 8
  %106 = call i64 @IS_ERR(%struct.regmap* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %94
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 1
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %113 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %112, i32 0, i32 6
  %114 = load %struct.regmap*, %struct.regmap** %113, align 8
  %115 = call i32 @PTR_ERR(%struct.regmap* %114)
  store i32 %115, i32* %3, align 4
  br label %351

116:                                              ; preds = %94
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 1
  %119 = load %struct.regmap*, %struct.regmap** %8, align 8
  %120 = load i32, i32* @reg_field_als_rate, align 4
  %121 = call i8* @devm_regmap_field_alloc(i32* %118, %struct.regmap* %119, i32 %120)
  %122 = bitcast i8* %121 to %struct.regmap*
  %123 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %124 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %123, i32 0, i32 5
  store %struct.regmap* %122, %struct.regmap** %124, align 8
  %125 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %126 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %125, i32 0, i32 5
  %127 = load %struct.regmap*, %struct.regmap** %126, align 8
  %128 = call i64 @IS_ERR(%struct.regmap* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %116
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 1
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %134 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %135 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %134, i32 0, i32 5
  %136 = load %struct.regmap*, %struct.regmap** %135, align 8
  %137 = call i32 @PTR_ERR(%struct.regmap* %136)
  store i32 %137, i32* %3, align 4
  br label %351

138:                                              ; preds = %116
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 1
  %141 = load %struct.regmap*, %struct.regmap** %8, align 8
  %142 = load i32, i32* @reg_field_ps_rate, align 4
  %143 = call i8* @devm_regmap_field_alloc(i32* %140, %struct.regmap* %141, i32 %142)
  %144 = bitcast i8* %143 to %struct.regmap*
  %145 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %146 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %145, i32 0, i32 4
  store %struct.regmap* %144, %struct.regmap** %146, align 8
  %147 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %148 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %147, i32 0, i32 4
  %149 = load %struct.regmap*, %struct.regmap** %148, align 8
  %150 = call i64 @IS_ERR(%struct.regmap* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %138
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %153, i32 0, i32 1
  %155 = call i32 (i32*, i8*, ...) @dev_err(i32* %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %156 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %157 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %156, i32 0, i32 4
  %158 = load %struct.regmap*, %struct.regmap** %157, align 8
  %159 = call i32 @PTR_ERR(%struct.regmap* %158)
  store i32 %159, i32* %3, align 4
  br label %351

160:                                              ; preds = %138
  %161 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %162 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %161, i32 0, i32 1
  %163 = load %struct.regmap*, %struct.regmap** %8, align 8
  %164 = load i32, i32* @reg_field_als_prst, align 4
  %165 = call i8* @devm_regmap_field_alloc(i32* %162, %struct.regmap* %163, i32 %164)
  %166 = bitcast i8* %165 to %struct.regmap*
  %167 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %168 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %167, i32 0, i32 3
  store %struct.regmap* %166, %struct.regmap** %168, align 8
  %169 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %170 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %169, i32 0, i32 3
  %171 = load %struct.regmap*, %struct.regmap** %170, align 8
  %172 = call i64 @IS_ERR(%struct.regmap* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %160
  %175 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %176 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %175, i32 0, i32 1
  %177 = call i32 (i32*, i8*, ...) @dev_err(i32* %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %178 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %179 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %178, i32 0, i32 3
  %180 = load %struct.regmap*, %struct.regmap** %179, align 8
  %181 = call i32 @PTR_ERR(%struct.regmap* %180)
  store i32 %181, i32* %3, align 4
  br label %351

182:                                              ; preds = %160
  %183 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %184 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %183, i32 0, i32 1
  %185 = load %struct.regmap*, %struct.regmap** %8, align 8
  %186 = load i32, i32* @reg_field_ps_prst, align 4
  %187 = call i8* @devm_regmap_field_alloc(i32* %184, %struct.regmap* %185, i32 %186)
  %188 = bitcast i8* %187 to %struct.regmap*
  %189 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %190 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %189, i32 0, i32 2
  store %struct.regmap* %188, %struct.regmap** %190, align 8
  %191 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %192 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %191, i32 0, i32 2
  %193 = load %struct.regmap*, %struct.regmap** %192, align 8
  %194 = call i64 @IS_ERR(%struct.regmap* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %182
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 1
  %199 = call i32 (i32*, i8*, ...) @dev_err(i32* %198, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %200 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %201 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %200, i32 0, i32 2
  %202 = load %struct.regmap*, %struct.regmap** %201, align 8
  %203 = call i32 @PTR_ERR(%struct.regmap* %202)
  store i32 %203, i32* %3, align 4
  br label %351

204:                                              ; preds = %182
  %205 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %206 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %205, i32 0, i32 1
  %207 = load %struct.regmap*, %struct.regmap** %206, align 8
  %208 = load i32, i32* @LTR501_PART_ID, align 4
  %209 = call i32 @regmap_read(%struct.regmap* %207, i32 %208, i32* %10)
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %204
  %213 = load i32, i32* %9, align 4
  store i32 %213, i32* %3, align 4
  br label %351

214:                                              ; preds = %204
  %215 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %216 = icmp ne %struct.i2c_device_id* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %219 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  store i8* %220, i8** %12, align 8
  %221 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %222 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  store i32 %223, i32* %11, align 4
  br label %237

224:                                              ; preds = %214
  %225 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %226 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %225, i32 0, i32 1
  %227 = call i64 @ACPI_HANDLE(i32* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %224
  %230 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %231 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %230, i32 0, i32 1
  %232 = call i8* @ltr501_match_acpi_device(i32* %231, i32* %11)
  store i8* %232, i8** %12, align 8
  br label %236

233:                                              ; preds = %224
  %234 = load i32, i32* @ENODEV, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %3, align 4
  br label %351

236:                                              ; preds = %229
  br label %237

237:                                              ; preds = %236, %217
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ltr501_chip_info_tbl, align 8
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %240
  %242 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %243 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %242, i32 0, i32 0
  store %struct.TYPE_4__* %241, %struct.TYPE_4__** %243, align 8
  %244 = load i32, i32* %10, align 4
  %245 = ashr i32 %244, 4
  %246 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %247 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %246, i32 0, i32 0
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %245, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %237
  %253 = load i32, i32* @ENODEV, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %3, align 4
  br label %351

255:                                              ; preds = %237
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %256, i32 0, i32 1
  %258 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %259 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  store i32* %257, i32** %260, align 8
  %261 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %262 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %261, i32 0, i32 0
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %267 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 8
  %268 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %269 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %268, i32 0, i32 0
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %274 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 4
  %275 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %276 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %275, i32 0, i32 0
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %281 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 8
  %282 = load i8*, i8** %12, align 8
  %283 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %284 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  %285 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %286 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %287 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 4
  %288 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %289 = call i32 @ltr501_init(%struct.ltr501_data* %288)
  store i32 %289, i32* %9, align 4
  %290 = load i32, i32* %9, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %255
  %293 = load i32, i32* %9, align 4
  store i32 %293, i32* %3, align 4
  br label %351

294:                                              ; preds = %255
  %295 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %296 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = icmp sgt i64 %297, 0
  br i1 %298, label %299, label %322

299:                                              ; preds = %294
  %300 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %301 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %300, i32 0, i32 1
  %302 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %303 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* @ltr501_interrupt_handler, align 4
  %306 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %307 = load i32, i32* @IRQF_ONESHOT, align 4
  %308 = or i32 %306, %307
  %309 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %310 = call i32 @devm_request_threaded_irq(i32* %301, i64 %304, i32* null, i32 %305, i32 %308, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), %struct.iio_dev* %309)
  store i32 %310, i32* %9, align 4
  %311 = load i32, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %299
  %314 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %315 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %314, i32 0, i32 1
  %316 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %317 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = call i32 (i32*, i8*, ...) @dev_err(i32* %315, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i64 %318)
  %320 = load i32, i32* %9, align 4
  store i32 %320, i32* %3, align 4
  br label %351

321:                                              ; preds = %299
  br label %330

322:                                              ; preds = %294
  %323 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %324 = getelementptr inbounds %struct.ltr501_data, %struct.ltr501_data* %323, i32 0, i32 0
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %329 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 8
  br label %330

330:                                              ; preds = %322, %321
  %331 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %332 = load i32, i32* @ltr501_trigger_handler, align 4
  %333 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %331, i32* null, i32 %332, i32* null)
  store i32 %333, i32* %9, align 4
  %334 = load i32, i32* %9, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  br label %347

337:                                              ; preds = %330
  %338 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %339 = call i32 @iio_device_register(%struct.iio_dev* %338)
  store i32 %339, i32* %9, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %337
  br label %344

343:                                              ; preds = %337
  store i32 0, i32* %3, align 4
  br label %351

344:                                              ; preds = %342
  %345 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %346 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %345)
  br label %347

347:                                              ; preds = %344, %336
  %348 = load %struct.ltr501_data*, %struct.ltr501_data** %6, align 8
  %349 = call i32 @ltr501_powerdown(%struct.ltr501_data* %348)
  %350 = load i32, i32* %9, align 4
  store i32 %350, i32* %3, align 4
  br label %351

351:                                              ; preds = %347, %343, %313, %292, %252, %233, %212, %196, %174, %152, %130, %108, %86, %64, %27, %18
  %352 = load i32, i32* %3, align 4
  ret i32 %352
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.ltr501_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_regmap_field_alloc(i32*, %struct.regmap*, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i64 @ACPI_HANDLE(i32*) #1

declare dso_local i8* @ltr501_match_acpi_device(i32*, i32*) #1

declare dso_local i32 @ltr501_init(%struct.ltr501_data*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32*, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @ltr501_powerdown(%struct.ltr501_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
