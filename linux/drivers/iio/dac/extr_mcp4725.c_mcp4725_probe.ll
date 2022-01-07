; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_mcp4725.c_mcp4725_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_mcp4725.c_mcp4725_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.i2c_device_id = type { i64, i32 }
%struct.mcp4725_data = type { i32, i32, i32, i32, i32, i8*, i8*, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32*, i32*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.mcp4725_platform_data = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid platform or devicetree data\00", align 1
@MCP4725 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"external reference is unavailable on MCP4725\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"buffering is unavailable on the internal reference\00", align 1
@MCP472X_REF_VDD = common dso_local global i32 0, align 4
@MCP472X_REF_VREF_BUFFERED = common dso_local global i32 0, align 4
@MCP472X_REF_VREF_UNBUFFERED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@mcp4725_info = common dso_local global i32 0, align 4
@mcp472x_channel = common dso_local global i32* null, align 8
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to read DAC value\00", align 1
@MCP4726 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [66 x i8] c"voltage reference mode differs (conf: %u, eeprom: %u), setting %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mcp4725_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp4725_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mcp4725_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.mcp4725_platform_data*, align 8
  %9 = alloca %struct.mcp4725_platform_data, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__* %15, i32 48)
  store %struct.iio_dev* %16, %struct.iio_dev** %7, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = icmp eq %struct.iio_dev* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %315

