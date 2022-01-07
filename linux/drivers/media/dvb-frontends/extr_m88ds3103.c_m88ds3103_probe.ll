; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.m88ds3103_platform_data* }
%struct.m88ds3103_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.m88ds3103_dev = type { i32, %struct.TYPE_13__, %struct.TYPE_15__*, i32, %struct.TYPE_11__*, %struct.TYPE_17__, %struct.TYPE_11__, %struct.i2c_client* }
%struct.TYPE_13__ = type { %struct.m88ds3103_dev*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.m88ds3103_dev* }
%struct.TYPE_17__ = type { i32, i32, %struct.m88ds3103_dev* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"chip_id=%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unknown device. Chip_id=%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@m88ds3103_select = common dso_local global i32 0, align 4
@m88ds3103_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Montage Technology M88RS6000\00", align 1
@m88ds3103_get_dvb_frontend = common dso_local global i32 0, align 4
@m88ds3103_get_i2c_adapter = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @m88ds3103_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.m88ds3103_dev*, align 8
  %7 = alloca %struct.m88ds3103_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %12, align 8
  store %struct.m88ds3103_platform_data* %13, %struct.m88ds3103_platform_data** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.m88ds3103_dev* @kzalloc(i32 128, i32 %14)
  store %struct.m88ds3103_dev* %15, %struct.m88ds3103_dev** %6, align 8
  %16 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %17 = icmp ne %struct.m88ds3103_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %287

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %24 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %23, i32 0, i32 7
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %26 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %29 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 11
  store i32 %27, i32* %30, align 4
  %31 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %32 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %35 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 10
  store i32 %33, i32* %36, align 8
  %37 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %38 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %41 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 9
  store i32 %39, i32* %42, align 4
  %43 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %44 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 1000
  %47 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %48 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %51 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %54 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 8
  store i32 %52, i32* %55, align 8
  %56 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %57 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %60 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 7
  store i32 %58, i32* %61, align 4
  %62 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %63 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %66 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 6
  store i32 %64, i32* %67, align 8
  %68 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %69 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %72 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %75 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %78 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 5
  store i32 %76, i32* %79, align 4
  %80 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %81 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %84 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 8
  %86 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %87 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %90 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 4
  %92 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %93 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %96 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  %98 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %99 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %98, i32 0, i32 6
  %100 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %101 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %100, i32 0, i32 4
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %101, align 8
  %102 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %103 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  store i32 8, i32* %104, align 8
  %105 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %106 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  store i32 8, i32* %107, align 4
  %108 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %109 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %110 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 2
  store %struct.m88ds3103_dev* %108, %struct.m88ds3103_dev** %111, align 8
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %114 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %113, i32 0, i32 5
  %115 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %112, %struct.TYPE_17__* %114)
  %116 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %117 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %119 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @IS_ERR(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %21
  %124 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %125 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @PTR_ERR(i32 %126)
  store i32 %127, i32* %8, align 4
  br label %284

128:                                              ; preds = %21
  %129 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %130 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @regmap_read(i32 %131, i32 0, i32* %9)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %284

136:                                              ; preds = %128
  %137 = load i32, i32* %9, align 4
  %138 = lshr i32 %137, 1
  %139 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %140 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %144 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @dev_dbg(%struct.TYPE_16__* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %145)
  %147 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %148 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %151 [
    i32 128, label %150
    i32 132, label %150
  ]

150:                                              ; preds = %136, %136
  br label %160

151:                                              ; preds = %136
  %152 = load i32, i32* @ENODEV, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %8, align 4
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %157 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @dev_err(%struct.TYPE_16__* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %284

160:                                              ; preds = %150
  %161 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %162 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %161, i32 0, i32 4
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %169 [
    i32 131, label %166
    i32 130, label %167
    i32 129, label %168
  ]

166:                                              ; preds = %160
  store i32 128, i32* %9, align 4
  br label %172

167:                                              ; preds = %160
  store i32 0, i32* %9, align 4
  br label %172

168:                                              ; preds = %160
  store i32 16, i32* %9, align 4
  br label %172

169:                                              ; preds = %160
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %8, align 4
  br label %284

172:                                              ; preds = %168, %167, %166
  %173 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %174 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %172
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %8, align 4
  br label %284

180:                                              ; preds = %172
  %181 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %182 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 128
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  store i32 0, i32* %9, align 4
  br label %186

186:                                              ; preds = %185, %180
  %187 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %188 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @regmap_write(i32 %189, i32 41, i32 %190)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %284

195:                                              ; preds = %186
  %196 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %197 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %196, i32 8, i32 1, i32 0)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %284

201:                                              ; preds = %195
  %202 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %203 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %202, i32 4, i32 1, i32 1)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %284

