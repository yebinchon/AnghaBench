; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5520-keys.c_adp5520_keys_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5520-keys.c_adp5520_keys_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.adp5520_keys_platform_data = type { i8, i8, i32, i64, i32 }
%struct.input_dev = type { i8*, i32, i32, i32, i32, i32*, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.adp5520_keys = type { %struct.TYPE_11__, i32, i32*, %struct.input_dev* }
%struct.TYPE_11__ = type { i32 }

@ID_ADP5520 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"only ADP5520 supports Keypad\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to alloc memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"adp5520-keys/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"unable to register input device\0A\00", align 1
@ADP5520_GPIO_CFG_1 = common dso_local global i32 0, align 4
@ADP5520_COL_C3 = common dso_local global i8 0, align 1
@ADP5520_C3_MODE = common dso_local global i8 0, align 1
@ADP5520_ROW_R3 = common dso_local global i8 0, align 1
@ADP5520_R3_MODE = common dso_local global i8 0, align 1
@ADP5520_LED_CONTROL = common dso_local global i32 0, align 4
@ADP5520_GPIO_PULLUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"failed to write\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@adp5520_keys_notifier = common dso_local global i32 0, align 4
@ADP5520_KP_IEN = common dso_local global i32 0, align 4
@ADP5520_KR_IEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to register notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adp5520_keys_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_keys_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.adp5520_keys_platform_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.adp5520_keys*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = call %struct.adp5520_keys_platform_data* @dev_get_platdata(%struct.TYPE_10__* %12)
  store %struct.adp5520_keys_platform_data* %13, %struct.adp5520_keys_platform_data** %4, align 8
  store i8 0, i8* %10, align 1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ID_ADP5520, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = call i32 @dev_err(%struct.TYPE_10__* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %284

25:                                               ; preds = %1
  %26 = load %struct.adp5520_keys_platform_data*, %struct.adp5520_keys_platform_data** %4, align 8
  %27 = icmp ne %struct.adp5520_keys_platform_data* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = call i32 @dev_err(%struct.TYPE_10__* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %284

34:                                               ; preds = %25
  %35 = load %struct.adp5520_keys_platform_data*, %struct.adp5520_keys_platform_data** %4, align 8
  %36 = getelementptr inbounds %struct.adp5520_keys_platform_data, %struct.adp5520_keys_platform_data* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.adp5520_keys_platform_data*, %struct.adp5520_keys_platform_data** %4, align 8
  %42 = getelementptr inbounds %struct.adp5520_keys_platform_data, %struct.adp5520_keys_platform_data* %41, i32 0, i32 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %284

49:                                               ; preds = %40
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 1
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.adp5520_keys* @devm_kzalloc(%struct.TYPE_10__* %51, i32 24, i32 %52)
  store %struct.adp5520_keys* %53, %struct.adp5520_keys** %6, align 8
  %54 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %55 = icmp ne %struct.adp5520_keys* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 1
  %59 = call i32 @dev_err(%struct.TYPE_10__* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %284

62:                                               ; preds = %49
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 1
  %65 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_10__* %64)
  store %struct.input_dev* %65, %struct.input_dev** %5, align 8
  %66 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %67 = icmp ne %struct.input_dev* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %284

71:                                               ; preds = %62
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %77 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %79 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %80 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %79, i32 0, i32 3
  store %struct.input_dev* %78, %struct.input_dev** %80, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 8
  %86 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 1
  %90 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %91 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %92, align 8
  %93 = load i32, i32* @BUS_I2C, align 4
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 4
  %97 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %101 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i32 21792, i32* %102, align 4
  %103 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %104 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  %106 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 1
  store i32 4, i32* %107, align 8
  %108 = load %struct.adp5520_keys_platform_data*, %struct.adp5520_keys_platform_data** %4, align 8
  %109 = getelementptr inbounds %struct.adp5520_keys_platform_data, %struct.adp5520_keys_platform_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %114 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 5
  store i32* %115, i32** %117, align 8
  %118 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %119 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.adp5520_keys_platform_data*, %struct.adp5520_keys_platform_data** %4, align 8
  %122 = getelementptr inbounds %struct.adp5520_keys_platform_data, %struct.adp5520_keys_platform_data* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.adp5520_keys_platform_data*, %struct.adp5520_keys_platform_data** %4, align 8
  %125 = getelementptr inbounds %struct.adp5520_keys_platform_data, %struct.adp5520_keys_platform_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %126, %129
  %131 = call i32 @memcpy(i32* %120, i32 %123, i32 %130)
  %132 = load i32, i32* @EV_KEY, align 4
  %133 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %134 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @__set_bit(i32 %132, i32 %135)
  %137 = load %struct.adp5520_keys_platform_data*, %struct.adp5520_keys_platform_data** %4, align 8
  %138 = getelementptr inbounds %struct.adp5520_keys_platform_data, %struct.adp5520_keys_platform_data* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %71
  %142 = load i32, i32* @EV_REP, align 4
  %143 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %144 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @__set_bit(i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %141, %71
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %166, %147
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %151 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %148
  %155 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %156 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %163 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @__set_bit(i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %154
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %148

169:                                              ; preds = %148
  %170 = load i32, i32* @KEY_RESERVED, align 4
  %171 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %172 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @__clear_bit(i32 %170, i32 %173)
  %175 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %176 = call i32 @input_register_device(%struct.input_dev* %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %169
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 1
  %182 = call i32 @dev_err(%struct.TYPE_10__* %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %2, align 4
  br label %284

184:                                              ; preds = %169
  %185 = load %struct.adp5520_keys_platform_data*, %struct.adp5520_keys_platform_data** %4, align 8
  %186 = getelementptr inbounds %struct.adp5520_keys_platform_data, %struct.adp5520_keys_platform_data* %185, i32 0, i32 0
  %187 = load i8, i8* %186, align 8
  %188 = zext i8 %187 to i32
  %189 = load %struct.adp5520_keys_platform_data*, %struct.adp5520_keys_platform_data** %4, align 8
  %190 = getelementptr inbounds %struct.adp5520_keys_platform_data, %struct.adp5520_keys_platform_data* %189, i32 0, i32 1
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = or i32 %188, %192
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %9, align 1
  %195 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %196 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @ADP5520_GPIO_CFG_1, align 4
  %199 = load i8, i8* %9, align 1
  %200 = call i32 @adp5520_set_bits(i32 %197, i32 %198, i8 zeroext %199)
  store i32 %200, i32* %7, align 4
  %201 = load i8, i8* %9, align 1
  %202 = zext i8 %201 to i32
  %203 = load i8, i8* @ADP5520_COL_C3, align 1
  %204 = zext i8 %203 to i32
  %205 = and i32 %202, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %184
  %208 = load i8, i8* @ADP5520_C3_MODE, align 1
  %209 = zext i8 %208 to i32
  %210 = load i8, i8* %10, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %211, %209
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %10, align 1
  br label %214

214:                                              ; preds = %207, %184
  %215 = load i8, i8* %9, align 1
  %216 = zext i8 %215 to i32
  %217 = load i8, i8* @ADP5520_ROW_R3, align 1
  %218 = zext i8 %217 to i32
  %219 = and i32 %216, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %214
  %222 = load i8, i8* @ADP5520_R3_MODE, align 1
  %223 = zext i8 %222 to i32
  %224 = load i8, i8* %10, align 1
  %225 = zext i8 %224 to i32
  %226 = or i32 %225, %223
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %10, align 1
  br label %228

228:                                              ; preds = %221, %214
  %229 = load i8, i8* %10, align 1
  %230 = icmp ne i8 %229, 0
  br i1 %230, label %231, label %240

231:                                              ; preds = %228
  %232 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %233 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @ADP5520_LED_CONTROL, align 4
  %236 = load i8, i8* %10, align 1
  %237 = call i32 @adp5520_set_bits(i32 %234, i32 %235, i8 zeroext %236)
  %238 = load i32, i32* %7, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %7, align 4
  br label %240

240:                                              ; preds = %231, %228
  %241 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %242 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @ADP5520_GPIO_PULLUP, align 4
  %245 = load %struct.adp5520_keys_platform_data*, %struct.adp5520_keys_platform_data** %4, align 8
  %246 = getelementptr inbounds %struct.adp5520_keys_platform_data, %struct.adp5520_keys_platform_data* %245, i32 0, i32 0
  %247 = load i8, i8* %246, align 8
  %248 = call i32 @adp5520_set_bits(i32 %243, i32 %244, i8 zeroext %247)
  %249 = load i32, i32* %7, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %7, align 4
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %240
  %254 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %255 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %254, i32 0, i32 1
  %256 = call i32 @dev_err(%struct.TYPE_10__* %255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %257 = load i32, i32* @EIO, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %2, align 4
  br label %284

259:                                              ; preds = %240
  %260 = load i32, i32* @adp5520_keys_notifier, align 4
  %261 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %262 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  store i32 %260, i32* %263, align 8
  %264 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %265 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %268 = getelementptr inbounds %struct.adp5520_keys, %struct.adp5520_keys* %267, i32 0, i32 0
  %269 = load i32, i32* @ADP5520_KP_IEN, align 4
  %270 = load i32, i32* @ADP5520_KR_IEN, align 4
  %271 = or i32 %269, %270
  %272 = call i32 @adp5520_register_notifier(i32 %266, %struct.TYPE_11__* %268, i32 %271)
  store i32 %272, i32* %7, align 4
  %273 = load i32, i32* %7, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %259
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %276, i32 0, i32 1
  %278 = call i32 @dev_err(%struct.TYPE_10__* %277, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %279 = load i32, i32* %7, align 4
  store i32 %279, i32* %2, align 4
  br label %284

280:                                              ; preds = %259
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = load %struct.adp5520_keys*, %struct.adp5520_keys** %6, align 8
  %283 = call i32 @platform_set_drvdata(%struct.platform_device* %281, %struct.adp5520_keys* %282)
  store i32 0, i32* %2, align 4
  br label %284

284:                                              ; preds = %280, %275, %253, %179, %68, %56, %46, %28, %19
  %285 = load i32, i32* %2, align 4
  ret i32 %285
}

declare dso_local %struct.adp5520_keys_platform_data* @dev_get_platdata(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.adp5520_keys* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @adp5520_set_bits(i32, i32, i8 zeroext) #1

declare dso_local i32 @adp5520_register_notifier(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.adp5520_keys*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