22:                                               ; preds = %2
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = call %struct.mcp4725_data* @iio_priv(%struct.iio_dev* %23)
  store %struct.mcp4725_data* %24, %struct.mcp4725_data** %6, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %27 = call i32 @i2c_set_clientdata(%struct.i2c_client* %25, %struct.iio_dev* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %30 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %29, i32 0, i32 7
  store %struct.i2c_client* %28, %struct.i2c_client** %30, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i64 @of_device_get_match_data(%struct.TYPE_10__* %38)
  %40 = trunc i64 %39 to i32
  %41 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %42 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %50

43:                                               ; preds = %22
  %44 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %45 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %49 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = call %struct.mcp4725_platform_data* @dev_get_platdata(%struct.TYPE_10__* %52)
  store %struct.mcp4725_platform_data* %53, %struct.mcp4725_platform_data** %8, align 8
  %54 = load %struct.mcp4725_platform_data*, %struct.mcp4725_platform_data** %8, align 8
  %55 = icmp ne %struct.mcp4725_platform_data* %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %50
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 @mcp4725_probe_dt(%struct.TYPE_10__* %58, %struct.mcp4725_platform_data* %9)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = call i32 @dev_err(%struct.TYPE_10__* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %3, align 4
  br label %315

67:                                               ; preds = %56
  store %struct.mcp4725_platform_data* %9, %struct.mcp4725_platform_data** %8, align 8
  br label %68

68:                                               ; preds = %67, %50
  %69 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %70 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @MCP4725, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load %struct.mcp4725_platform_data*, %struct.mcp4725_platform_data** %8, align 8
  %77 = getelementptr inbounds %struct.mcp4725_platform_data, %struct.mcp4725_platform_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.TYPE_10__* %82, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %315

86:                                               ; preds = %75, %68
  %87 = load %struct.mcp4725_platform_data*, %struct.mcp4725_platform_data** %8, align 8
  %88 = getelementptr inbounds %struct.mcp4725_platform_data, %struct.mcp4725_platform_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %86
  %92 = load %struct.mcp4725_platform_data*, %struct.mcp4725_platform_data** %8, align 8
  %93 = getelementptr inbounds %struct.mcp4725_platform_data, %struct.mcp4725_platform_data* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = call i32 @dev_err(%struct.TYPE_10__* %98, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %315

102:                                              ; preds = %91, %86
  %103 = load %struct.mcp4725_platform_data*, %struct.mcp4725_platform_data** %8, align 8
  %104 = getelementptr inbounds %struct.mcp4725_platform_data, %struct.mcp4725_platform_data* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @MCP472X_REF_VDD, align 4
  %109 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %110 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %124

111:                                              ; preds = %102
  %112 = load %struct.mcp4725_platform_data*, %struct.mcp4725_platform_data** %8, align 8
  %113 = getelementptr inbounds %struct.mcp4725_platform_data, %struct.mcp4725_platform_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @MCP472X_REF_VREF_BUFFERED, align 4
  br label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @MCP472X_REF_VREF_UNBUFFERED, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %123 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %120, %107
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %125, i32 0, i32 0
  %127 = call i8* @devm_regulator_get(%struct.TYPE_10__* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %129 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %131 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %130, i32 0, i32 5
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @IS_ERR(i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %124
  %136 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %137 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %136, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @PTR_ERR(i8* %138)
  store i32 %139, i32* %3, align 4
  br label %315

140:                                              ; preds = %124
  %141 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %142 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %141, i32 0, i32 5
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @regulator_enable(i8* %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %3, align 4
  br label %315

149:                                              ; preds = %140
  %150 = load %struct.mcp4725_platform_data*, %struct.mcp4725_platform_data** %8, align 8
  %151 = getelementptr inbounds %struct.mcp4725_platform_data, %struct.mcp4725_platform_data* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %149
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = call i8* @devm_regulator_get(%struct.TYPE_10__* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %158 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %159 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  %160 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %161 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %160, i32 0, i32 6
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @IS_ERR(i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %154
  %166 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %167 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %166, i32 0, i32 6
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @PTR_ERR(i8* %168)
  store i32 %169, i32* %13, align 4
  br label %309

170:                                              ; preds = %154
  %171 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %172 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %171, i32 0, i32 6
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @regulator_enable(i8* %173)
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %309

178:                                              ; preds = %170
  br label %179

179:                                              ; preds = %178, %149
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 0
  %182 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %183 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store %struct.TYPE_10__* %181, %struct.TYPE_10__** %184, align 8
  %185 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %186 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %189 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  %190 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %191 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %190, i32 0, i32 3
  store i32* @mcp4725_info, i32** %191, align 8
  %192 = load i32*, i32** @mcp472x_channel, align 8
  %193 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %194 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %198 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %197, i32 0, i32 2
  store i32* %196, i32** %198, align 8
  %199 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %200 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %199, i32 0, i32 0
  store i32 1, i32* %200, align 8
  %201 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %202 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %203 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %205 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %206 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %207 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* @MCP4725, align 8
  %211 = icmp eq i64 %209, %210
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 3, i32 4
  %214 = call i32 @i2c_master_recv(%struct.i2c_client* %204, i32* %205, i32 %213)
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %13, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %179
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %218, i32 0, i32 0
  %220 = call i32 @dev_err(%struct.TYPE_10__* %219, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %298

221:                                              ; preds = %179
  %222 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %223 = load i32, i32* %222, align 16
  %224 = ashr i32 %223, 1
  %225 = and i32 %224, 3
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp sgt i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %230 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %221
  %234 = load i32, i32* %11, align 4
  %235 = sub nsw i32 %234, 1
  br label %237

236:                                              ; preds = %221
  br label %237

237:                                              ; preds = %236, %233
  %238 = phi i32 [ %235, %233 ], [ 2, %236 ]
  %239 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %240 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 4
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = shl i32 %242, 4
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %245 = load i32, i32* %244, align 8
  %246 = ashr i32 %245, 4
  %247 = or i32 %243, %246
  %248 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %249 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %248, i32 0, i32 4
  store i32 %247, i32* %249, align 8
  %250 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %251 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* @MCP4726, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %261

256:                                              ; preds = %237
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %258 = load i32, i32* %257, align 4
  %259 = ashr i32 %258, 3
  %260 = and i32 %259, 3
  store i32 %260, i32* %12, align 4
  br label %261

261:                                              ; preds = %256, %237
  %262 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %263 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* @MCP4726, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %291

268:                                              ; preds = %261
  %269 = load i32, i32* %12, align 4
  %270 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %271 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %269, %272
  br i1 %273, label %274, label %291

274:                                              ; preds = %268
  %275 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %276 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %275, i32 0, i32 0
  %277 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %278 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %12, align 4
  %281 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %282 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @dev_info(%struct.TYPE_10__* %276, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %279, i32 %280, i32 %283)
  %285 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %286 = call i32 @mcp4726_set_cfg(%struct.iio_dev* %285)
  store i32 %286, i32* %13, align 4
  %287 = load i32, i32* %13, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %274
  br label %298

290:                                              ; preds = %274
  br label %291

291:                                              ; preds = %290, %268, %261
  %292 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %293 = call i32 @iio_device_register(%struct.iio_dev* %292)
  store i32 %293, i32* %13, align 4
  %294 = load i32, i32* %13, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  br label %298

297:                                              ; preds = %291
  store i32 0, i32* %3, align 4
  br label %315

298:                                              ; preds = %296, %289, %217
  %299 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %300 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %299, i32 0, i32 6
  %301 = load i8*, i8** %300, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %303, label %308

303:                                              ; preds = %298
  %304 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %305 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %304, i32 0, i32 6
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 @regulator_disable(i8* %306)
  br label %308

308:                                              ; preds = %303, %298
  br label %309

309:                                              ; preds = %308, %177, %165
  %310 = load %struct.mcp4725_data*, %struct.mcp4725_data** %6, align 8
  %311 = getelementptr inbounds %struct.mcp4725_data, %struct.mcp4725_data* %310, i32 0, i32 5
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @regulator_disable(i8* %312)
  %314 = load i32, i32* %13, align 4
  store i32 %314, i32* %3, align 4
  br label %315

315:                                              ; preds = %309, %297, %147, %135, %96, %80, %62, %19
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.mcp4725_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_10__*) #1

declare dso_local %struct.mcp4725_platform_data* @dev_get_platdata(%struct.TYPE_10__*) #1

declare dso_local i32 @mcp4725_probe_dt(%struct.TYPE_10__*, %struct.mcp4725_platform_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i32, i32, i32) #1

declare dso_local i32 @mcp4726_set_cfg(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
