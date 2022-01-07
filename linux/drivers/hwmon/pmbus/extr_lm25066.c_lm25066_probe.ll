; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_lm25066.c_lm25066_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_lm25066.c_lm25066_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__coeff = type { i32, i32, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i64 }
%struct.lm25066_data = type { i64, i32, %struct.pmbus_driver_info }
%struct.pmbus_driver_info = type { i32, i32*, i32*, i32*, i32*, i32, i32, i32, i8** }

@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LM25066_DEVICE_SETUP = common dso_local global i32 0, align 4
@direct = common dso_local global i8* null, align 8
@PSC_VOLTAGE_IN = common dso_local global i64 0, align 8
@PSC_VOLTAGE_OUT = common dso_local global i64 0, align 8
@PSC_CURRENT_IN = common dso_local global i64 0, align 8
@PSC_TEMPERATURE = common dso_local global i64 0, align 8
@PSC_POWER = common dso_local global i64 0, align 8
@PMBUS_HAVE_VIN = common dso_local global i32 0, align 4
@PMBUS_HAVE_VMON = common dso_local global i32 0, align 4
@PMBUS_HAVE_PIN = common dso_local global i32 0, align 4
@PMBUS_HAVE_IIN = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_INPUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_TEMP = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_TEMP = common dso_local global i32 0, align 4
@PMBUS_HAVE_SAMPLES = common dso_local global i32 0, align 4
@lm25056 = common dso_local global i64 0, align 8
@PMBUS_HAVE_STATUS_VMON = common dso_local global i32 0, align 4
@lm25056_read_word_data = common dso_local global i32 0, align 4
@lm25056_read_byte_data = common dso_local global i32 0, align 4
@PMBUS_HAVE_VOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_VOUT = common dso_local global i32 0, align 4
@lm25066_read_word_data = common dso_local global i32 0, align 4
@lm25066_write_word_data = common dso_local global i32 0, align 4
@lm25066_coeff = common dso_local global %struct.__coeff** null, align 8
@LM25066_DEV_SETUP_CL = common dso_local global i32 0, align 4
@PSC_CURRENT_IN_L = common dso_local global i64 0, align 8
@PSC_POWER_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm25066_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm25066_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lm25066_data*, align 8
  %8 = alloca %struct.pmbus_driver_info*, align 8
  %9 = alloca %struct.__coeff*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %14 = call i32 @i2c_check_functionality(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %344

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.lm25066_data* @devm_kzalloc(i32* %21, i32 80, i32 %22)
  store %struct.lm25066_data* %23, %struct.lm25066_data** %7, align 8
  %24 = load %struct.lm25066_data*, %struct.lm25066_data** %7, align 8
  %25 = icmp ne %struct.lm25066_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %344

29:                                               ; preds = %19
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* @LM25066_DEVICE_SETUP, align 4
  %32 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %344

37:                                               ; preds = %29
  %38 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.lm25066_data*, %struct.lm25066_data** %7, align 8
  %42 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.lm25066_data*, %struct.lm25066_data** %7, align 8
  %44 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %43, i32 0, i32 2
  store %struct.pmbus_driver_info* %44, %struct.pmbus_driver_info** %8, align 8
  %45 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %46 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i8*, i8** @direct, align 8
  %48 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %49 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %48, i32 0, i32 8
  %50 = load i8**, i8*** %49, align 8
  %51 = load i64, i64* @PSC_VOLTAGE_IN, align 8
  %52 = getelementptr inbounds i8*, i8** %50, i64 %51
  store i8* %47, i8** %52, align 8
  %53 = load i8*, i8** @direct, align 8
  %54 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %55 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %54, i32 0, i32 8
  %56 = load i8**, i8*** %55, align 8
  %57 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  store i8* %53, i8** %58, align 8
  %59 = load i8*, i8** @direct, align 8
  %60 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %61 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %60, i32 0, i32 8
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* @PSC_CURRENT_IN, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load i8*, i8** @direct, align 8
  %66 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %67 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %66, i32 0, i32 8
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* @PSC_TEMPERATURE, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  store i8* %65, i8** %70, align 8
  %71 = load i8*, i8** @direct, align 8
  %72 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %73 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %72, i32 0, i32 8
  %74 = load i8**, i8*** %73, align 8
  %75 = load i64, i64* @PSC_POWER, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  store i8* %71, i8** %76, align 8
  %77 = load i32, i32* @PMBUS_HAVE_VIN, align 4
  %78 = load i32, i32* @PMBUS_HAVE_VMON, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PMBUS_HAVE_PIN, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PMBUS_HAVE_IIN, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PMBUS_HAVE_STATUS_INPUT, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @PMBUS_HAVE_TEMP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @PMBUS_HAVE_STATUS_TEMP, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PMBUS_HAVE_SAMPLES, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %93 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.lm25066_data*, %struct.lm25066_data** %7, align 8
  %97 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @lm25056, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %37
  %102 = load i32, i32* @PMBUS_HAVE_STATUS_VMON, align 4
  %103 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %104 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @lm25056_read_word_data, align 4
  %110 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %111 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @lm25056_read_byte_data, align 4
  %113 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %114 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %113, i32 0, i32 7
  store i32 %112, i32* %114, align 8
  %115 = load %struct.lm25066_data*, %struct.lm25066_data** %7, align 8
  %116 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %115, i32 0, i32 1
  store i32 4095, i32* %116, align 8
  br label %132

117:                                              ; preds = %37
  %118 = load i32, i32* @PMBUS_HAVE_VOUT, align 4
  %119 = load i32, i32* @PMBUS_HAVE_STATUS_VOUT, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %122 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %120
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* @lm25066_read_word_data, align 4
  %128 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %129 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.lm25066_data*, %struct.lm25066_data** %7, align 8
  %131 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %130, i32 0, i32 1
  store i32 4095, i32* %131, align 8
  br label %132

132:                                              ; preds = %117, %101
  %133 = load i32, i32* @lm25066_write_word_data, align 4
  %134 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %135 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 8
  %136 = load %struct.__coeff**, %struct.__coeff*** @lm25066_coeff, align 8
  %137 = load %struct.lm25066_data*, %struct.lm25066_data** %7, align 8
  %138 = getelementptr inbounds %struct.lm25066_data, %struct.lm25066_data* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.__coeff*, %struct.__coeff** %136, i64 %139
  %141 = load %struct.__coeff*, %struct.__coeff** %140, align 8
  %142 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %141, i64 0
  store %struct.__coeff* %142, %struct.__coeff** %9, align 8
  %143 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %144 = load i64, i64* @PSC_TEMPERATURE, align 8
  %145 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %143, i64 %144
  %146 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %149 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @PSC_TEMPERATURE, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 %147, i32* %152, align 4
  %153 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %154 = load i64, i64* @PSC_TEMPERATURE, align 8
  %155 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %153, i64 %154
  %156 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %159 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @PSC_TEMPERATURE, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32 %157, i32* %162, align 4
  %163 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %164 = load i64, i64* @PSC_TEMPERATURE, align 8
  %165 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %163, i64 %164
  %166 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %169 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @PSC_TEMPERATURE, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %174 = load i64, i64* @PSC_VOLTAGE_IN, align 8
  %175 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %173, i64 %174
  %176 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %179 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @PSC_VOLTAGE_IN, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32 %177, i32* %182, align 4
  %183 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %184 = load i64, i64* @PSC_VOLTAGE_IN, align 8
  %185 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %183, i64 %184
  %186 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %189 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* @PSC_VOLTAGE_IN, align 8
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32 %187, i32* %192, align 4
  %193 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %194 = load i64, i64* @PSC_VOLTAGE_IN, align 8
  %195 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %193, i64 %194
  %196 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %199 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @PSC_VOLTAGE_IN, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32 %197, i32* %202, align 4
  %203 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %204 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %205 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %203, i64 %204
  %206 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %209 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32 %207, i32* %212, align 4
  %213 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %214 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %215 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %213, i64 %214
  %216 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %219 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32 %217, i32* %222, align 4
  %223 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %224 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %225 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %223, i64 %224
  %226 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %229 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %228, i32 0, i32 4
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* @PSC_VOLTAGE_OUT, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32 %227, i32* %232, align 4
  %233 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %234 = load i64, i64* @PSC_CURRENT_IN, align 8
  %235 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %233, i64 %234
  %236 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %239 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  %241 = load i64, i64* @PSC_CURRENT_IN, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32 %237, i32* %242, align 4
  %243 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %244 = load i64, i64* @PSC_POWER, align 8
  %245 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %243, i64 %244
  %246 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %249 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = load i64, i64* @PSC_POWER, align 8
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32 %247, i32* %252, align 4
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* @LM25066_DEV_SETUP_CL, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %298

257:                                              ; preds = %132
  %258 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %259 = load i64, i64* @PSC_CURRENT_IN_L, align 8
  %260 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %258, i64 %259
  %261 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %264 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = load i64, i64* @PSC_CURRENT_IN, align 8
  %267 = getelementptr inbounds i32, i32* %265, i64 %266
  store i32 %262, i32* %267, align 4
  %268 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %269 = load i64, i64* @PSC_CURRENT_IN_L, align 8
  %270 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %268, i64 %269
  %271 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %274 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %273, i32 0, i32 2
  %275 = load i32*, i32** %274, align 8
  %276 = load i64, i64* @PSC_CURRENT_IN, align 8
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32 %272, i32* %277, align 4
  %278 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %279 = load i64, i64* @PSC_POWER_L, align 8
  %280 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %278, i64 %279
  %281 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %284 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %283, i32 0, i32 3
  %285 = load i32*, i32** %284, align 8
  %286 = load i64, i64* @PSC_POWER, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  store i32 %282, i32* %287, align 4
  %288 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %289 = load i64, i64* @PSC_POWER_L, align 8
  %290 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %288, i64 %289
  %291 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %294 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = load i64, i64* @PSC_POWER, align 8
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  store i32 %292, i32* %297, align 4
  br label %339

298:                                              ; preds = %132
  %299 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %300 = load i64, i64* @PSC_CURRENT_IN, align 8
  %301 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %299, i64 %300
  %302 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %305 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* @PSC_CURRENT_IN, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  store i32 %303, i32* %308, align 4
  %309 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %310 = load i64, i64* @PSC_CURRENT_IN, align 8
  %311 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %309, i64 %310
  %312 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %315 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = load i64, i64* @PSC_CURRENT_IN, align 8
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32 %313, i32* %318, align 4
  %319 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %320 = load i64, i64* @PSC_POWER, align 8
  %321 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %319, i64 %320
  %322 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %325 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %324, i32 0, i32 3
  %326 = load i32*, i32** %325, align 8
  %327 = load i64, i64* @PSC_POWER, align 8
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  store i32 %323, i32* %328, align 4
  %329 = load %struct.__coeff*, %struct.__coeff** %9, align 8
  %330 = load i64, i64* @PSC_POWER, align 8
  %331 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %329, i64 %330
  %332 = getelementptr inbounds %struct.__coeff, %struct.__coeff* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %335 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %334, i32 0, i32 2
  %336 = load i32*, i32** %335, align 8
  %337 = load i64, i64* @PSC_POWER, align 8
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  store i32 %333, i32* %338, align 4
  br label %339

339:                                              ; preds = %298, %257
  %340 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %341 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %342 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %8, align 8
  %343 = call i32 @pmbus_do_probe(%struct.i2c_client* %340, %struct.i2c_device_id* %341, %struct.pmbus_driver_info* %342)
  store i32 %343, i32* %3, align 4
  br label %344

344:                                              ; preds = %339, %35, %26, %16
  %345 = load i32, i32* %3, align 4
  ret i32 %345
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.lm25066_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @pmbus_do_probe(%struct.i2c_client*, %struct.i2c_device_id*, %struct.pmbus_driver_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
