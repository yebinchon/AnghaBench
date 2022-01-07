; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8323.c_lm8323_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lm8323.c_lm8323_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm8323_platform_data = type { i32, i32, i64, i32*, i64, i32*, i32, i32 }
%struct.input_dev = type { i8*, i32*, i32*, i32*, i32 }
%struct.lm8323_chip = type { i32, i32, i32, %struct.TYPE_2__*, i32*, i32, i32, i32, i32, %struct.input_dev*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"missing platform_data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid x size %d specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid y size %d specified\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Keypad size: %d x %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@LM8323_CMD_READ_INT = common dso_local global i32 0, align 4
@INT_NOINIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"timeout waiting for initialisation\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"device not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LM8323_NUM_PWMS = common dso_local global i32 0, align 4
@dev_attr_disable_kp = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"LM8323 keypad\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%s/input-kp\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@LM8323_KEYMAP_SIZE = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"error registering input device\0A\00", align 1
@lm8323_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"lm8323\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"could not get IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm8323_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm8323_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm8323_platform_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.lm8323_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [2 x i32], align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = call %struct.lm8323_platform_data* @dev_get_platdata(i32* %15)
  store %struct.lm8323_platform_data* %16, %struct.lm8323_platform_data** %6, align 8
  %17 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %18 = icmp ne %struct.lm8323_platform_data* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %21 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %26 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24, %19, %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %355

35:                                               ; preds = %24
  %36 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %37 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 8
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %44 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %355

49:                                               ; preds = %35
  %50 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %51 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 12
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %58 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %355

63:                                               ; preds = %49
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.lm8323_chip* @kzalloc(i32 64, i32 %64)
  store %struct.lm8323_chip* %65, %struct.lm8323_chip** %8, align 8
  %66 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %66, %struct.input_dev** %7, align 8
  %67 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %68 = icmp ne %struct.lm8323_chip* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = icmp ne %struct.input_dev* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69, %63
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %349

75:                                               ; preds = %69
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %78 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %77, i32 0, i32 10
  store %struct.i2c_client* %76, %struct.i2c_client** %78, align 8
  %79 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %80 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %81 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %80, i32 0, i32 9
  store %struct.input_dev* %79, %struct.input_dev** %81, align 8
  %82 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %83 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %82, i32 0, i32 8
  %84 = call i32 @mutex_init(i32* %83)
  %85 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %86 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %89 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %91 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %94 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 1
  %97 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %98 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %101 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_vdbg(i32* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %105 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %108 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 8
  %109 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %110 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %113 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 4
  %114 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %115 = call i32 @lm8323_reset(%struct.lm8323_chip* %114)
  %116 = load i64, i64* @jiffies, align 8
  %117 = call i64 @msecs_to_jiffies(i32 100)
  %118 = add i64 %116, %117
  store i64 %118, i64* %12, align 8
  br label %119

119:                                              ; preds = %141, %75
  %120 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %121 = load i32, i32* @LM8323_CMD_READ_INT, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %123 = call i32 @lm8323_read(%struct.lm8323_chip* %120, i32 %121, i32* %122, i32 1)
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @INT_NOINIT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %143

132:                                              ; preds = %125
  %133 = load i64, i64* @jiffies, align 8
  %134 = load i64, i64* %12, align 8
  %135 = call i64 @time_after(i64 %133, i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %139 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %138, i32 0, i32 1
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %143

141:                                              ; preds = %132
  %142 = call i32 @msleep(i32 1)
  br label %119

143:                                              ; preds = %137, %131, %119
  %144 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %145 = call i32 @lm8323_configure(%struct.lm8323_chip* %144)
  %146 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %148 = call i64 @lm8323_read_id(%struct.lm8323_chip* %146, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 1
  %153 = call i32 (i32*, i8*, ...) @dev_err(i32* %152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %11, align 4
  br label %349

156:                                              ; preds = %143
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %179, %156
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @LM8323_NUM_PWMS, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %182

161:                                              ; preds = %157
  %162 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %165, i32 0, i32 1
  %167 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %168 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @init_pwm(%struct.lm8323_chip* %162, i32 %164, i32* %166, i32 %173)
  store i32 %174, i32* %11, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %161
  br label %323

178:                                              ; preds = %161
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %157

182:                                              ; preds = %157
  %183 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %184 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %183, i32 0, i32 2
  store i32 1, i32* %184, align 8
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 1
  %187 = call i32 @device_create_file(i32* %186, i32* @dev_attr_disable_kp)
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %323

191:                                              ; preds = %182
  %192 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %193 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = inttoptr i64 %194 to i8*
  br label %199

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %198, %196
  %200 = phi i8* [ %197, %196 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), %198 ]
  %201 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %202 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  %203 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %204 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 1
  %208 = call i8* @dev_name(i32* %207)
  %209 = call i32 @snprintf(i32 %205, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %208)
  %210 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %211 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %214 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* @EV_KEY, align 4
  %216 = call i32 @BIT(i32 %215)
  %217 = load i32, i32* @EV_MSC, align 4
  %218 = call i32 @BIT(i32 %217)
  %219 = or i32 %216, %218
  %220 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %221 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 %219, i32* %223, align 4
  %224 = load i32, i32* @MSC_SCAN, align 4
  %225 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %226 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @__set_bit(i32 %224, i32* %227)
  store i32 0, i32* %10, align 4
  br label %229

229:                                              ; preds = %258, %199
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @LM8323_KEYMAP_SIZE, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %261

233:                                              ; preds = %229
  %234 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %235 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %242 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @__set_bit(i32 %240, i32* %243)
  %245 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %246 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %253 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 %251, i32* %257, align 4
  br label %258

258:                                              ; preds = %233
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %10, align 4
  br label %229

261:                                              ; preds = %229
  %262 = load i32, i32* @KEY_RESERVED, align 4
  %263 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %264 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @__clear_bit(i32 %262, i32* %265)
  %267 = load %struct.lm8323_platform_data*, %struct.lm8323_platform_data** %6, align 8
  %268 = getelementptr inbounds %struct.lm8323_platform_data, %struct.lm8323_platform_data* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %261
  %272 = load i32, i32* @EV_REP, align 4
  %273 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %274 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = call i32 @__set_bit(i32 %272, i32* %275)
  br label %277

277:                                              ; preds = %271, %261
  %278 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %279 = call i32 @input_register_device(%struct.input_dev* %278)
  store i32 %279, i32* %11, align 4
  %280 = load i32, i32* %11, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %277
  %283 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %284 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %283, i32 0, i32 1
  %285 = call i32 @dev_dbg(i32* %284, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %319

286:                                              ; preds = %277
  %287 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %288 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @lm8323_irq, align 4
  %291 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %292 = load i32, i32* @IRQF_ONESHOT, align 4
  %293 = or i32 %291, %292
  %294 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %295 = call i32 @request_threaded_irq(i32 %289, i32* null, i32 %290, i32 %293, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), %struct.lm8323_chip* %294)
  store i32 %295, i32* %11, align 4
  %296 = load i32, i32* %11, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %286
  %299 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %300 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %299, i32 0, i32 1
  %301 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %302 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (i32*, i8*, ...) @dev_err(i32* %300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %303)
  br label %316

305:                                              ; preds = %286
  %306 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %307 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %308 = call i32 @i2c_set_clientdata(%struct.i2c_client* %306, %struct.lm8323_chip* %307)
  %309 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %310 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %309, i32 0, i32 1
  %311 = call i32 @device_init_wakeup(i32* %310, i32 1)
  %312 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %313 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @enable_irq_wake(i32 %314)
  store i32 0, i32* %3, align 4
  br label %355

316:                                              ; preds = %298
  %317 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %318 = call i32 @input_unregister_device(%struct.input_dev* %317)
  store %struct.input_dev* null, %struct.input_dev** %7, align 8
  br label %319

319:                                              ; preds = %316, %282
  %320 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %321 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %320, i32 0, i32 1
  %322 = call i32 @device_remove_file(i32* %321, i32* @dev_attr_disable_kp)
  br label %323

323:                                              ; preds = %319, %190, %177
  br label %324

324:                                              ; preds = %347, %323
  %325 = load i32, i32* %9, align 4
  %326 = add nsw i32 %325, -1
  store i32 %326, i32* %9, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %348

328:                                              ; preds = %324
  %329 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %330 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %329, i32 0, i32 3
  %331 = load %struct.TYPE_2__*, %struct.TYPE_2__** %330, align 8
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %347

338:                                              ; preds = %328
  %339 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %340 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %339, i32 0, i32 3
  %341 = load %struct.TYPE_2__*, %struct.TYPE_2__** %340, align 8
  %342 = load i32, i32* %9, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i32 0, i32 0
  %346 = call i32 @led_classdev_unregister(i32* %345)
  br label %347

347:                                              ; preds = %338, %328
  br label %324

348:                                              ; preds = %324
  br label %349

349:                                              ; preds = %348, %150, %72
  %350 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %351 = call i32 @input_free_device(%struct.input_dev* %350)
  %352 = load %struct.lm8323_chip*, %struct.lm8323_chip** %8, align 8
  %353 = call i32 @kfree(%struct.lm8323_chip* %352)
  %354 = load i32, i32* %11, align 4
  store i32 %354, i32* %3, align 4
  br label %355

355:                                              ; preds = %349, %305, %54, %40, %29
  %356 = load i32, i32* %3, align 4
  ret i32 %356
}

declare dso_local %struct.lm8323_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.lm8323_chip* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @lm8323_reset(%struct.lm8323_chip*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lm8323_read(%struct.lm8323_chip*, i32, i32*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lm8323_configure(%struct.lm8323_chip*) #1

declare dso_local i64 @lm8323_read_id(%struct.lm8323_chip*, i32*) #1

declare dso_local i32 @init_pwm(%struct.lm8323_chip*, i32, i32*, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.lm8323_chip*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm8323_chip*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.lm8323_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
