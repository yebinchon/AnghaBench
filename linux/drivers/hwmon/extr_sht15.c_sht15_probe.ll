; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.sht15_data = type { i32, i8*, %struct.TYPE_9__, i8*, %struct.TYPE_10__*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sht15_bh_read_data = common dso_local global i32 0, align 4
@sht15_update_voltage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@sht15_invalidate_voltage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"regulator notifier request failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"clock line GPIO request failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"data line GPIO request failed\0A\00", align 1
@sht15_interrupt_fired = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"sht15 data\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"failed to get irq for data line\0A\00", align 1
@sht15_attr_group = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"sysfs create failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sht15_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sht15_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.sht15_data* @devm_kzalloc(%struct.TYPE_10__* %8, i32 72, i32 %9)
  store %struct.sht15_data* %10, %struct.sht15_data** %5, align 8
  %11 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %12 = icmp ne %struct.sht15_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %222

16:                                               ; preds = %1
  %17 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %18 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %17, i32 0, i32 10
  %19 = load i32, i32* @sht15_bh_read_data, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %22 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %21, i32 0, i32 9
  %23 = load i32, i32* @sht15_update_voltage, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.sht15_data* %26)
  %28 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %29 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %28, i32 0, i32 8
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %34 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %33, i32 0, i32 4
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %34, align 8
  %35 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %36 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %35, i32 0, i32 7
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %39 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %38, i32 0, i32 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = call i8* @devm_regulator_get_optional(%struct.TYPE_10__* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %43 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %45 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %95, label %49

49:                                               ; preds = %16
  %50 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %51 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @regulator_get_voltage(i8* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %59 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %62 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @regulator_enable(i8* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* %4, align 4
  %71 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %222

73:                                               ; preds = %60
  %74 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %75 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32* @sht15_invalidate_voltage, i32** %76, align 8
  %77 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %78 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %81 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %80, i32 0, i32 2
  %82 = call i32 @regulator_register_notifier(i8* %79, %struct.TYPE_9__* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %73
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %90 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @regulator_disable(i8* %91)
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %222

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94, %16
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %99 = call i8* @devm_gpiod_get(%struct.TYPE_10__* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %101 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %100, i32 0, i32 6
  store i8* %99, i8** %101, align 8
  %102 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %103 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %102, i32 0, i32 6
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @IS_ERR(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %95
  %108 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %109 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %108, i32 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @PTR_ERR(i8* %110)
  store i32 %111, i32* %4, align 4
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %203

115:                                              ; preds = %95
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load i32, i32* @GPIOD_IN, align 4
  %119 = call i8* @devm_gpiod_get(%struct.TYPE_10__* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %121 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %123 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %122, i32 0, i32 5
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @IS_ERR(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %115
  %128 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %129 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %128, i32 0, i32 5
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @PTR_ERR(i8* %130)
  store i32 %131, i32* %4, align 4
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %203

135:                                              ; preds = %115
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %139 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %138, i32 0, i32 5
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @gpiod_to_irq(i8* %140)
  %142 = load i32, i32* @sht15_interrupt_fired, align 4
  %143 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %144 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %145 = call i32 @devm_request_irq(%struct.TYPE_10__* %137, i32 %141, i32 %142, i32 %143, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), %struct.sht15_data* %144)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %135
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %150, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %203

152:                                              ; preds = %135
  %153 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %154 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %153, i32 0, i32 5
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @gpiod_to_irq(i8* %155)
  %157 = call i32 @disable_irq_nosync(i32 %156)
  %158 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %159 = call i32 @sht15_connection_reset(%struct.sht15_data* %158)
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %203

163:                                              ; preds = %152
  %164 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %165 = call i32 @sht15_soft_reset(%struct.sht15_data* %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %203

169:                                              ; preds = %163
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = call i32 @sysfs_create_group(i32* %172, i32* @sht15_attr_group)
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %178, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %203

180:                                              ; preds = %169
  %181 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %182 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %181, i32 0, i32 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = call i8* @hwmon_device_register(%struct.TYPE_10__* %183)
  %185 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %186 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  %187 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %188 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @IS_ERR(i8* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %180
  %193 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %194 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %193, i32 0, i32 3
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @PTR_ERR(i8* %195)
  store i32 %196, i32* %4, align 4
  br label %198

197:                                              ; preds = %180
  store i32 0, i32* %2, align 4
  br label %222

198:                                              ; preds = %192
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = call i32 @sysfs_remove_group(i32* %201, i32* @sht15_attr_group)
  br label %203

203:                                              ; preds = %198, %176, %168, %162, %148, %127, %107
  %204 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %205 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = call i64 @IS_ERR(i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %220, label %209

209:                                              ; preds = %203
  %210 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %211 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %210, i32 0, i32 1
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %214 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %213, i32 0, i32 2
  %215 = call i32 @regulator_unregister_notifier(i8* %212, %struct.TYPE_9__* %214)
  %216 = load %struct.sht15_data*, %struct.sht15_data** %5, align 8
  %217 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @regulator_disable(i8* %218)
  br label %220

220:                                              ; preds = %209, %203
  %221 = load i32, i32* %4, align 4
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %220, %197, %85, %67, %13
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local %struct.sht15_data* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sht15_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @devm_regulator_get_optional(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @regulator_get_voltage(i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @regulator_register_notifier(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @regulator_disable(i8*) #1

declare dso_local i8* @devm_gpiod_get(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i8*, %struct.sht15_data*) #1

declare dso_local i32 @gpiod_to_irq(i8*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @sht15_connection_reset(%struct.sht15_data*) #1

declare dso_local i32 @sht15_soft_reset(%struct.sht15_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i8* @hwmon_device_register(%struct.TYPE_10__*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @regulator_unregister_notifier(i8*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
