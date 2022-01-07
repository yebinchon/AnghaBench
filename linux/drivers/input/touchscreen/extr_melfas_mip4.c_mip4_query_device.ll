; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { i8**, i32, i8**, i32, i8**, i32, i8**, i32, i8**, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%union.i2c_smbus_data = type { i32 }

@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"nothing at this address\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MIP4_R0_INFO = common dso_local global i8* null, align 8
@MIP4_R1_INFO_PRODUCT_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to retrieve product name: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"product name: %.*s\0A\00", align 1
@MIP4_R1_INFO_PID = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed to retrieve product id: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"product id: %04X\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"melfas_mip4_%04X.fw\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"firmware name: %s\0A\00", align 1
@MIP4_R1_INFO_IC_NAME = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to retrieve IC name: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"IC name: %.*s\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Failed to retrieve FW version: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"F/W Version: %04X %04X %04X %04X\0A\00", align 1
@MIP4_R1_INFO_RESOLUTION_X = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [47 x i8] c"Failed to retrieve touchscreen parameters: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"max_x: %d, max_y: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"node_x: %d, node_y: %d, node_key: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"ppm_x: %d, ppm_y: %d\0A\00", align 1
@MIP4_R0_EVENT = common dso_local global i8* null, align 8
@MIP4_R1_EVENT_SUPPORTED_FUNC = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [36 x i8] c"Failed to retrieve device type: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"event_format: %d, event_size: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Unknown event format %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mip4_ts*)* @mip4_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip4_query_device(%struct.mip4_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mip4_ts*, align 8
  %4 = alloca %union.i2c_smbus_data, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8*], align 16
  %7 = alloca [14 x i8*], align 16
  store %struct.mip4_ts* %0, %struct.mip4_ts** %3, align 8
  %8 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %9 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %8, i32 0, i32 9
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %14 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %13, i32 0, i32 9
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_SMBUS_READ, align 4
  %19 = load i32, i32* @I2C_SMBUS_BYTE, align 4
  %20 = call i64 @i2c_smbus_xfer(i32 %12, i32 %17, i32 0, i32 %18, i32 0, i32 %19, %union.i2c_smbus_data* %4)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %24 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %23, i32 0, i32 9
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %330

30:                                               ; preds = %1
  %31 = load i8*, i8** @MIP4_R0_INFO, align 8
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8* %31, i8** %32, align 16
  %33 = load i8*, i8** @MIP4_R1_INFO_PRODUCT_NAME, align 8
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  store i8* %33, i8** %34, align 8
  %35 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %37 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %38 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = call i32 @mip4_i2c_xfer(%struct.mip4_ts* %35, i8** %36, i32 16, i8** %39, i32 8)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %30
  %44 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %45 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %44, i32 0, i32 9
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_warn(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %59

50:                                               ; preds = %30
  %51 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %52 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %51, i32 0, i32 9
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %56 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 8, i8** %57)
  br label %59

59:                                               ; preds = %50, %43
  %60 = load i8*, i8** @MIP4_R0_INFO, align 8
  %61 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8* %60, i8** %61, align 16
  %62 = load i8*, i8** @MIP4_R1_INFO_PID, align 8
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  store i8* %62, i8** %63, align 8
  %64 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %65 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %66 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 0
  %67 = call i32 @mip4_i2c_xfer(%struct.mip4_ts* %64, i8** %65, i32 16, i8** %66, i32 2)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %72 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %71, i32 0, i32 9
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @dev_warn(i32* %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %91

77:                                               ; preds = %59
  %78 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 0
  %79 = call i8* @get_unaligned_le16(i8** %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %82 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %84 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %83, i32 0, i32 9
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %88 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %77, %70
  %92 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %93 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %92, i32 0, i32 15
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %96 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @snprintf(i32 %94, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %100 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %99, i32 0, i32 9
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %104 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %103, i32 0, i32 15
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load i8*, i8** @MIP4_R0_INFO, align 8
  %108 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8* %107, i8** %108, align 16
  %109 = load i8*, i8** @MIP4_R1_INFO_IC_NAME, align 8
  %110 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  store i8* %109, i8** %110, align 8
  %111 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %112 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %113 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %114 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %113, i32 0, i32 2
  %115 = load i8**, i8*** %114, align 8
  %116 = call i32 @mip4_i2c_xfer(%struct.mip4_ts* %111, i8** %112, i32 16, i8** %115, i32 8)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %91
  %120 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %121 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %120, i32 0, i32 9
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @dev_warn(i32* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %124)
  br label %135

126:                                              ; preds = %91
  %127 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %128 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %127, i32 0, i32 9
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %132 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %131, i32 0, i32 2
  %133 = load i8**, i8*** %132, align 8
  %134 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 8, i8** %133)
  br label %135

135:                                              ; preds = %126, %119
  %136 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %137 = call i32 @mip4_get_fw_version(%struct.mip4_ts* %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %142 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %141, i32 0, i32 9
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @dev_warn(i32* %144, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %145)
  br label %169

147:                                              ; preds = %135
  %148 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %149 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %148, i32 0, i32 9
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %153 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %152, i32 0, i32 14
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %157 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %156, i32 0, i32 14
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %161 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %160, i32 0, i32 14
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %165 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %164, i32 0, i32 14
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %155, i32 %159, i32 %163, i32 %167)
  br label %169

169:                                              ; preds = %147, %140
  %170 = load i8*, i8** @MIP4_R0_INFO, align 8
  %171 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8* %170, i8** %171, align 16
  %172 = load i8*, i8** @MIP4_R1_INFO_RESOLUTION_X, align 8
  %173 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  store i8* %172, i8** %173, align 8
  %174 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %175 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %176 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 0
  %177 = call i32 @mip4_i2c_xfer(%struct.mip4_ts* %174, i8** %175, i32 16, i8** %176, i32 14)
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %169
  %181 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %182 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %181, i32 0, i32 9
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @dev_warn(i32* %184, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %185)
  br label %268

187:                                              ; preds = %169
  %188 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 0
  %189 = call i8* @get_unaligned_le16(i8** %188)
  %190 = ptrtoint i8* %189 to i32
  %191 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %192 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 8
  %193 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 2
  %194 = call i8* @get_unaligned_le16(i8** %193)
  %195 = bitcast i8* %194 to i8**
  %196 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %197 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %196, i32 0, i32 4
  store i8** %195, i8*** %197, align 8
  %198 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %199 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %198, i32 0, i32 9
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %203 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %206 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %205, i32 0, i32 4
  %207 = load i8**, i8*** %206, align 8
  %208 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %204, i8** %207)
  %209 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 4
  %210 = load i8*, i8** %209, align 16
  %211 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %212 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %211, i32 0, i32 13
  store i8* %210, i8** %212, align 8
  %213 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 5
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %216 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %215, i32 0, i32 12
  store i8* %214, i8** %216, align 8
  %217 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 6
  %218 = load i8*, i8** %217, align 16
  %219 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %220 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %219, i32 0, i32 10
  store i8* %218, i8** %220, align 8
  %221 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %222 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %221, i32 0, i32 9
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %226 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %225, i32 0, i32 13
  %227 = load i8*, i8** %226, align 8
  %228 = ptrtoint i8* %227 to i32
  %229 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %230 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %229, i32 0, i32 12
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %233 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %232, i32 0, i32 10
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %224, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %228, i8* %231, i8* %234)
  %236 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 12
  %237 = load i8*, i8** %236, align 16
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %240 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 8
  %241 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 13
  %242 = load i8*, i8** %241, align 8
  %243 = bitcast i8* %242 to i8**
  %244 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %245 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %244, i32 0, i32 6
  store i8** %243, i8*** %245, align 8
  %246 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %247 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %246, i32 0, i32 9
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %251 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %254 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %253, i32 0, i32 6
  %255 = load i8**, i8*** %254, align 8
  %256 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %249, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %252, i8** %255)
  %257 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %258 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %257, i32 0, i32 10
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ugt i8* %259, null
  br i1 %260, label %261, label %267

