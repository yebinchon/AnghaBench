; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32, i32, i32 }
%struct.i2c_client = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.si2165_platform_data* }
%struct.si2165_platform_data = type { i64, i32, %struct.TYPE_10__**, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.si2165_state* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.si2165_state = type { i64, i64, i32, i32, %struct.TYPE_10__, %struct.i2c_client*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }
%struct.i2c_device_id = type { i32 }

@si2165_probe.regmap_config = internal constant %struct.regmap_config { i32 16, i32 8, i32 2303 }, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ref_freq of %d Hz not supported by this driver\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@si2165_ops = common dso_local global i32 0, align 4
@REG_CHIP_MODE = common dso_local global i32 0, align 4
@REG_CHIP_REVCODE = common dso_local global i32 0, align 4
@REV_CHIP_TYPE = common dso_local global i32 0, align 4
@SI2165_MODE_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Si2161\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Si2165\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Unsupported Silicon Labs chip (type %d, rev %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Detected Silicon Labs %s-%c (type %d, rev %d)\0A\00", align 1
@SYS_DVBT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c" DVB-T\00", align 1
@SYS_DVBC_ANNEX_A = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c" DVB-C\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @si2165_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2165_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.si2165_state*, align 8
  %7 = alloca %struct.si2165_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store %struct.si2165_state* null, %struct.si2165_state** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.si2165_platform_data*, %struct.si2165_platform_data** %15, align 8
  store %struct.si2165_platform_data* %16, %struct.si2165_platform_data** %7, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.si2165_state* @kzalloc(i32 96, i32 %17)
  store %struct.si2165_state* %18, %struct.si2165_state** %6, align 8
  %19 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %20 = icmp ne %struct.si2165_state* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %272

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %25, %struct.regmap_config* @si2165_probe.regmap_config)
  %27 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %28 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %30 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %36 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %9, align 4
  br label %272

39:                                               ; preds = %24
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %42 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %41, i32 0, i32 5
  store %struct.i2c_client* %40, %struct.i2c_client** %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %47 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 8
  %49 = load %struct.si2165_platform_data*, %struct.si2165_platform_data** %7, align 8
  %50 = getelementptr inbounds %struct.si2165_platform_data, %struct.si2165_platform_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %53 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  %55 = load %struct.si2165_platform_data*, %struct.si2165_platform_data** %7, align 8
  %56 = getelementptr inbounds %struct.si2165_platform_data, %struct.si2165_platform_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %59 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load %struct.si2165_platform_data*, %struct.si2165_platform_data** %7, align 8
  %62 = getelementptr inbounds %struct.si2165_platform_data, %struct.si2165_platform_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %65 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %68 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 4000000
  br i1 %71, label %78, label %72

72:                                               ; preds = %39
  %73 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %74 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 27000000
  br i1 %77, label %78, label %90

78:                                               ; preds = %72, %39
  %79 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %80 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %79, i32 0, i32 5
  %81 = load %struct.i2c_client*, %struct.i2c_client** %80, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %84 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @dev_err(%struct.TYPE_12__* %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %272

90:                                               ; preds = %72
  %91 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %92 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = call i32 @memcpy(%struct.TYPE_11__* %93, i32* @si2165_ops, i32 4)
  %95 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %96 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  store i32* null, i32** %98, align 8
  %99 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %100 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %101 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store %struct.si2165_state* %99, %struct.si2165_state** %102, align 8
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %105 = call i32 @i2c_set_clientdata(%struct.i2c_client* %103, %struct.si2165_state* %104)
  %106 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %107 = load i32, i32* @REG_CHIP_MODE, align 4
  %108 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %109 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @si2165_writereg8(%struct.si2165_state* %106, i32 %107, i64 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %90
  br label %269

116:                                              ; preds = %90
  %117 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %118 = load i32, i32* @REG_CHIP_MODE, align 4
  %119 = call i32 @si2165_readreg8(%struct.si2165_state* %117, i32 %118, i64* %10)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %269

123:                                              ; preds = %116
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %126 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %124, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %269

131:                                              ; preds = %123
  %132 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %133 = load i32, i32* @REG_CHIP_REVCODE, align 4
  %134 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %135 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %134, i32 0, i32 0
  %136 = call i32 @si2165_readreg8(%struct.si2165_state* %132, i32 %133, i64* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %269

140:                                              ; preds = %131
  %141 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %142 = load i32, i32* @REV_CHIP_TYPE, align 4
  %143 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %144 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %143, i32 0, i32 1
  %145 = call i32 @si2165_readreg8(%struct.si2165_state* %141, i32 %142, i64* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %269

149:                                              ; preds = %140
  %150 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %151 = load i32, i32* @REG_CHIP_MODE, align 4
  %152 = load i64, i64* @SI2165_MODE_OFF, align 8
  %153 = call i32 @si2165_writereg8(%struct.si2165_state* %150, i32 %151, i64 %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %269

157:                                              ; preds = %149
  %158 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %159 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %160, 26
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %164 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 65, %165
  %167 = trunc i64 %166 to i8
  store i8 %167, i8* %11, align 1
  br label %169

168:                                              ; preds = %157
  store i8 63, i8* %11, align 1
  br label %169

169:                                              ; preds = %168, %162
  %170 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %171 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  switch i64 %172, label %181 [
    i64 6, label %173
    i64 7, label %176
  ]

173:                                              ; preds = %169
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %174 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %175 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %174, i32 0, i32 2
  store i32 1, i32* %175, align 8
  br label %194

176:                                              ; preds = %169
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  %177 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %178 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %177, i32 0, i32 2
  store i32 1, i32* %178, align 8
  %179 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %180 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %179, i32 0, i32 3
  store i32 1, i32* %180, align 4
  br label %194

181:                                              ; preds = %169
  %182 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %183 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %182, i32 0, i32 5
  %184 = load %struct.i2c_client*, %struct.i2c_client** %183, align 8
  %185 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %184, i32 0, i32 0
  %186 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %187 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %191 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 (%struct.TYPE_12__*, i8*, i32, ...) @dev_err(%struct.TYPE_12__* %185, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %189, i64 %192)
  br label %269

194:                                              ; preds = %176, %173
  %195 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %196 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %195, i32 0, i32 5
  %197 = load %struct.i2c_client*, %struct.i2c_client** %196, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 0
  %199 = load i8*, i8** %12, align 8
  %200 = load i8, i8* %11, align 1
  %201 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %202 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %206 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i8
  %209 = call i32 @dev_info(%struct.TYPE_12__* %198, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %199, i8 signext %200, i32 %204, i8 signext %208)
  %210 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %211 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i8*, i8** %12, align 8
  %217 = call i32 @strlcat(i32 %215, i8* %216, i32 4)
  store i32 0, i32* %8, align 4
  %218 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %219 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %240

222:                                              ; preds = %194
  %223 = load i32, i32* @SYS_DVBT, align 4
  %224 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %225 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  store i32 %223, i32* %232, align 4
  %233 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %234 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %233, i32 0, i32 4
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @strlcat(i32 %238, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 4)
  br label %240

240:                                              ; preds = %222, %194
  %241 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %242 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %263

245:                                              ; preds = %240
  %246 = load i32, i32* @SYS_DVBC_ANNEX_A, align 4
  %247 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %248 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  store i32 %246, i32* %255, align 4
  %256 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %257 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @strlcat(i32 %261, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 4)
  br label %263

263:                                              ; preds = %245, %240
  %264 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %265 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %264, i32 0, i32 4
  %266 = load %struct.si2165_platform_data*, %struct.si2165_platform_data** %7, align 8
  %267 = getelementptr inbounds %struct.si2165_platform_data, %struct.si2165_platform_data* %266, i32 0, i32 2
  %268 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %267, align 8
  store %struct.TYPE_10__* %265, %struct.TYPE_10__** %268, align 8
  store i32 0, i32* %3, align 4
  br label %280

269:                                              ; preds = %181, %156, %148, %139, %130, %122, %115
  %270 = load i32, i32* @ENODEV, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %9, align 4
  br label %272

272:                                              ; preds = %269, %78, %34, %21
  %273 = load %struct.si2165_state*, %struct.si2165_state** %6, align 8
  %274 = call i32 @kfree(%struct.si2165_state* %273)
  %275 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %276 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %275, i32 0, i32 0
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @dev_dbg(%struct.TYPE_12__* %276, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* %9, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %272, %263
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

declare dso_local %struct.si2165_state* @kzalloc(i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, i32, ...) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.si2165_state*) #1

declare dso_local i32 @si2165_writereg8(%struct.si2165_state*, i32, i64) #1

declare dso_local i32 @si2165_readreg8(%struct.si2165_state*, i32, i64*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i8*, i8 signext, i32, i8 signext) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.si2165_state*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_12__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
