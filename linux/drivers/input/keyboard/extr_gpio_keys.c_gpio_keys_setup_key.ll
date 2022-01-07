; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_setup_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_setup_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.input_dev = type { i32 }
%struct.gpio_keys_drvdata = type { i32*, %struct.gpio_button_data* }
%struct.gpio_button_data = type { i32, i32, i32, i32*, i32, i8*, i32, i32*, i32, %struct.gpio_keys_button*, %struct.input_dev* }
%struct.gpio_keys_button = type { i8*, i32, i32, i32, i32, i64, i32, i32, i64 }
%struct.fwnode_handle = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"gpio_keys\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to get gpio: %d\0A\00", align 1
@GPIOF_IN = common dso_local global i32 0, align 4
@GPIOF_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to request GPIO %d, error %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Unable to get irq number for GPIO %d, error %d\0A\00", align 1
@gpio_keys_gpio_work_func = common dso_local global i32 0, align 4
@gpio_keys_gpio_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_FALLING = common dso_local global i8* null, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Found button without gpio or irq\0A\00", align 1
@EV_KEY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"Only EV_KEY allowed for IRQ buttons.\0A\00", align 1
@gpio_keys_irq_timer = common dso_local global i32 0, align 4
@gpio_keys_irq_isr = common dso_local global i32 0, align 4
@gpio_keys_quiesce_key = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"failed to register quiesce action, error: %d\0A\00", align 1
@IRQF_SHARED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Unable to claim irq %d; error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.input_dev*, %struct.gpio_keys_drvdata*, %struct.gpio_keys_button*, i32, %struct.fwnode_handle*)* @gpio_keys_setup_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_keys_setup_key(%struct.platform_device* %0, %struct.input_dev* %1, %struct.gpio_keys_drvdata* %2, %struct.gpio_keys_button* %3, i32 %4, %struct.fwnode_handle* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca %struct.gpio_keys_drvdata*, align 8
  %11 = alloca %struct.gpio_keys_button*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fwnode_handle*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.device*, align 8
  %16 = alloca %struct.gpio_button_data*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %8, align 8
  store %struct.input_dev* %1, %struct.input_dev** %9, align 8
  store %struct.gpio_keys_drvdata* %2, %struct.gpio_keys_drvdata** %10, align 8
  store %struct.gpio_keys_button* %3, %struct.gpio_keys_button** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.fwnode_handle* %5, %struct.fwnode_handle** %13, align 8
  %23 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %24 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %29 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %31 ]
  store i8* %33, i8** %14, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  store %struct.device* %35, %struct.device** %15, align 8
  %36 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %10, align 8
  %37 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %36, i32 0, i32 1
  %38 = load %struct.gpio_button_data*, %struct.gpio_button_data** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %38, i64 %40
  store %struct.gpio_button_data* %41, %struct.gpio_button_data** %16, align 8
  %42 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %43 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %44 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %43, i32 0, i32 10
  store %struct.input_dev* %42, %struct.input_dev** %44, align 8
  %45 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %46 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %47 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %46, i32 0, i32 9
  store %struct.gpio_keys_button* %45, %struct.gpio_keys_button** %47, align 8
  %48 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %49 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %48, i32 0, i32 8
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.fwnode_handle*, %struct.fwnode_handle** %13, align 8
  %52 = icmp ne %struct.fwnode_handle* %51, null
  br i1 %52, label %53, label %91