261:                                              ; preds = %187
  %262 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %263 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %262, i32 0, i32 10
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %266 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %265, i32 0, i32 11
  store i8* %264, i8** %266, align 8
  br label %267

267:                                              ; preds = %261, %187
  br label %268

268:                                              ; preds = %267, %180
  %269 = load i8*, i8** @MIP4_R0_EVENT, align 8
  %270 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  store i8* %269, i8** %270, align 16
  %271 = load i8*, i8** @MIP4_R1_EVENT_SUPPORTED_FUNC, align 8
  %272 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  store i8* %271, i8** %272, align 8
  %273 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %274 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %275 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 0
  %276 = call i32 @mip4_i2c_xfer(%struct.mip4_ts* %273, i8** %274, i32 16, i8** %275, i32 7)
  store i32 %276, i32* %5, align 4
  %277 = load i32, i32* %5, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %268
  %280 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %281 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %280, i32 0, i32 9
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i32, i32* %5, align 4
  %285 = call i32 @dev_warn(i32* %283, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %284)
  %286 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %287 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %286, i32 0, i32 7
  store i32 255, i32* %287, align 8
  br label %329

288:                                              ; preds = %268
  %289 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 4
  %290 = call i8* @get_unaligned_le16(i8** %289)
  %291 = ptrtoint i8* %290 to i32
  %292 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %293 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %292, i32 0, i32 7
  store i32 %291, i32* %293, align 8
  %294 = getelementptr inbounds [14 x i8*], [14 x i8*]* %7, i64 0, i64 6
  %295 = load i8*, i8** %294, align 16
  %296 = bitcast i8* %295 to i8**
  %297 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %298 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %297, i32 0, i32 8
  store i8** %296, i8*** %298, align 8
  %299 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %300 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %299, i32 0, i32 9
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %304 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %303, i32 0, i32 7
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %307 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %306, i32 0, i32 8
  %308 = load i8**, i8*** %307, align 8
  %309 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %302, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 %305, i8** %308)
  %310 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %311 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 8
  %313 = icmp eq i32 %312, 2
  br i1 %313, label %319, label %314

314:                                              ; preds = %288
  %315 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %316 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %315, i32 0, i32 7
  %317 = load i32, i32* %316, align 8
  %318 = icmp sgt i32 %317, 3
  br i1 %318, label %319, label %328

319:                                              ; preds = %314, %288
  %320 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %321 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %320, i32 0, i32 9
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = load %struct.mip4_ts*, %struct.mip4_ts** %3, align 8
  %325 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %324, i32 0, i32 7
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @dev_warn(i32* %323, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %326)
  br label %328

328:                                              ; preds = %319, %314
  br label %329

329:                                              ; preds = %328, %279
  store i32 0, i32* %2, align 4
  br label %330

330:                                              ; preds = %329, %22
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local i64 @i2c_smbus_xfer(i32, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mip4_i2c_xfer(%struct.mip4_ts*, i8**, i32, i8**, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i8* @get_unaligned_le16(i8**) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @mip4_get_fw_version(%struct.mip4_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