207:                                              ; preds = %201
  %208 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %209 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %208, i32 35, i32 16, i32 16)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %284

213:                                              ; preds = %207
  %214 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %215 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %217, i32 0, i32 0
  %219 = load i32, i32* @m88ds3103_select, align 4
  %220 = call %struct.TYPE_15__* @i2c_mux_alloc(i32 %216, %struct.TYPE_16__* %218, i32 1, i32 0, i32 0, i32 %219, i32* null)
  %221 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %222 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %221, i32 0, i32 2
  store %struct.TYPE_15__* %220, %struct.TYPE_15__** %222, align 8
  %223 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %224 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %223, i32 0, i32 2
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = icmp ne %struct.TYPE_15__* %225, null
  br i1 %226, label %230, label %227

227:                                              ; preds = %213
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %8, align 4
  br label %284

230:                                              ; preds = %213
  %231 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %232 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %233 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %232, i32 0, i32 2
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  store %struct.m88ds3103_dev* %231, %struct.m88ds3103_dev** %235, align 8
  %236 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %237 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %236, i32 0, i32 2
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %237, align 8
  %239 = call i32 @i2c_mux_add_adapter(%struct.TYPE_15__* %238, i32 0, i32 0, i32 0)
  store i32 %239, i32* %8, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %230
  br label %284

243:                                              ; preds = %230
  %244 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %245 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = call i32 @memcpy(%struct.TYPE_14__* %246, i32* @m88ds3103_ops, i32 4)
  %248 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %249 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 128
  br i1 %251, label %252, label %260

252:                                              ; preds = %243
  %253 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %254 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @strscpy(i32 %258, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %260

260:                                              ; preds = %252, %243
  %261 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %262 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %270, label %265

265:                                              ; preds = %260
  %266 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %267 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 0
  store i32* null, i32** %269, align 8
  br label %270

270:                                              ; preds = %265, %260
  %271 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %272 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %273 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  store %struct.m88ds3103_dev* %271, %struct.m88ds3103_dev** %274, align 8
  %275 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %276 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %277 = call i32 @i2c_set_clientdata(%struct.i2c_client* %275, %struct.m88ds3103_dev* %276)
  %278 = load i32, i32* @m88ds3103_get_dvb_frontend, align 4
  %279 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %280 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %279, i32 0, i32 3
  store i32 %278, i32* %280, align 4
  %281 = load i32, i32* @m88ds3103_get_i2c_adapter, align 4
  %282 = load %struct.m88ds3103_platform_data*, %struct.m88ds3103_platform_data** %7, align 8
  %283 = getelementptr inbounds %struct.m88ds3103_platform_data, %struct.m88ds3103_platform_data* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 4
  store i32 0, i32* %3, align 4
  br label %293

284:                                              ; preds = %242, %227, %212, %206, %200, %194, %177, %169, %151, %135, %123
  %285 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %6, align 8
  %286 = call i32 @kfree(%struct.m88ds3103_dev* %285)
  br label %287

287:                                              ; preds = %284, %18
  %288 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %289 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %288, i32 0, i32 0
  %290 = load i32, i32* %8, align 4
  %291 = call i32 @dev_dbg(%struct.TYPE_16__* %289, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* %8, align 4
  store i32 %292, i32* %3, align 4
  br label %293

293:                                              ; preds = %287, %270
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local %struct.m88ds3103_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.TYPE_17__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @m88ds3103_update_bits(%struct.m88ds3103_dev*, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @i2c_mux_alloc(i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.m88ds3103_dev*) #1

declare dso_local i32 @kfree(%struct.m88ds3103_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
