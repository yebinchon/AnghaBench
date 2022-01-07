; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88472.c_mn88472_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88472.c_mn88472_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32 }
%struct.i2c_client = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.mn88472_config* }
%struct.mn88472_config = type { i32, %struct.TYPE_9__**, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.dtv_frontend_properties, %struct.i2c_client*, i32 }
%struct.dtv_frontend_properties = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mn88472_dev = type { %struct.i2c_client**, %struct.i2c_client**, %struct.TYPE_9__, i32, i32, i32, i64 }

@mn88472_probe.regmap_config = internal constant %struct.regmap_config { i32 8, i32 8 }, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"I2C registration failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"2nd I2C registration failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"chip id=%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@mn88472_ops = common dso_local global i32 0, align 4
@mn88472_get_dvb_frontend = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Panasonic MN88472 successfully identified\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mn88472_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88472_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mn88472_config*, align 8
  %7 = alloca %struct.mn88472_dev*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.mn88472_config*, %struct.mn88472_config** %13, align 8
  store %struct.mn88472_config* %14, %struct.mn88472_config** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_dbg(%struct.TYPE_14__* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mn88472_dev* @kzalloc(i32 72, i32 %18)
  store %struct.mn88472_dev* %19, %struct.mn88472_dev** %7, align 8
  %20 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %21 = icmp ne %struct.mn88472_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %310

25:                                               ; preds = %2
  %26 = load %struct.mn88472_config*, %struct.mn88472_config** %6, align 8
  %27 = getelementptr inbounds %struct.mn88472_config, %struct.mn88472_config* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.mn88472_config*, %struct.mn88472_config** %6, align 8
  %32 = getelementptr inbounds %struct.mn88472_config, %struct.mn88472_config* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  br label %35

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i64 [ %33, %30 ], [ -1, %34 ]
  %37 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %38 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %37, i32 0, i32 6
  store i64 %36, i64* %38, align 8
  %39 = load %struct.mn88472_config*, %struct.mn88472_config** %6, align 8
  %40 = getelementptr inbounds %struct.mn88472_config, %struct.mn88472_config* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %43 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mn88472_config*, %struct.mn88472_config** %6, align 8
  %45 = getelementptr inbounds %struct.mn88472_config, %struct.mn88472_config* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %48 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mn88472_config*, %struct.mn88472_config** %6, align 8
  %50 = getelementptr inbounds %struct.mn88472_config, %struct.mn88472_config* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %53 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %56 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %55, i32 0, i32 1
  %57 = load %struct.i2c_client**, %struct.i2c_client*** %56, align 8
  %58 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %57, i64 0
  store %struct.i2c_client* %54, %struct.i2c_client** %58, align 8
  %59 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %60 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %59, i32 0, i32 1
  %61 = load %struct.i2c_client**, %struct.i2c_client*** %60, align 8
  %62 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %61, i64 0
  %63 = load %struct.i2c_client*, %struct.i2c_client** %62, align 8
  %64 = call i8* @regmap_init_i2c(%struct.i2c_client* %63, %struct.regmap_config* @mn88472_probe.regmap_config)
  %65 = bitcast i8* %64 to %struct.i2c_client*
  %66 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %67 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %66, i32 0, i32 0
  %68 = load %struct.i2c_client**, %struct.i2c_client*** %67, align 8
  %69 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %68, i64 0
  store %struct.i2c_client* %65, %struct.i2c_client** %69, align 8
  %70 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %71 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %70, i32 0, i32 0
  %72 = load %struct.i2c_client**, %struct.i2c_client*** %71, align 8
  %73 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %72, i64 0
  %74 = load %struct.i2c_client*, %struct.i2c_client** %73, align 8
  %75 = call i64 @IS_ERR(%struct.i2c_client* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %35
  %78 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %79 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %78, i32 0, i32 0
  %80 = load %struct.i2c_client**, %struct.i2c_client*** %79, align 8
  %81 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %80, i64 0
  %82 = load %struct.i2c_client*, %struct.i2c_client** %81, align 8
  %83 = call i32 @PTR_ERR(%struct.i2c_client* %82)
  store i32 %83, i32* %9, align 4
  br label %307

84:                                               ; preds = %35
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @i2c_new_dummy_device(i32 %87, i32 26)
  %89 = bitcast i8* %88 to %struct.i2c_client*
  %90 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %91 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %90, i32 0, i32 1
  %92 = load %struct.i2c_client**, %struct.i2c_client*** %91, align 8
  %93 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %92, i64 1
  store %struct.i2c_client* %89, %struct.i2c_client** %93, align 8
  %94 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %95 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %94, i32 0, i32 1
  %96 = load %struct.i2c_client**, %struct.i2c_client*** %95, align 8
  %97 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %96, i64 1
  %98 = load %struct.i2c_client*, %struct.i2c_client** %97, align 8
  %99 = call i64 @IS_ERR(%struct.i2c_client* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %84
  %102 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %103 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %102, i32 0, i32 1
  %104 = load %struct.i2c_client**, %struct.i2c_client*** %103, align 8
  %105 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %104, i64 1
  %106 = load %struct.i2c_client*, %struct.i2c_client** %105, align 8
  %107 = call i32 @PTR_ERR(%struct.i2c_client* %106)
  store i32 %107, i32* %9, align 4
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = call i32 @dev_err(%struct.TYPE_14__* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %300

111:                                              ; preds = %84
  %112 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %113 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %112, i32 0, i32 1
  %114 = load %struct.i2c_client**, %struct.i2c_client*** %113, align 8
  %115 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %114, i64 1
  %116 = load %struct.i2c_client*, %struct.i2c_client** %115, align 8
  %117 = call i8* @regmap_init_i2c(%struct.i2c_client* %116, %struct.regmap_config* @mn88472_probe.regmap_config)
  %118 = bitcast i8* %117 to %struct.i2c_client*
  %119 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %120 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %119, i32 0, i32 0
  %121 = load %struct.i2c_client**, %struct.i2c_client*** %120, align 8
  %122 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %121, i64 1
  store %struct.i2c_client* %118, %struct.i2c_client** %122, align 8
  %123 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %124 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %123, i32 0, i32 0
  %125 = load %struct.i2c_client**, %struct.i2c_client*** %124, align 8
  %126 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %125, i64 1
  %127 = load %struct.i2c_client*, %struct.i2c_client** %126, align 8
  %128 = call i64 @IS_ERR(%struct.i2c_client* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %111
  %131 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %132 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %131, i32 0, i32 0
  %133 = load %struct.i2c_client**, %struct.i2c_client*** %132, align 8
  %134 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %133, i64 1
  %135 = load %struct.i2c_client*, %struct.i2c_client** %134, align 8
  %136 = call i32 @PTR_ERR(%struct.i2c_client* %135)
  store i32 %136, i32* %9, align 4
  br label %293

137:                                              ; preds = %111
  %138 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %139 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %138, i32 0, i32 1
  %140 = load %struct.i2c_client**, %struct.i2c_client*** %139, align 8
  %141 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %140, i64 1
  %142 = load %struct.i2c_client*, %struct.i2c_client** %141, align 8
  %143 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %144 = call i32 @i2c_set_clientdata(%struct.i2c_client* %142, %struct.mn88472_dev* %143)
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i8* @i2c_new_dummy_device(i32 %147, i32 28)
  %149 = bitcast i8* %148 to %struct.i2c_client*
  %150 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %151 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %150, i32 0, i32 1
  %152 = load %struct.i2c_client**, %struct.i2c_client*** %151, align 8
  %153 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %152, i64 2
  store %struct.i2c_client* %149, %struct.i2c_client** %153, align 8
  %154 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %155 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %154, i32 0, i32 1
  %156 = load %struct.i2c_client**, %struct.i2c_client*** %155, align 8
  %157 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %156, i64 2
  %158 = load %struct.i2c_client*, %struct.i2c_client** %157, align 8
  %159 = call i64 @IS_ERR(%struct.i2c_client* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %137
  %162 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %163 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %162, i32 0, i32 1
  %164 = load %struct.i2c_client**, %struct.i2c_client*** %163, align 8
  %165 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %164, i64 2
  %166 = load %struct.i2c_client*, %struct.i2c_client** %165, align 8
  %167 = call i32 @PTR_ERR(%struct.i2c_client* %166)
  store i32 %167, i32* %9, align 4
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 0
  %170 = call i32 @dev_err(%struct.TYPE_14__* %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %286

171:                                              ; preds = %137
  %172 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %173 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %172, i32 0, i32 1
  %174 = load %struct.i2c_client**, %struct.i2c_client*** %173, align 8
  %175 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %174, i64 2
  %176 = load %struct.i2c_client*, %struct.i2c_client** %175, align 8
  %177 = call i8* @regmap_init_i2c(%struct.i2c_client* %176, %struct.regmap_config* @mn88472_probe.regmap_config)
  %178 = bitcast i8* %177 to %struct.i2c_client*
  %179 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %180 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %179, i32 0, i32 0
  %181 = load %struct.i2c_client**, %struct.i2c_client*** %180, align 8
  %182 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %181, i64 2
  store %struct.i2c_client* %178, %struct.i2c_client** %182, align 8
  %183 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %184 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %183, i32 0, i32 0
  %185 = load %struct.i2c_client**, %struct.i2c_client*** %184, align 8
  %186 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %185, i64 2
  %187 = load %struct.i2c_client*, %struct.i2c_client** %186, align 8
  %188 = call i64 @IS_ERR(%struct.i2c_client* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %171
  %191 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %192 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %191, i32 0, i32 0
  %193 = load %struct.i2c_client**, %struct.i2c_client*** %192, align 8
  %194 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %193, i64 2
  %195 = load %struct.i2c_client*, %struct.i2c_client** %194, align 8
  %196 = call i32 @PTR_ERR(%struct.i2c_client* %195)
  store i32 %196, i32* %9, align 4
  br label %279

197:                                              ; preds = %171
  %198 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %199 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %198, i32 0, i32 1
  %200 = load %struct.i2c_client**, %struct.i2c_client*** %199, align 8
  %201 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %200, i64 2
  %202 = load %struct.i2c_client*, %struct.i2c_client** %201, align 8
  %203 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %204 = call i32 @i2c_set_clientdata(%struct.i2c_client* %202, %struct.mn88472_dev* %203)
  %205 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %206 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %205, i32 0, i32 0
  %207 = load %struct.i2c_client**, %struct.i2c_client*** %206, align 8
  %208 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %207, i64 2
  %209 = load %struct.i2c_client*, %struct.i2c_client** %208, align 8
  %210 = call i32 @regmap_read(%struct.i2c_client* %209, i32 255, i32* %10)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %197
  br label %272

214:                                              ; preds = %197
  %215 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %216 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %215, i32 0, i32 0
  %217 = load i32, i32* %10, align 4
  %218 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_dbg(%struct.TYPE_14__* %216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 2
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = load i32, i32* @ENODEV, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %9, align 4
  br label %272

224:                                              ; preds = %214
  %225 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %226 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %225, i32 0, i32 0
  %227 = load %struct.i2c_client**, %struct.i2c_client*** %226, align 8
  %228 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %227, i64 2
  %229 = load %struct.i2c_client*, %struct.i2c_client** %228, align 8
  %230 = call i32 @regmap_write(%struct.i2c_client* %229, i32 5, i32 62)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %224
  br label %272

234:                                              ; preds = %224
  %235 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %236 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 2
  %238 = call i32 @memcpy(i32* %237, i32* @mn88472_ops, i32 4)
  %239 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %240 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %241 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 1
  store %struct.i2c_client* %239, %struct.i2c_client** %242, align 8
  %243 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %244 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %243, i32 0, i32 2
  %245 = load %struct.mn88472_config*, %struct.mn88472_config** %6, align 8
  %246 = getelementptr inbounds %struct.mn88472_config, %struct.mn88472_config* %245, i32 0, i32 1
  %247 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %246, align 8
  store %struct.TYPE_9__* %244, %struct.TYPE_9__** %247, align 8
  %248 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %249 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %250 = call i32 @i2c_set_clientdata(%struct.i2c_client* %248, %struct.mn88472_dev* %249)
  %251 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %252 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  store %struct.dtv_frontend_properties* %253, %struct.dtv_frontend_properties** %8, align 8
  %254 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %255 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  store i32 1, i32* %256, align 4
  %257 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %258 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  store i32 1, i32* %259, align 4
  %260 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %261 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  store i32 1, i32* %262, align 4
  %263 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %264 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  store i32 1, i32* %265, align 4
  %266 = load i32, i32* @mn88472_get_dvb_frontend, align 4
  %267 = load %struct.mn88472_config*, %struct.mn88472_config** %6, align 8
  %268 = getelementptr inbounds %struct.mn88472_config, %struct.mn88472_config* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %270 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %269, i32 0, i32 0
  %271 = call i32 @dev_info(%struct.TYPE_14__* %270, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %316

272:                                              ; preds = %233, %221, %213
  %273 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %274 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %273, i32 0, i32 0
  %275 = load %struct.i2c_client**, %struct.i2c_client*** %274, align 8
  %276 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %275, i64 2
  %277 = load %struct.i2c_client*, %struct.i2c_client** %276, align 8
  %278 = call i32 @regmap_exit(%struct.i2c_client* %277)
  br label %279

279:                                              ; preds = %272, %190
  %280 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %281 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %280, i32 0, i32 1
  %282 = load %struct.i2c_client**, %struct.i2c_client*** %281, align 8
  %283 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %282, i64 2
  %284 = load %struct.i2c_client*, %struct.i2c_client** %283, align 8
  %285 = call i32 @i2c_unregister_device(%struct.i2c_client* %284)
  br label %286

286:                                              ; preds = %279, %161
  %287 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %288 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %287, i32 0, i32 0
  %289 = load %struct.i2c_client**, %struct.i2c_client*** %288, align 8
  %290 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %289, i64 1
  %291 = load %struct.i2c_client*, %struct.i2c_client** %290, align 8
  %292 = call i32 @regmap_exit(%struct.i2c_client* %291)
  br label %293

293:                                              ; preds = %286, %130
  %294 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %295 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %294, i32 0, i32 1
  %296 = load %struct.i2c_client**, %struct.i2c_client*** %295, align 8
  %297 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %296, i64 1
  %298 = load %struct.i2c_client*, %struct.i2c_client** %297, align 8
  %299 = call i32 @i2c_unregister_device(%struct.i2c_client* %298)
  br label %300

300:                                              ; preds = %293, %101
  %301 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %302 = getelementptr inbounds %struct.mn88472_dev, %struct.mn88472_dev* %301, i32 0, i32 0
  %303 = load %struct.i2c_client**, %struct.i2c_client*** %302, align 8
  %304 = getelementptr inbounds %struct.i2c_client*, %struct.i2c_client** %303, i64 0
  %305 = load %struct.i2c_client*, %struct.i2c_client** %304, align 8
  %306 = call i32 @regmap_exit(%struct.i2c_client* %305)
  br label %307

307:                                              ; preds = %300, %77
  %308 = load %struct.mn88472_dev*, %struct.mn88472_dev** %7, align 8
  %309 = call i32 @kfree(%struct.mn88472_dev* %308)
  br label %310

310:                                              ; preds = %307, %22
  %311 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %312 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %311, i32 0, i32 0
  %313 = load i32, i32* %9, align 4
  %314 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_dbg(%struct.TYPE_14__* %312, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %313)
  %315 = load i32, i32* %9, align 4
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %310, %234
  %317 = load i32, i32* %3, align 4
  ret i32 %317
}

declare dso_local i32 @dev_dbg(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local %struct.mn88472_dev* @kzalloc(i32, i32) #1

declare dso_local i8* @regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @PTR_ERR(%struct.i2c_client*) #1

declare dso_local i8* @i2c_new_dummy_device(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mn88472_dev*) #1

declare dso_local i32 @regmap_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @regmap_exit(%struct.i2c_client*) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @kfree(%struct.mn88472_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
