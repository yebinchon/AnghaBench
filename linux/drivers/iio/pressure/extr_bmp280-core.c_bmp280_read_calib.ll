; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_read_calib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_read_calib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmp280_data = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.bmp280_calib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@BMP280_COMP_TEMP_REG_COUNT = common dso_local global i32 0, align 4
@BMP280_COMP_PRESS_REG_COUNT = common dso_local global i32 0, align 4
@BMP280_REG_COMP_TEMP_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to read temperature calibration parameters\0A\00", align 1
@T1 = common dso_local global i64 0, align 8
@T2 = common dso_local global i64 0, align 8
@T3 = common dso_local global i64 0, align 8
@BMP280_REG_COMP_PRESS_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"failed to read pressure calibration parameters\0A\00", align 1
@P1 = common dso_local global i64 0, align 8
@P2 = common dso_local global i64 0, align 8
@P3 = common dso_local global i64 0, align 8
@P4 = common dso_local global i64 0, align 8
@P5 = common dso_local global i64 0, align 8
@P6 = common dso_local global i64 0, align 8
@P7 = common dso_local global i64 0, align 8
@P8 = common dso_local global i64 0, align 8
@P9 = common dso_local global i64 0, align 8
@BME280_CHIP_ID = common dso_local global i32 0, align 4
@BMP280_REG_COMP_H1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to read H1 comp value\0A\00", align 1
@BMP280_REG_COMP_H2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to read H2 comp value\0A\00", align 1
@BMP280_REG_COMP_H3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to read H3 comp value\0A\00", align 1
@BMP280_REG_COMP_H4 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to read H4 comp value\0A\00", align 1
@BMP280_REG_COMP_H5 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to read H5 comp value\0A\00", align 1
@BMP280_REG_COMP_H6 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to read H6 comp value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmp280_data*, %struct.bmp280_calib*, i32)* @bmp280_read_calib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_read_calib(%struct.bmp280_data* %0, %struct.bmp280_calib* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmp280_data*, align 8
  %6 = alloca %struct.bmp280_calib*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.bmp280_data* %0, %struct.bmp280_data** %5, align 8
  store %struct.bmp280_calib* %1, %struct.bmp280_calib** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %16 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %15, i32 0, i32 1
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %10, align 8
  %18 = load i32, i32* @BMP280_COMP_TEMP_REG_COUNT, align 4
  %19 = sdiv i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @BMP280_COMP_PRESS_REG_COUNT, align 4
  %24 = sdiv i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %27 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %28 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BMP280_REG_COMP_TEMP_START, align 4
  %31 = load i32, i32* @BMP280_COMP_TEMP_REG_COUNT, align 4
  %32 = call i32 @regmap_bulk_read(i32 %29, i32 %30, i32* %22, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %3
  %36 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %37 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %36, i32 0, i32 1
  %38 = load %struct.device*, %struct.device** %37, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %245

41:                                               ; preds = %3
  %42 = mul nuw i64 4, %20
  %43 = trunc i64 %42 to i32
  %44 = call i32 @add_device_randomness(i32* %22, i32 %43)
  %45 = load i64, i64* @T1, align 8
  %46 = getelementptr inbounds i32, i32* %22, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %50 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* @T2, align 8
  %52 = getelementptr inbounds i32, i32* %22, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %56 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* @T3, align 8
  %58 = getelementptr inbounds i32, i32* %22, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le16_to_cpu(i32 %59)
  %61 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %62 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %64 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @BMP280_REG_COMP_PRESS_START, align 4
  %67 = load i32, i32* @BMP280_COMP_PRESS_REG_COUNT, align 4
  %68 = call i32 @regmap_bulk_read(i32 %65, i32 %66, i32* %26, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %41
  %72 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %73 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %72, i32 0, i32 1
  %74 = load %struct.device*, %struct.device** %73, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %245

77:                                               ; preds = %41
  %78 = mul nuw i64 4, %25
  %79 = trunc i64 %78 to i32
  %80 = call i32 @add_device_randomness(i32* %26, i32 %79)
  %81 = load i64, i64* @P1, align 8
  %82 = getelementptr inbounds i32, i32* %26, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %86 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i64, i64* @P2, align 8
  %88 = getelementptr inbounds i32, i32* %26, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %92 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i64, i64* @P3, align 8
  %94 = getelementptr inbounds i32, i32* %26, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %98 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load i64, i64* @P4, align 8
  %100 = getelementptr inbounds i32, i32* %26, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le16_to_cpu(i32 %101)
  %103 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %104 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load i64, i64* @P5, align 8
  %106 = getelementptr inbounds i32, i32* %26, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  %109 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %110 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 4
  %111 = load i64, i64* @P6, align 8
  %112 = getelementptr inbounds i32, i32* %26, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  %115 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %116 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %115, i32 0, i32 8
  store i32 %114, i32* %116, align 8
  %117 = load i64, i64* @P7, align 8
  %118 = getelementptr inbounds i32, i32* %26, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @le16_to_cpu(i32 %119)
  %121 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %122 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  %123 = load i64, i64* @P8, align 8
  %124 = getelementptr inbounds i32, i32* %26, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @le16_to_cpu(i32 %125)
  %127 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %128 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 8
  %129 = load i64, i64* @P9, align 8
  %130 = getelementptr inbounds i32, i32* %26, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @le16_to_cpu(i32 %131)
  %133 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %134 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %133, i32 0, i32 11
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @BME280_CHIP_ID, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %77
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %245

139:                                              ; preds = %77
  %140 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %141 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @BMP280_REG_COMP_H1, align 4
  %144 = call i32 @regmap_read(i32 %142, i32 %143, i32* %9)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load %struct.device*, %struct.device** %10, align 8
  %149 = call i32 @dev_err(%struct.device* %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %245

151:                                              ; preds = %139
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %154 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %153, i32 0, i32 12
  store i32 %152, i32* %154, align 8
  %155 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %156 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @BMP280_REG_COMP_H2, align 4
  %159 = call i32 @regmap_bulk_read(i32 %157, i32 %158, i32* %9, i32 2)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %151
  %163 = load %struct.device*, %struct.device** %10, align 8
  %164 = call i32 @dev_err(%struct.device* %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %245

166:                                              ; preds = %151
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @le16_to_cpu(i32 %167)
  %169 = call i8* @sign_extend32(i32 %168, i32 15)
  %170 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %171 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %170, i32 0, i32 17
  store i8* %169, i8** %171, align 8
  %172 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %173 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @BMP280_REG_COMP_H3, align 4
  %176 = call i32 @regmap_read(i32 %174, i32 %175, i32* %9)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %166
  %180 = load %struct.device*, %struct.device** %10, align 8
  %181 = call i32 @dev_err(%struct.device* %180, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %245

183:                                              ; preds = %166
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %186 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %185, i32 0, i32 13
  store i32 %184, i32* %186, align 4
  %187 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %188 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @BMP280_REG_COMP_H4, align 4
  %191 = call i32 @regmap_bulk_read(i32 %189, i32 %190, i32* %9, i32 2)
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %183
  %195 = load %struct.device*, %struct.device** %10, align 8
  %196 = call i32 @dev_err(%struct.device* %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %245

198:                                              ; preds = %183
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @be16_to_cpu(i32 %199)
  %201 = ashr i32 %200, 4
  %202 = and i32 %201, 4080
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @be16_to_cpu(i32 %203)
  %205 = and i32 %204, 15
  %206 = or i32 %202, %205
  %207 = call i8* @sign_extend32(i32 %206, i32 11)
  %208 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %209 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %208, i32 0, i32 16
  store i8* %207, i8** %209, align 8
  %210 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %211 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @BMP280_REG_COMP_H5, align 4
  %214 = call i32 @regmap_bulk_read(i32 %212, i32 %213, i32* %9, i32 2)
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %198
  %218 = load %struct.device*, %struct.device** %10, align 8
  %219 = call i32 @dev_err(%struct.device* %218, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %220 = load i32, i32* %8, align 4
  store i32 %220, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %245

221:                                              ; preds = %198
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @le16_to_cpu(i32 %222)
  %224 = ashr i32 %223, 4
  %225 = and i32 %224, 4095
  %226 = call i8* @sign_extend32(i32 %225, i32 11)
  %227 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %228 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %227, i32 0, i32 15
  store i8* %226, i8** %228, align 8
  %229 = load %struct.bmp280_data*, %struct.bmp280_data** %5, align 8
  %230 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @BMP280_REG_COMP_H6, align 4
  %233 = call i32 @regmap_read(i32 %231, i32 %232, i32* %9)
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %221
  %237 = load %struct.device*, %struct.device** %10, align 8
  %238 = call i32 @dev_err(%struct.device* %237, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %245

240:                                              ; preds = %221
  %241 = load i32, i32* %9, align 4
  %242 = call i8* @sign_extend32(i32 %241, i32 7)
  %243 = load %struct.bmp280_calib*, %struct.bmp280_calib** %6, align 8
  %244 = getelementptr inbounds %struct.bmp280_calib, %struct.bmp280_calib* %243, i32 0, i32 14
  store i8* %242, i8** %244, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %245

245:                                              ; preds = %240, %236, %217, %194, %179, %162, %147, %138, %71, %35
  %246 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %246)
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @add_device_randomness(i32*, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

declare dso_local i8* @sign_extend32(i32, i32) #2

declare dso_local i32 @be16_to_cpu(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
