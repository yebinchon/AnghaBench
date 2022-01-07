; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_snvs_pwrkey.c_imx_snvs_pwrkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_snvs_pwrkey.c_imx_snvs_pwrkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pwrkey_drv_data = type { i64, i32, %struct.input_dev*, i32, i32, i32 }
%struct.input_dev = type { i8*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"regmap\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't get snvs syscon\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"linux,keycode\00", align 1
@KEY_POWER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"KEY_POWER without setting in dts\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNVS_LPCR_REG = common dso_local global i32 0, align 4
@SNVS_LPCR_DEP_EN = common dso_local global i32 0, align 4
@SNVS_LPSR_REG = common dso_local global i32 0, align 4
@SNVS_LPSR_SPO = common dso_local global i32 0, align 4
@imx_imx_snvs_check_for_events = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to allocate the input device\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"snvs-pwrkey/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@imx_snvs_pwrkey_act = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to register remove action\0A\00", align 1
@imx_snvs_pwrkey_interrupt = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"interrupt not available.\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"irq wake enable failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_snvs_pwrkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_snvs_pwrkey_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pwrkey_drv_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.pwrkey_drv_data* null, %struct.pwrkey_drv_data** %4, align 8
  store %struct.input_dev* null, %struct.input_dev** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %188

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pwrkey_drv_data* @devm_kzalloc(%struct.TYPE_11__* %19, i32 40, i32 %20)
  store %struct.pwrkey_drv_data* %21, %struct.pwrkey_drv_data** %4, align 8
  %22 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %23 = icmp ne %struct.pwrkey_drv_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %188

27:                                               ; preds = %17
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %31 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %33 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(%struct.TYPE_11__* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %42 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %188

45:                                               ; preds = %27
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %48 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %47, i32 0, i32 3
  %49 = call i64 @of_property_read_u32(%struct.device_node* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @KEY_POWER, align 4
  %53 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %54 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_warn(%struct.TYPE_11__* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %51, %45
  %59 = load %struct.device_node*, %struct.device_node** %6, align 8
  %60 = call i32 @of_property_read_bool(%struct.device_node* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %62 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = call i64 @platform_get_irq(%struct.platform_device* %63, i32 0)
  %65 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %66 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %68 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %188

74:                                               ; preds = %58
  %75 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %76 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SNVS_LPCR_REG, align 4
  %79 = load i32, i32* @SNVS_LPCR_DEP_EN, align 4
  %80 = load i32, i32* @SNVS_LPCR_DEP_EN, align 4
  %81 = call i32 @regmap_update_bits(i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %83 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @SNVS_LPSR_REG, align 4
  %86 = load i32, i32* @SNVS_LPSR_SPO, align 4
  %87 = call i32 @regmap_write(i32 %84, i32 %85, i32 %86)
  %88 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %89 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %88, i32 0, i32 4
  %90 = load i32, i32* @imx_imx_snvs_check_for_events, align 4
  %91 = call i32 @timer_setup(i32* %89, i32 %90, i32 0)
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_11__* %93)
  store %struct.input_dev* %94, %struct.input_dev** %5, align 8
  %95 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %96 = icmp ne %struct.input_dev* %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %74
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @dev_err(%struct.TYPE_11__* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %188

103:                                              ; preds = %74
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %110 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %110, align 8
  %111 = load i32, i32* @BUS_HOST, align 4
  %112 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %113 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %116 = load i32, i32* @EV_KEY, align 4
  %117 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %118 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @input_set_capability(%struct.input_dev* %115, i32 %116, i32 %119)
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load i32, i32* @imx_snvs_pwrkey_act, align 4
  %124 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %125 = call i32 @devm_add_action(%struct.TYPE_11__* %122, i32 %123, %struct.pwrkey_drv_data* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %103
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @dev_err(%struct.TYPE_11__* %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %188

133:                                              ; preds = %103
  %134 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %135 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %136 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %135, i32 0, i32 2
  store %struct.input_dev* %134, %struct.input_dev** %136, align 8
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %139 = call i32 @platform_set_drvdata(%struct.platform_device* %137, %struct.pwrkey_drv_data* %138)
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %143 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* @imx_snvs_pwrkey_interrupt, align 4
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = call i32 @devm_request_irq(%struct.TYPE_11__* %141, i64 %144, i32 %145, i32 0, i32 %148, %struct.platform_device* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %133
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @dev_err(%struct.TYPE_11__* %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %2, align 4
  br label %188

158:                                              ; preds = %133
  %159 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %160 = call i32 @input_register_device(%struct.input_dev* %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = call i32 @dev_err(%struct.TYPE_11__* %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %2, align 4
  br label %188

168:                                              ; preds = %158
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %172 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @device_init_wakeup(%struct.TYPE_11__* %170, i32 %173)
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load %struct.pwrkey_drv_data*, %struct.pwrkey_drv_data** %4, align 8
  %178 = getelementptr inbounds %struct.pwrkey_drv_data, %struct.pwrkey_drv_data* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @dev_pm_set_wake_irq(%struct.TYPE_11__* %176, i64 %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %168
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call i32 @dev_err(%struct.TYPE_11__* %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %187

187:                                              ; preds = %183, %168
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %187, %163, %153, %128, %97, %71, %37, %24, %14
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.pwrkey_drv_data* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.TYPE_11__*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_add_action(%struct.TYPE_11__*, i32, %struct.pwrkey_drv_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pwrkey_drv_data*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i64, i32, i32, i32, %struct.platform_device*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dev_pm_set_wake_irq(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
