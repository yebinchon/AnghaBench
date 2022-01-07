; ModuleID = '/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gnss/extr_sirf.c_sirf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gnss_device = type { i32*, i32 }
%struct.sirf_data = type { i32, i32, %struct.gnss_device*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.serdev_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GNSS_TYPE_SIRF = common dso_local global i32 0, align 4
@sirf_gnss_ops = common dso_local global i32 0, align 4
@sirf_serdev_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lna\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sirf,onoff\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"sirf,wakeup\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@SIRF_BOOT_DELAY = common dso_local global i32 0, align 4
@sirf_wakeup_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@SIRF_REPORT_CYCLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"failed to set hibernate mode: %d\0A\00", align 1
@CONFIG_PM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @sirf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_probe(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gnss_device*, align 8
  %6 = alloca %struct.sirf_data*, align 8
  %7 = alloca i32, align 4
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %8 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %9 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sirf_data* @devm_kzalloc(%struct.device* %10, i32 72, i32 %11)
  store %struct.sirf_data* %12, %struct.sirf_data** %6, align 8
  %13 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %14 = icmp ne %struct.sirf_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %275

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.gnss_device* @gnss_allocate_device(%struct.device* %19)
  store %struct.gnss_device* %20, %struct.gnss_device** %5, align 8
  %21 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %22 = icmp ne %struct.gnss_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %275

26:                                               ; preds = %18
  %27 = load i32, i32* @GNSS_TYPE_SIRF, align 4
  %28 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %29 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %31 = getelementptr inbounds %struct.gnss_device, %struct.gnss_device* %30, i32 0, i32 0
  store i32* @sirf_gnss_ops, i32** %31, align 8
  %32 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %33 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %34 = call i32 @gnss_set_drvdata(%struct.gnss_device* %32, %struct.sirf_data* %33)
  %35 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %36 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %37 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %36, i32 0, i32 10
  store %struct.serdev_device* %35, %struct.serdev_device** %37, align 8
  %38 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %39 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %40 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %39, i32 0, i32 2
  store %struct.gnss_device* %38, %struct.gnss_device** %40, align 8
  %41 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %42 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %41, i32 0, i32 9
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %45 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %44, i32 0, i32 8
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %48 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %47, i32 0, i32 7
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %51 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %52 = call i32 @serdev_device_set_drvdata(%struct.serdev_device* %50, %struct.sirf_data* %51)
  %53 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %54 = call i32 @serdev_device_set_client_ops(%struct.serdev_device* %53, i32* @sirf_serdev_ops)
  %55 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %56 = call i32 @sirf_parse_dt(%struct.serdev_device* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %26
  br label %269

60:                                               ; preds = %26
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i8* @devm_regulator_get(%struct.device* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %64 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %66 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %72 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %7, align 4
  br label %269

75:                                               ; preds = %60
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = call i8* @devm_regulator_get(%struct.device* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %79 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %81 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %80, i32 0, i32 6
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %87 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %86, i32 0, i32 6
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %7, align 4
  br label %269

90:                                               ; preds = %75
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %93 = call i8* @devm_gpiod_get_optional(%struct.device* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %95 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %97 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @IS_ERR(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  br label %269

102:                                              ; preds = %90
  %103 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %104 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %130

107:                                              ; preds = %102
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load i32, i32* @GPIOD_IN, align 4
  %110 = call i8* @devm_gpiod_get_optional(%struct.device* %108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %112 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  %113 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %114 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %113, i32 0, i32 5
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @IS_ERR(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %269

119:                                              ; preds = %107
  %120 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %121 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @regulator_enable(i8* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %269

127:                                              ; preds = %119
  %128 = load i32, i32* @SIRF_BOOT_DELAY, align 4
  %129 = call i32 @msleep(i32 %128)
  br label %130

130:                                              ; preds = %127, %102
  %131 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %132 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %131, i32 0, i32 5
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %173

135:                                              ; preds = %130
  %136 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %137 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %136, i32 0, i32 5
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @gpiod_get_value_cansleep(i8* %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %258

143:                                              ; preds = %135
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %146 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %148 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %147, i32 0, i32 5
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @gpiod_to_irq(i8* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %258

154:                                              ; preds = %143
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %157 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %159 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @sirf_wakeup_handler, align 4
  %162 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %163 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @IRQF_ONESHOT, align 4
  %166 = or i32 %164, %165
  %167 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %168 = call i32 @request_threaded_irq(i32 %160, i32* null, i32 %161, i32 %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.sirf_data* %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %154
  br label %258

172:                                              ; preds = %154
  br label %173

173:                                              ; preds = %172, %130
  %174 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %175 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %174, i32 0, i32 4
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %212

178:                                              ; preds = %173
  %179 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %180 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %179, i32 0, i32 5
  %181 = load i8*, i8** %180, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %196, label %183

183:                                              ; preds = %178
  %184 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %185 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  %186 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %187 = call i32 @sirf_serdev_open(%struct.sirf_data* %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %258

191:                                              ; preds = %183
  %192 = load i32, i32* @SIRF_REPORT_CYCLE, align 4
  %193 = call i32 @msleep(i32 %192)
  %194 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %195 = call i32 @sirf_serdev_close(%struct.sirf_data* %194)
  br label %196

196:                                              ; preds = %191, %178
  %197 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %198 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %196
  %202 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %203 = call i32 @sirf_set_active(%struct.sirf_data* %202, i32 0)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.device*, %struct.device** %4, align 8
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @dev_err(%struct.device* %207, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %208)
  br label %246

210:                                              ; preds = %201
  br label %211

211:                                              ; preds = %210, %196
  br label %212

212:                                              ; preds = %211, %173
  %213 = load i32, i32* @CONFIG_PM, align 4
  %214 = call i64 @IS_ENABLED(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load %struct.device*, %struct.device** %4, align 8
  %218 = call i32 @pm_runtime_set_suspended(%struct.device* %217)
  %219 = load %struct.device*, %struct.device** %4, align 8
  %220 = call i32 @pm_runtime_enable(%struct.device* %219)
  br label %228

221:                                              ; preds = %212
  %222 = load %struct.device*, %struct.device** %4, align 8
  %223 = call i32 @sirf_runtime_resume(%struct.device* %222)
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  br label %246

227:                                              ; preds = %221
  br label %228

228:                                              ; preds = %227, %216
  %229 = load %struct.gnss_device*, %struct.gnss_device** %5, align 8
  %230 = call i32 @gnss_register_device(%struct.gnss_device* %229)
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %235

234:                                              ; preds = %228
  store i32 0, i32* %2, align 4
  br label %275

235:                                              ; preds = %233
  %236 = load i32, i32* @CONFIG_PM, align 4
  %237 = call i64 @IS_ENABLED(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load %struct.device*, %struct.device** %4, align 8
  %241 = call i32 @pm_runtime_disable(%struct.device* %240)
  br label %245

242:                                              ; preds = %235
  %243 = load %struct.device*, %struct.device** %4, align 8
  %244 = call i32 @sirf_runtime_suspend(%struct.device* %243)
  br label %245

245:                                              ; preds = %242, %239
  br label %246

246:                                              ; preds = %245, %226, %206
  %247 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %248 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %247, i32 0, i32 5
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %253 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %256 = call i32 @free_irq(i32 %254, %struct.sirf_data* %255)
  br label %257

257:                                              ; preds = %251, %246
  br label %258

258:                                              ; preds = %257, %190, %171, %153, %142
  %259 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %260 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %259, i32 0, i32 4
  %261 = load i8*, i8** %260, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %265 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %264, i32 0, i32 3
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @regulator_disable(i8* %266)
  br label %268

268:                                              ; preds = %263, %258
  br label %269

269:                                              ; preds = %268, %126, %118, %101, %85, %70, %59
  %270 = load %struct.sirf_data*, %struct.sirf_data** %6, align 8
  %271 = getelementptr inbounds %struct.sirf_data, %struct.sirf_data* %270, i32 0, i32 2
  %272 = load %struct.gnss_device*, %struct.gnss_device** %271, align 8
  %273 = call i32 @gnss_put_device(%struct.gnss_device* %272)
  %274 = load i32, i32* %7, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %269, %234, %23, %15
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local %struct.sirf_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.gnss_device* @gnss_allocate_device(%struct.device*) #1

declare dso_local i32 @gnss_set_drvdata(%struct.gnss_device*, %struct.sirf_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @serdev_device_set_drvdata(%struct.serdev_device*, %struct.sirf_data*) #1

declare dso_local i32 @serdev_device_set_client_ops(%struct.serdev_device*, i32*) #1

declare dso_local i32 @sirf_parse_dt(%struct.serdev_device*) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_get_value_cansleep(i8*) #1

declare dso_local i32 @gpiod_to_irq(i8*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.sirf_data*) #1

declare dso_local i32 @sirf_serdev_open(%struct.sirf_data*) #1

declare dso_local i32 @sirf_serdev_close(%struct.sirf_data*) #1

declare dso_local i32 @sirf_set_active(%struct.sirf_data*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @sirf_runtime_resume(%struct.device*) #1

declare dso_local i32 @gnss_register_device(%struct.gnss_device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @sirf_runtime_suspend(%struct.device*) #1

declare dso_local i32 @free_irq(i32, %struct.sirf_data*) #1

declare dso_local i32 @regulator_disable(i8*) #1

declare dso_local i32 @gnss_put_device(%struct.gnss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
