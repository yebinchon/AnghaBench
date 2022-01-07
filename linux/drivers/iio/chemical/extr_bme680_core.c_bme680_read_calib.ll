; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_bme680_core.c_bme680_read_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bme680_data = type { i32 }
%struct.bme680_calib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.device = type { i32 }

@BME680_T1_LSB_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to read BME680_T1_LSB_REG\0A\00", align 1
@BME680_T2_LSB_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to read BME680_T2_LSB_REG\0A\00", align 1
@BME680_T3_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to read BME680_T3_REG\0A\00", align 1
@BME680_P1_LSB_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to read BME680_P1_LSB_REG\0A\00", align 1
@BME680_P2_LSB_REG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to read BME680_P2_LSB_REG\0A\00", align 1
@BME680_P3_REG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to read BME680_P3_REG\0A\00", align 1
@BME680_P4_LSB_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to read BME680_P4_LSB_REG\0A\00", align 1
@BME680_P5_LSB_REG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to read BME680_P5_LSB_REG\0A\00", align 1
@BME680_P6_REG = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to read BME680_P6_REG\0A\00", align 1
@BME680_P7_REG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"failed to read BME680_P7_REG\0A\00", align 1
@BME680_P8_LSB_REG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to read BME680_P8_LSB_REG\0A\00", align 1
@BME680_P9_LSB_REG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"failed to read BME680_P9_LSB_REG\0A\00", align 1
@BME680_P10_REG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"failed to read BME680_P10_REG\0A\00", align 1
@BME680_H1_MSB_REG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"failed to read BME680_H1_MSB_REG\0A\00", align 1
@BME680_H1_LSB_REG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"failed to read BME680_H1_LSB_REG\0A\00", align 1
@BME680_HUM_REG_SHIFT_VAL = common dso_local global i32 0, align 4
@BME680_BIT_H1_DATA_MASK = common dso_local global i32 0, align 4
@BME680_H2_MSB_REG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"failed to read BME680_H2_MSB_REG\0A\00", align 1
@BME680_H2_LSB_REG = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"failed to read BME680_H2_LSB_REG\0A\00", align 1
@BME680_H3_REG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"failed to read BME680_H3_REG\0A\00", align 1
@BME680_H4_REG = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"failed to read BME680_H4_REG\0A\00", align 1
@BME680_H5_REG = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [30 x i8] c"failed to read BME680_H5_REG\0A\00", align 1
@BME680_H6_REG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [30 x i8] c"failed to read BME680_H6_REG\0A\00", align 1
@BME680_H7_REG = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"failed to read BME680_H7_REG\0A\00", align 1
@BME680_GH1_REG = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [31 x i8] c"failed to read BME680_GH1_REG\0A\00", align 1
@BME680_GH2_LSB_REG = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [35 x i8] c"failed to read BME680_GH2_LSB_REG\0A\00", align 1
@BME680_GH3_REG = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [31 x i8] c"failed to read BME680_GH3_REG\0A\00", align 1
@BME680_REG_RES_HEAT_RANGE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [38 x i8] c"failed to read resistance heat range\0A\00", align 1
@BME680_RHRANGE_MASK = common dso_local global i32 0, align 4
@BME680_REG_RES_HEAT_VAL = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [38 x i8] c"failed to read resistance heat value\0A\00", align 1
@BME680_REG_RANGE_SW_ERR = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [37 x i8] c"failed to read range software error\0A\00", align 1
@BME680_RSERROR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bme680_data*, %struct.bme680_calib*)* @bme680_read_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bme680_read_calib(%struct.bme680_data* %0, %struct.bme680_calib* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bme680_data*, align 8
  %5 = alloca %struct.bme680_calib*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bme680_data* %0, %struct.bme680_data** %4, align 8
  store %struct.bme680_calib* %1, %struct.bme680_calib** %5, align 8
  %12 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %13 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device* @regmap_get_device(i32 %14)
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %17 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BME680_T1_LSB_REG, align 4
  %20 = call i32 @regmap_bulk_read(i32 %18, i32 %19, i32* %11, i32 2)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  br label %455

27:                                               ; preds = %2
  %28 = load i32, i32* %11, align 4
  %29 = call i8* @le16_to_cpu(i32 %28)
  %30 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %31 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %30, i32 0, i32 25
  store i8* %29, i8** %31, align 8
  %32 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %33 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BME680_T2_LSB_REG, align 4
  %36 = call i32 @regmap_bulk_read(i32 %34, i32 %35, i32* %11, i32 2)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %455

43:                                               ; preds = %27
  %44 = load i32, i32* %11, align 4
  %45 = call i8* @le16_to_cpu(i32 %44)
  %46 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %47 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %46, i32 0, i32 24
  store i8* %45, i8** %47, align 8
  %48 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %49 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BME680_T3_REG, align 4
  %52 = call i32 @regmap_read(i32 %50, i32 %51, i32* %7)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i32 @dev_err(%struct.device* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %455

59:                                               ; preds = %43
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %62 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %64 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BME680_P1_LSB_REG, align 4
  %67 = call i32 @regmap_bulk_read(i32 %65, i32 %66, i32* %11, i32 2)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %59
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %455

74:                                               ; preds = %59
  %75 = load i32, i32* %11, align 4
  %76 = call i8* @le16_to_cpu(i32 %75)
  %77 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %78 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %77, i32 0, i32 23
  store i8* %76, i8** %78, align 8
  %79 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %80 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @BME680_P2_LSB_REG, align 4
  %83 = call i32 @regmap_bulk_read(i32 %81, i32 %82, i32* %11, i32 2)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %3, align 4
  br label %455

90:                                               ; preds = %74
  %91 = load i32, i32* %11, align 4
  %92 = call i8* @le16_to_cpu(i32 %91)
  %93 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %94 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %93, i32 0, i32 22
  store i8* %92, i8** %94, align 8
  %95 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %96 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BME680_P3_REG, align 4
  %99 = call i32 @regmap_read(i32 %97, i32 %98, i32* %7)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %90
  %103 = load %struct.device*, %struct.device** %6, align 8
  %104 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %455

106:                                              ; preds = %90
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %109 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %111 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @BME680_P4_LSB_REG, align 4
  %114 = call i32 @regmap_bulk_read(i32 %112, i32 %113, i32* %11, i32 2)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %455

121:                                              ; preds = %106
  %122 = load i32, i32* %11, align 4
  %123 = call i8* @le16_to_cpu(i32 %122)
  %124 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %125 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %124, i32 0, i32 21
  store i8* %123, i8** %125, align 8
  %126 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %127 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @BME680_P5_LSB_REG, align 4
  %130 = call i32 @regmap_bulk_read(i32 %128, i32 %129, i32* %11, i32 2)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = call i32 @dev_err(%struct.device* %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %3, align 4
  br label %455

137:                                              ; preds = %121
  %138 = load i32, i32* %11, align 4
  %139 = call i8* @le16_to_cpu(i32 %138)
  %140 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %141 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %140, i32 0, i32 20
  store i8* %139, i8** %141, align 8
  %142 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %143 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BME680_P6_REG, align 4
  %146 = call i32 @regmap_read(i32 %144, i32 %145, i32* %7)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %137
  %150 = load %struct.device*, %struct.device** %6, align 8
  %151 = call i32 @dev_err(%struct.device* %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %455

153:                                              ; preds = %137
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %156 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %158 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @BME680_P7_REG, align 4
  %161 = call i32 @regmap_read(i32 %159, i32 %160, i32* %7)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %153
  %165 = load %struct.device*, %struct.device** %6, align 8
  %166 = call i32 @dev_err(%struct.device* %165, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %3, align 4
  br label %455

168:                                              ; preds = %153
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %171 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %173 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @BME680_P8_LSB_REG, align 4
  %176 = call i32 @regmap_bulk_read(i32 %174, i32 %175, i32* %11, i32 2)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %168
  %180 = load %struct.device*, %struct.device** %6, align 8
  %181 = call i32 @dev_err(%struct.device* %180, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %182 = load i32, i32* %10, align 4
  store i32 %182, i32* %3, align 4
  br label %455

183:                                              ; preds = %168
  %184 = load i32, i32* %11, align 4
  %185 = call i8* @le16_to_cpu(i32 %184)
  %186 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %187 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %186, i32 0, i32 19
  store i8* %185, i8** %187, align 8
  %188 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %189 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @BME680_P9_LSB_REG, align 4
  %192 = call i32 @regmap_bulk_read(i32 %190, i32 %191, i32* %11, i32 2)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %183
  %196 = load %struct.device*, %struct.device** %6, align 8
  %197 = call i32 @dev_err(%struct.device* %196, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %3, align 4
  br label %455

199:                                              ; preds = %183
  %200 = load i32, i32* %11, align 4
  %201 = call i8* @le16_to_cpu(i32 %200)
  %202 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %203 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %202, i32 0, i32 18
  store i8* %201, i8** %203, align 8
  %204 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %205 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @BME680_P10_REG, align 4
  %208 = call i32 @regmap_read(i32 %206, i32 %207, i32* %7)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %199
  %212 = load %struct.device*, %struct.device** %6, align 8
  %213 = call i32 @dev_err(%struct.device* %212, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %3, align 4
  br label %455

215:                                              ; preds = %199
  %216 = load i32, i32* %7, align 4
  %217 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %218 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 8
  %219 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %220 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @BME680_H1_MSB_REG, align 4
  %223 = call i32 @regmap_read(i32 %221, i32 %222, i32* %8)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %215
  %227 = load %struct.device*, %struct.device** %6, align 8
  %228 = call i32 @dev_err(%struct.device* %227, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %229 = load i32, i32* %10, align 4
  store i32 %229, i32* %3, align 4
  br label %455

230:                                              ; preds = %215
  %231 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %232 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @BME680_H1_LSB_REG, align 4
  %235 = call i32 @regmap_read(i32 %233, i32 %234, i32* %9)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %230
  %239 = load %struct.device*, %struct.device** %6, align 8
  %240 = call i32 @dev_err(%struct.device* %239, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %241 = load i32, i32* %10, align 4
  store i32 %241, i32* %3, align 4
  br label %455

242:                                              ; preds = %230
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* @BME680_HUM_REG_SHIFT_VAL, align 4
  %245 = shl i32 %243, %244
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @BME680_BIT_H1_DATA_MASK, align 4
  %248 = and i32 %246, %247
  %249 = or i32 %245, %248
  %250 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %251 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %250, i32 0, i32 5
  store i32 %249, i32* %251, align 4
  %252 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %253 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @BME680_H2_MSB_REG, align 4
  %256 = call i32 @regmap_read(i32 %254, i32 %255, i32* %8)
  store i32 %256, i32* %10, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %242
  %260 = load %struct.device*, %struct.device** %6, align 8
  %261 = call i32 @dev_err(%struct.device* %260, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  %262 = load i32, i32* %10, align 4
  store i32 %262, i32* %3, align 4
  br label %455

263:                                              ; preds = %242
  %264 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %265 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @BME680_H2_LSB_REG, align 4
  %268 = call i32 @regmap_read(i32 %266, i32 %267, i32* %9)
  store i32 %268, i32* %10, align 4
  %269 = load i32, i32* %10, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %263
  %272 = load %struct.device*, %struct.device** %6, align 8
  %273 = call i32 @dev_err(%struct.device* %272, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %274 = load i32, i32* %10, align 4
  store i32 %274, i32* %3, align 4
  br label %455

275:                                              ; preds = %263
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* @BME680_HUM_REG_SHIFT_VAL, align 4
  %278 = shl i32 %276, %277
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @BME680_HUM_REG_SHIFT_VAL, align 4
  %281 = lshr i32 %279, %280
  %282 = or i32 %278, %281
  %283 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %284 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %283, i32 0, i32 6
  store i32 %282, i32* %284, align 8
  %285 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %286 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @BME680_H3_REG, align 4
  %289 = call i32 @regmap_read(i32 %287, i32 %288, i32* %7)
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %10, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %275
  %293 = load %struct.device*, %struct.device** %6, align 8
  %294 = call i32 @dev_err(%struct.device* %293, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %295 = load i32, i32* %10, align 4
  store i32 %295, i32* %3, align 4
  br label %455

296:                                              ; preds = %275
  %297 = load i32, i32* %7, align 4
  %298 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %299 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %298, i32 0, i32 7
  store i32 %297, i32* %299, align 4
  %300 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %301 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @BME680_H4_REG, align 4
  %304 = call i32 @regmap_read(i32 %302, i32 %303, i32* %7)
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %10, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %311

307:                                              ; preds = %296
  %308 = load %struct.device*, %struct.device** %6, align 8
  %309 = call i32 @dev_err(%struct.device* %308, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %310 = load i32, i32* %10, align 4
  store i32 %310, i32* %3, align 4
  br label %455

311:                                              ; preds = %296
  %312 = load i32, i32* %7, align 4
  %313 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %314 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %313, i32 0, i32 8
  store i32 %312, i32* %314, align 8
  %315 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %316 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @BME680_H5_REG, align 4
  %319 = call i32 @regmap_read(i32 %317, i32 %318, i32* %7)
  store i32 %319, i32* %10, align 4
  %320 = load i32, i32* %10, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %311
  %323 = load %struct.device*, %struct.device** %6, align 8
  %324 = call i32 @dev_err(%struct.device* %323, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0))
  %325 = load i32, i32* %10, align 4
  store i32 %325, i32* %3, align 4
  br label %455

326:                                              ; preds = %311
  %327 = load i32, i32* %7, align 4
  %328 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %329 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %328, i32 0, i32 9
  store i32 %327, i32* %329, align 4
  %330 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %331 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @BME680_H6_REG, align 4
  %334 = call i32 @regmap_read(i32 %332, i32 %333, i32* %7)
  store i32 %334, i32* %10, align 4
  %335 = load i32, i32* %10, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %326
  %338 = load %struct.device*, %struct.device** %6, align 8
  %339 = call i32 @dev_err(%struct.device* %338, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  %340 = load i32, i32* %10, align 4
  store i32 %340, i32* %3, align 4
  br label %455

341:                                              ; preds = %326
  %342 = load i32, i32* %7, align 4
  %343 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %344 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %343, i32 0, i32 10
  store i32 %342, i32* %344, align 8
  %345 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %346 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @BME680_H7_REG, align 4
  %349 = call i32 @regmap_read(i32 %347, i32 %348, i32* %7)
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* %10, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %341
  %353 = load %struct.device*, %struct.device** %6, align 8
  %354 = call i32 @dev_err(%struct.device* %353, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %355 = load i32, i32* %10, align 4
  store i32 %355, i32* %3, align 4
  br label %455

356:                                              ; preds = %341
  %357 = load i32, i32* %7, align 4
  %358 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %359 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %358, i32 0, i32 11
  store i32 %357, i32* %359, align 4
  %360 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %361 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @BME680_GH1_REG, align 4
  %364 = call i32 @regmap_read(i32 %362, i32 %363, i32* %7)
  store i32 %364, i32* %10, align 4
  %365 = load i32, i32* %10, align 4
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %356
  %368 = load %struct.device*, %struct.device** %6, align 8
  %369 = call i32 @dev_err(%struct.device* %368, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %370 = load i32, i32* %10, align 4
  store i32 %370, i32* %3, align 4
  br label %455

371:                                              ; preds = %356
  %372 = load i32, i32* %7, align 4
  %373 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %374 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %373, i32 0, i32 12
  store i32 %372, i32* %374, align 8
  %375 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %376 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @BME680_GH2_LSB_REG, align 4
  %379 = call i32 @regmap_bulk_read(i32 %377, i32 %378, i32* %11, i32 2)
  store i32 %379, i32* %10, align 4
  %380 = load i32, i32* %10, align 4
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %371
  %383 = load %struct.device*, %struct.device** %6, align 8
  %384 = call i32 @dev_err(%struct.device* %383, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0))
  %385 = load i32, i32* %10, align 4
  store i32 %385, i32* %3, align 4
  br label %455

386:                                              ; preds = %371
  %387 = load i32, i32* %11, align 4
  %388 = call i8* @le16_to_cpu(i32 %387)
  %389 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %390 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %389, i32 0, i32 17
  store i8* %388, i8** %390, align 8
  %391 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %392 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* @BME680_GH3_REG, align 4
  %395 = call i32 @regmap_read(i32 %393, i32 %394, i32* %7)
  store i32 %395, i32* %10, align 4
  %396 = load i32, i32* %10, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %386
  %399 = load %struct.device*, %struct.device** %6, align 8
  %400 = call i32 @dev_err(%struct.device* %399, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0))
  %401 = load i32, i32* %10, align 4
  store i32 %401, i32* %3, align 4
  br label %455

402:                                              ; preds = %386
  %403 = load i32, i32* %7, align 4
  %404 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %405 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %404, i32 0, i32 13
  store i32 %403, i32* %405, align 4
  %406 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %407 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @BME680_REG_RES_HEAT_RANGE, align 4
  %410 = call i32 @regmap_read(i32 %408, i32 %409, i32* %7)
  store i32 %410, i32* %10, align 4
  %411 = load i32, i32* %10, align 4
  %412 = icmp slt i32 %411, 0
  br i1 %412, label %413, label %417

413:                                              ; preds = %402
  %414 = load %struct.device*, %struct.device** %6, align 8
  %415 = call i32 @dev_err(%struct.device* %414, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0))
  %416 = load i32, i32* %10, align 4
  store i32 %416, i32* %3, align 4
  br label %455

417:                                              ; preds = %402
  %418 = load i32, i32* @BME680_RHRANGE_MASK, align 4
  %419 = load i32, i32* %7, align 4
  %420 = call i8* @FIELD_GET(i32 %418, i32 %419)
  %421 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %422 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %421, i32 0, i32 16
  store i8* %420, i8** %422, align 8
  %423 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %424 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @BME680_REG_RES_HEAT_VAL, align 4
  %427 = call i32 @regmap_read(i32 %425, i32 %426, i32* %7)
  store i32 %427, i32* %10, align 4
  %428 = load i32, i32* %10, align 4
  %429 = icmp slt i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %417
  %431 = load %struct.device*, %struct.device** %6, align 8
  %432 = call i32 @dev_err(%struct.device* %431, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0))
  %433 = load i32, i32* %10, align 4
  store i32 %433, i32* %3, align 4
  br label %455

434:                                              ; preds = %417
  %435 = load i32, i32* %7, align 4
  %436 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %437 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %436, i32 0, i32 14
  store i32 %435, i32* %437, align 8
  %438 = load %struct.bme680_data*, %struct.bme680_data** %4, align 8
  %439 = getelementptr inbounds %struct.bme680_data, %struct.bme680_data* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @BME680_REG_RANGE_SW_ERR, align 4
  %442 = call i32 @regmap_read(i32 %440, i32 %441, i32* %7)
  store i32 %442, i32* %10, align 4
  %443 = load i32, i32* %10, align 4
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %434
  %446 = load %struct.device*, %struct.device** %6, align 8
  %447 = call i32 @dev_err(%struct.device* %446, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0))
  %448 = load i32, i32* %10, align 4
  store i32 %448, i32* %3, align 4
  br label %455

449:                                              ; preds = %434
  %450 = load i32, i32* @BME680_RSERROR_MASK, align 4
  %451 = load i32, i32* %7, align 4
  %452 = call i8* @FIELD_GET(i32 %450, i32 %451)
  %453 = load %struct.bme680_calib*, %struct.bme680_calib** %5, align 8
  %454 = getelementptr inbounds %struct.bme680_calib, %struct.bme680_calib* %453, i32 0, i32 15
  store i8* %452, i8** %454, align 8
  store i32 0, i32* %3, align 4
  br label %455

455:                                              ; preds = %449, %445, %430, %413, %398, %382, %367, %352, %337, %322, %307, %292, %271, %259, %238, %226, %211, %195, %179, %164, %149, %133, %117, %102, %86, %70, %55, %39, %23
  %456 = load i32, i32* %3, align 4
  ret i32 %456
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