53:                                               ; preds = %32
  %54 = load %struct.device*, %struct.device** %15, align 8
  %55 = load %struct.fwnode_handle*, %struct.fwnode_handle** %13, align 8
  %56 = load i32, i32* @GPIOD_IN, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = call i32* @devm_fwnode_get_gpiod_from_child(%struct.device* %54, i32* null, %struct.fwnode_handle* %55, i32 %56, i8* %57)
  %59 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %60 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %59, i32 0, i32 7
  store i32* %58, i32** %60, align 8
  %61 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %62 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %61, i32 0, i32 7
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @IS_ERR(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %53
  %67 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %68 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %67, i32 0, i32 7
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %77 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %76, i32 0, i32 7
  store i32* null, i32** %77, align 8
  br label %89

78:                                               ; preds = %66
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* @EPROBE_DEFER, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.device*, %struct.device** %15, align 8
  %85 = load i32, i32* %20, align 4
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %20, align 4
  store i32 %88, i32* %7, align 4
  br label %354

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %53
  br label %141

91:                                               ; preds = %32
  %92 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %93 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @gpio_is_valid(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %140

97:                                               ; preds = %91
  %98 = load i32, i32* @GPIOF_IN, align 4
  store i32 %98, i32* %21, align 4
  %99 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %100 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* @GPIOF_ACTIVE_LOW, align 4
  %105 = load i32, i32* %21, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %21, align 4
  br label %107

107:                                              ; preds = %103, %97
  %108 = load %struct.device*, %struct.device** %15, align 8
  %109 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %110 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %21, align 4
  %113 = load i8*, i8** %14, align 8
  %114 = call i32 @devm_gpio_request_one(%struct.device* %108, i32 %111, i32 %112, i8* %113)
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %107
  %118 = load %struct.device*, %struct.device** %15, align 8
  %119 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %120 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %20, align 4
  %123 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load i32, i32* %20, align 4
  store i32 %124, i32* %7, align 4
  br label %354

125:                                              ; preds = %107
  %126 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %127 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32* @gpio_to_desc(i32 %128)
  %130 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %131 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %130, i32 0, i32 7
  store i32* %129, i32** %131, align 8
  %132 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %133 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %132, i32 0, i32 7
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %125
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %354

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139, %91
  br label %141

141:                                              ; preds = %140, %90
  %142 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %143 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %241

146:                                              ; preds = %141
  %147 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %148 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %147, i32 0, i32 7
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @gpiod_is_active_low(i32* %149)
  store i32 %150, i32* %22, align 4
  %151 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %152 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %146
  %156 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %157 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %160 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %161, 1000
  %163 = call i32 @gpiod_set_debounce(i32* %158, i32 %162)
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %20, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %155
  %167 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %168 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %171 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %166, %155
  br label %173

173:                                              ; preds = %172, %146
  %174 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %175 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %180 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %183 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  br label %204

184:                                              ; preds = %173
  %185 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %186 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %185, i32 0, i32 7
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @gpiod_to_irq(i32* %187)
  store i32 %188, i32* %19, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %184
  %192 = load i32, i32* %19, align 4
  store i32 %192, i32* %20, align 4
  %193 = load %struct.device*, %struct.device** %15, align 8
  %194 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %195 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %20, align 4
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %193, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %196, i32 %197)
  %199 = load i32, i32* %20, align 4
  store i32 %199, i32* %7, align 4
  br label %354

200:                                              ; preds = %184
  %201 = load i32, i32* %19, align 4
  %202 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %203 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %200, %178
  %205 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %206 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %205, i32 0, i32 6
  %207 = load i32, i32* @gpio_keys_gpio_work_func, align 4
  %208 = call i32 @INIT_DELAYED_WORK(i32* %206, i32 %207)
  %209 = load i32, i32* @gpio_keys_gpio_isr, align 4
  store i32 %209, i32* %17, align 4
  %210 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  %211 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  %212 = or i64 %210, %211
  store i64 %212, i64* %18, align 8
  %213 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %214 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  switch i32 %215, label %239 [
    i32 129, label %216
    i32 128, label %227
    i32 130, label %238
  ]

216:                                              ; preds = %204
  %217 = load i32, i32* %22, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i8*, i8** @IRQ_TYPE_EDGE_FALLING, align 8
  br label %223

221:                                              ; preds = %216
  %222 = load i8*, i8** @IRQ_TYPE_EDGE_RISING, align 8
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i8* [ %220, %219 ], [ %222, %221 ]
  %225 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %226 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %225, i32 0, i32 5
  store i8* %224, i8** %226, align 8
  br label %240

227:                                              ; preds = %204
  %228 = load i32, i32* %22, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = load i8*, i8** @IRQ_TYPE_EDGE_RISING, align 8
  br label %234

232:                                              ; preds = %227
  %233 = load i8*, i8** @IRQ_TYPE_EDGE_FALLING, align 8
  br label %234

234:                                              ; preds = %232, %230
  %235 = phi i8* [ %231, %230 ], [ %233, %232 ]
  %236 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %237 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %236, i32 0, i32 5
  store i8* %235, i8** %237, align 8
  br label %240

238:                                              ; preds = %204
  br label %239

239:                                              ; preds = %204, %238
  br label %240

240:                                              ; preds = %239, %234, %223
  br label %283

241:                                              ; preds = %141
  %242 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %243 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %241
  %247 = load %struct.device*, %struct.device** %15, align 8
  %248 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %247, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %7, align 4
  br label %354

251:                                              ; preds = %241
  %252 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %253 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %256 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 4
  %257 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %258 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %251
  %262 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %263 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @EV_KEY, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %261
  %268 = load %struct.device*, %struct.device** %15, align 8
  %269 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %268, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %270 = load i32, i32* @EINVAL, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %7, align 4
  br label %354

272:                                              ; preds = %261, %251
  %273 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %274 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %277 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 8
  %278 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %279 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %278, i32 0, i32 4
  %280 = load i32, i32* @gpio_keys_irq_timer, align 4
  %281 = call i32 @timer_setup(i32* %279, i32 %280, i32 0)
  %282 = load i32, i32* @gpio_keys_irq_isr, align 4
  store i32 %282, i32* %17, align 4
  store i64 0, i64* %18, align 8
  br label %283

283:                                              ; preds = %272, %240
  %284 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %10, align 8
  %285 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %12, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %291 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %290, i32 0, i32 3
  store i32* %289, i32** %291, align 8
  %292 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %293 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %296 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %295, i32 0, i32 3
  %297 = load i32*, i32** %296, align 8
  store i32 %294, i32* %297, align 4
  %298 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %299 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %300 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %299, i32 0, i32 5
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %283
  br label %306

304:                                              ; preds = %283
  %305 = load i64, i64* @EV_KEY, align 8
  br label %306

306:                                              ; preds = %304, %303
  %307 = phi i64 [ %301, %303 ], [ %305, %304 ]
  %308 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %309 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %308, i32 0, i32 3
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @input_set_capability(%struct.input_dev* %298, i64 %307, i32 %311)
  %313 = load %struct.device*, %struct.device** %15, align 8
  %314 = load i32, i32* @gpio_keys_quiesce_key, align 4
  %315 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %316 = call i32 @devm_add_action(%struct.device* %313, i32 %314, %struct.gpio_button_data* %315)
  store i32 %316, i32* %20, align 4
  %317 = load i32, i32* %20, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %306
  %320 = load %struct.device*, %struct.device** %15, align 8
  %321 = load i32, i32* %20, align 4
  %322 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %320, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %321)
  %323 = load i32, i32* %20, align 4
  store i32 %323, i32* %7, align 4
  br label %354

