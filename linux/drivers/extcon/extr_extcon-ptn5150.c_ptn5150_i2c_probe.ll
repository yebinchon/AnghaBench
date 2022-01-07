; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-ptn5150.c_ptn5150_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-ptn5150.c_ptn5150_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ptn5150_info = type { i64, %struct.device*, i8*, i8*, i8*, i32, i32, i8*, %struct.i2c_client* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to get INT GPIO\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get VBUS GPIO\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"failed to set VBUS GPIO direction\0A\00", align 1
@ptn5150_irq_work = common dso_local global i32 0, align 4
@ptn5150_regmap_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to allocate register map: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to get INTB IRQ\0A\00", align 1
@ptn5150_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"failed to request handler for INTB IRQ\0A\00", align 1
@ptn5150_extcon_cable = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"failed to allocate memory for extcon\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ptn5150_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptn5150_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.ptn5150_info*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.device_node*, %struct.device_node** %7, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %209

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ptn5150_info* @devm_kzalloc(%struct.device* %23, i32 64, i32 %24)
  store %struct.ptn5150_info* %25, %struct.ptn5150_info** %8, align 8
  %26 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %27 = icmp ne %struct.ptn5150_info* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %209

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %34 = call i32 @i2c_set_clientdata(%struct.i2c_client* %32, %struct.ptn5150_info* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %38 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %37, i32 0, i32 1
  store %struct.device* %36, %struct.device** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %41 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %40, i32 0, i32 8
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 1
  %44 = load i32, i32* @GPIOD_IN, align 4
  %45 = call i8* @devm_gpiod_get(%struct.device* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %47 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %49 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @IS_ERR(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %31
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %57 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @PTR_ERR(i8* %58)
  store i32 %59, i32* %3, align 4
  br label %209

60:                                               ; preds = %31
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = load i32, i32* @GPIOD_IN, align 4
  %64 = call i8* @devm_gpiod_get(%struct.device* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %66 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %65, i32 0, i32 7
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %68 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %67, i32 0, i32 7
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %76 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %75, i32 0, i32 7
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %3, align 4
  br label %209

79:                                               ; preds = %60
  %80 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %81 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %80, i32 0, i32 7
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @gpiod_direction_output(i8* %82, i32 0)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %209

91:                                               ; preds = %79
  %92 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %93 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %92, i32 0, i32 6
  %94 = call i32 @mutex_init(i32* %93)
  %95 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %96 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %95, i32 0, i32 5
  %97 = load i32, i32* @ptn5150_irq_work, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %99, i32* @ptn5150_regmap_config)
  %101 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %102 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %104 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %91
  %109 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %110 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @PTR_ERR(i8* %111)
  store i32 %112, i32* %9, align 4
  %113 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %114 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %113, i32 0, i32 1
  %115 = load %struct.device*, %struct.device** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %209

119:                                              ; preds = %91
  %120 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %121 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %164

124:                                              ; preds = %119
  %125 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %126 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @gpiod_to_irq(i8* %127)
  %129 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %130 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %132 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %124
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %138 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %139 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %3, align 4
  br label %209

142:                                              ; preds = %124
  %143 = load %struct.device*, %struct.device** %6, align 8
  %144 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %145 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* @ptn5150_irq_handler, align 4
  %149 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %150 = load i32, i32* @IRQF_ONESHOT, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %156 = call i32 @devm_request_threaded_irq(%struct.device* %143, i32 %147, i32* null, i32 %148, i32 %151, i32 %154, %struct.ptn5150_info* %155)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %142
  %160 = load %struct.device*, %struct.device** %6, align 8
  %161 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %160, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %3, align 4
  br label %209

163:                                              ; preds = %142
  br label %164

164:                                              ; preds = %163, %119
  %165 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %166 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %165, i32 0, i32 1
  %167 = load %struct.device*, %struct.device** %166, align 8
  %168 = load i32, i32* @ptn5150_extcon_cable, align 4
  %169 = call i8* @devm_extcon_dev_allocate(%struct.device* %167, i32 %168)
  %170 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %171 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %170, i32 0, i32 2
  store i8* %169, i8** %171, align 8
  %172 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %173 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = call i64 @IS_ERR(i8* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %164
  %178 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %179 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %178, i32 0, i32 1
  %180 = load %struct.device*, %struct.device** %179, align 8
  %181 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %180, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %209

184:                                              ; preds = %164
  %185 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %186 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %185, i32 0, i32 1
  %187 = load %struct.device*, %struct.device** %186, align 8
  %188 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %189 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @devm_extcon_dev_register(%struct.device* %187, i8* %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %184
  %195 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %196 = getelementptr inbounds %struct.ptn5150_info, %struct.ptn5150_info* %195, i32 0, i32 1
  %197 = load %struct.device*, %struct.device** %196, align 8
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* %3, align 4
  br label %209

200:                                              ; preds = %184
  %201 = load %struct.ptn5150_info*, %struct.ptn5150_info** %8, align 8
  %202 = call i32 @ptn5150_init_dev_type(%struct.ptn5150_info* %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %3, align 4
  br label %209

208:                                              ; preds = %200
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %205, %194, %177, %159, %135, %108, %86, %72, %53, %28, %18
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.ptn5150_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ptn5150_info*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @gpiod_direction_output(i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @gpiod_to_irq(i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.ptn5150_info*) #1

declare dso_local i8* @devm_extcon_dev_allocate(%struct.device*, i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, i8*) #1

declare dso_local i32 @ptn5150_init_dev_type(%struct.ptn5150_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
