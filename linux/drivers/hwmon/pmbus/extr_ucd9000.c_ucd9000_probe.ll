; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ucd9000.c_ucd9000_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ucd9000.c_ucd9000_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_id = type { i32, i64* }
%struct.i2c_client = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ucd9000_data = type { i8**, %struct.pmbus_driver_info }
%struct.pmbus_driver_info = type { i32, i32*, i32 }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BLOCK_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@UCD9000_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to read device ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Device ID %s\0A\00", align 1
@ucd9000_id = common dso_local global %struct.i2c_device_id* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Unsupported device\0A\00", align 1
@ucd9000 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Device mismatch: Configured %s, detected %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UCD9000_NUM_PAGES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed to read number of active pages\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"No pages configured\0A\00", align 1
@PMBUS_HAVE_TEMP = common dso_local global i32 0, align 4
@UCD9000_MONITOR_CONFIG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to read configuration data\0A\00", align 1
@PMBUS_HAVE_VOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_VOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_TEMP2 = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_TEMP = common dso_local global i32 0, align 4
@PMBUS_HAVE_IOUT = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_IOUT = common dso_local global i32 0, align 4
@ucd90124 = common dso_local global i64 0, align 8
@UCD9000_NUM_FAN = common dso_local global i32 0, align 4
@UCD9000_FAN_CONFIG_INDEX = common dso_local global i32 0, align 4
@UCD9000_FAN_CONFIG = common dso_local global i32 0, align 4
@ucd9000_read_byte_data = common dso_local global i32 0, align 4
@PMBUS_HAVE_FAN12 = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_FAN12 = common dso_local global i32 0, align 4
@PMBUS_HAVE_FAN34 = common dso_local global i32 0, align 4
@PMBUS_HAVE_STATUS_FAN34 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to register debugfs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ucd9000_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucd9000_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ucd9000_data*, align 8
  %9 = alloca %struct.pmbus_driver_info*, align 8
  %10 = alloca %struct.i2c_device_id*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %16 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %25 = load i32, i32* @I2C_FUNC_SMBUS_BLOCK_DATA, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @i2c_check_functionality(i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %320

32:                                               ; preds = %2
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load i32, i32* @UCD9000_DEVICE_ID, align 4
  %35 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %33, i32 %34, i8* %20)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i32 @dev_err(%struct.TYPE_7__* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %320

43:                                               ; preds = %32
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %20, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @dev_info(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %50 = load %struct.i2c_device_id*, %struct.i2c_device_id** @ucd9000_id, align 8
  store %struct.i2c_device_id* %50, %struct.i2c_device_id** %10, align 8
  br label %51

51:                                               ; preds = %70, %43
  %52 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %53 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %60 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %63 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @strlen(i64* %64)
  %66 = call i32 @strncasecmp(i64* %61, i8* %20, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  br label %73

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %72 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %71, i32 1
  store %struct.i2c_device_id* %72, %struct.i2c_device_id** %10, align 8
  br label %51

73:                                               ; preds = %68, %51
  %74 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %75 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.TYPE_7__* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %320

86:                                               ; preds = %73
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i64 @of_device_get_match_data(%struct.TYPE_7__* %94)
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %11, align 4
  br label %101

97:                                               ; preds = %86
  %98 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %99 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @ucd9000, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %108 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %106, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %105
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %115 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %118 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = call i32 @dev_notice(%struct.TYPE_7__* %113, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64* %116, i64* %119)
  br label %121

121:                                              ; preds = %111, %105, %101
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %122, i32 0, i32 0
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call %struct.ucd9000_data* @devm_kzalloc(%struct.TYPE_7__* %123, i32 32, i32 %124)
  store %struct.ucd9000_data* %125, %struct.ucd9000_data** %8, align 8
  %126 = load %struct.ucd9000_data*, %struct.ucd9000_data** %8, align 8
  %127 = icmp ne %struct.ucd9000_data* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %320

131:                                              ; preds = %121
  %132 = load %struct.ucd9000_data*, %struct.ucd9000_data** %8, align 8
  %133 = getelementptr inbounds %struct.ucd9000_data, %struct.ucd9000_data* %132, i32 0, i32 1
  store %struct.pmbus_driver_info* %133, %struct.pmbus_driver_info** %9, align 8
  %134 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %135 = load i32, i32* @UCD9000_NUM_PAGES, align 4
  %136 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %134, i32 %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = call i32 @dev_err(%struct.TYPE_7__* %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %320

144:                                              ; preds = %131
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %147 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %149 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %144
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %153, i32 0, i32 0
  %155 = call i32 @dev_err(%struct.TYPE_7__* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %320

158:                                              ; preds = %144
  %159 = load i32, i32* @PMBUS_HAVE_TEMP, align 4
  %160 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %161 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %159, i32* %163, align 4
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = load i32, i32* @UCD9000_MONITOR_CONFIG, align 4
  %166 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %164, i32 %165, i8* %20)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %158
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 0
  %172 = call i32 @dev_err(%struct.TYPE_7__* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %173 = load i32, i32* @ENODEV, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %320

175:                                              ; preds = %158
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %236, %175
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %239

180:                                              ; preds = %176
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %20, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = call i32 @UCD9000_MON_PAGE(i8 signext %184)
  store i32 %185, i32* %15, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %188 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp sge i32 %186, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  br label %236

192:                                              ; preds = %180
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %20, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = call i32 @UCD9000_MON_TYPE(i8 signext %196)
  switch i32 %197, label %234 [
    i32 129, label %198
    i32 128, label %198
    i32 130, label %210
    i32 131, label %222
  ]

198:                                              ; preds = %192, %192
  %199 = load i32, i32* @PMBUS_HAVE_VOUT, align 4
  %200 = load i32, i32* @PMBUS_HAVE_STATUS_VOUT, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %203 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %201
  store i32 %209, i32* %207, align 4
  br label %235

210:                                              ; preds = %192
  %211 = load i32, i32* @PMBUS_HAVE_TEMP2, align 4
  %212 = load i32, i32* @PMBUS_HAVE_STATUS_TEMP, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %215 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = or i32 %220, %213
  store i32 %221, i32* %219, align 4
  br label %235

222:                                              ; preds = %192
  %223 = load i32, i32* @PMBUS_HAVE_IOUT, align 4
  %224 = load i32, i32* @PMBUS_HAVE_STATUS_IOUT, align 4
  %225 = or i32 %223, %224
  %226 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %227 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %225
  store i32 %233, i32* %231, align 4
  br label %235

234:                                              ; preds = %192
  br label %235

235:                                              ; preds = %234, %222, %210, %198
  br label %236

236:                                              ; preds = %235, %191
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %12, align 4
  br label %176

239:                                              ; preds = %176
  %240 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %241 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = load i64, i64* @ucd90124, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %294

246:                                              ; preds = %239
  store i32 0, i32* %12, align 4
  br label %247

247:                                              ; preds = %271, %246
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* @UCD9000_NUM_FAN, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %274

251:                                              ; preds = %247
  %252 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %253 = load i32, i32* @UCD9000_FAN_CONFIG_INDEX, align 4
  %254 = load i32, i32* %12, align 4
  %255 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %252, i32 %253, i32 %254)
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = load i32, i32* @UCD9000_FAN_CONFIG, align 4
  %258 = load %struct.ucd9000_data*, %struct.ucd9000_data** %8, align 8
  %259 = getelementptr inbounds %struct.ucd9000_data, %struct.ucd9000_data* %258, i32 0, i32 0
  %260 = load i8**, i8*** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8*, i8** %260, i64 %262
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %256, i32 %257, i8* %264)
  store i32 %265, i32* %13, align 4
  %266 = load i32, i32* %13, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %251
  %269 = load i32, i32* %13, align 4
  store i32 %269, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %320

270:                                              ; preds = %251
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %12, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %12, align 4
  br label %247

274:                                              ; preds = %247
  %275 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %276 = load i32, i32* @UCD9000_FAN_CONFIG_INDEX, align 4
  %277 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %275, i32 %276, i32 0)
  %278 = load i32, i32* @ucd9000_read_byte_data, align 4
  %279 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %280 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* @PMBUS_HAVE_FAN12, align 4
  %282 = load i32, i32* @PMBUS_HAVE_STATUS_FAN12, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @PMBUS_HAVE_FAN34, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @PMBUS_HAVE_STATUS_FAN34, align 4
  %287 = or i32 %285, %286
  %288 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %289 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = or i32 %292, %287
  store i32 %293, i32* %291, align 4
  br label %294

294:                                              ; preds = %274, %239
  %295 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %296 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %297 = load %struct.ucd9000_data*, %struct.ucd9000_data** %8, align 8
  %298 = call i32 @ucd9000_probe_gpio(%struct.i2c_client* %295, %struct.i2c_device_id* %296, %struct.ucd9000_data* %297)
  %299 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %300 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %301 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %9, align 8
  %302 = call i32 @pmbus_do_probe(%struct.i2c_client* %299, %struct.i2c_device_id* %300, %struct.pmbus_driver_info* %301)
  store i32 %302, i32* %13, align 4
  %303 = load i32, i32* %13, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %294
  %306 = load i32, i32* %13, align 4
  store i32 %306, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %320

307:                                              ; preds = %294
  %308 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %309 = load %struct.i2c_device_id*, %struct.i2c_device_id** %10, align 8
  %310 = load %struct.ucd9000_data*, %struct.ucd9000_data** %8, align 8
  %311 = call i32 @ucd9000_init_debugfs(%struct.i2c_client* %308, %struct.i2c_device_id* %309, %struct.ucd9000_data* %310)
  store i32 %311, i32* %13, align 4
  %312 = load i32, i32* %13, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %307
  %315 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %316 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %315, i32 0, i32 0
  %317 = load i32, i32* %13, align 4
  %318 = call i32 @dev_warn(%struct.TYPE_7__* %316, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %317)
  br label %319

319:                                              ; preds = %314, %307
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %320

320:                                              ; preds = %319, %305, %268, %169, %152, %139, %128, %80, %38, %29
  %321 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %321)
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #2

declare dso_local i32 @i2c_smbus_read_block_data(%struct.i2c_client*, i32, i8*) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i8*) #2

declare dso_local i32 @strncasecmp(i64*, i8*, i32) #2

declare dso_local i32 @strlen(i64*) #2

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_7__*) #2

declare dso_local i32 @dev_notice(%struct.TYPE_7__*, i8*, i64*, i64*) #2

declare dso_local %struct.ucd9000_data* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #2

declare dso_local i32 @UCD9000_MON_PAGE(i8 signext) #2

declare dso_local i32 @UCD9000_MON_TYPE(i8 signext) #2

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #2

declare dso_local i32 @ucd9000_probe_gpio(%struct.i2c_client*, %struct.i2c_device_id*, %struct.ucd9000_data*) #2

declare dso_local i32 @pmbus_do_probe(%struct.i2c_client*, %struct.i2c_device_id*, %struct.pmbus_driver_info*) #2

declare dso_local i32 @ucd9000_init_debugfs(%struct.i2c_client*, %struct.i2c_device_id*, %struct.ucd9000_data*) #2

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