324:                                              ; preds = %306
  %325 = load %struct.gpio_keys_button*, %struct.gpio_keys_button** %11, align 8
  %326 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %333, label %329

329:                                              ; preds = %324
  %330 = load i64, i64* @IRQF_SHARED, align 8
  %331 = load i64, i64* %18, align 8
  %332 = or i64 %331, %330
  store i64 %332, i64* %18, align 8
  br label %333

333:                                              ; preds = %329, %324
  %334 = load %struct.device*, %struct.device** %15, align 8
  %335 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %336 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %17, align 4
  %339 = load i64, i64* %18, align 8
  %340 = load i8*, i8** %14, align 8
  %341 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %342 = call i32 @devm_request_any_context_irq(%struct.device* %334, i32 %337, i32 %338, i64 %339, i8* %340, %struct.gpio_button_data* %341)
  store i32 %342, i32* %20, align 4
  %343 = load i32, i32* %20, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %353

345:                                              ; preds = %333
  %346 = load %struct.device*, %struct.device** %15, align 8
  %347 = load %struct.gpio_button_data*, %struct.gpio_button_data** %16, align 8
  %348 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %20, align 4
  %351 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %346, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %349, i32 %350)
  %352 = load i32, i32* %20, align 4
  store i32 %352, i32* %7, align 4
  br label %354

353:                                              ; preds = %333
  store i32 0, i32* %7, align 4
  br label %354

354:                                              ; preds = %353, %345, %319, %267, %246, %191, %136, %117, %87
  %355 = load i32, i32* %7, align 4
  ret i32 %355
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @devm_fwnode_get_gpiod_from_child(%struct.device*, i32*, %struct.fwnode_handle*, i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i8*) #1

declare dso_local i32* @gpio_to_desc(i32) #1

declare dso_local i32 @gpiod_is_active_low(i32*) #1

declare dso_local i32 @gpiod_set_debounce(i32*, i32) #1

declare dso_local i32 @gpiod_to_irq(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @devm_add_action(%struct.device*, i32, %struct.gpio_button_data*) #1

declare dso_local i32 @devm_request_any_context_irq(%struct.device*, i32, i32, i64, i8*, %struct.gpio_button_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
