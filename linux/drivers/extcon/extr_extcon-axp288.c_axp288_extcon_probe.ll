; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-axp288.c_axp288_extcon_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-axp288.c_axp288_extcon_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i32 }
%struct.axp288_extcon_info = type { i32*, i32, i64, %struct.TYPE_2__, i64, i32, i64, i32, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.axp20x_dev = type { i32, i32 }
%struct.acpi_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXTCON_NONE = common dso_local global i32 0, align 4
@axp288_usb_role_work = common dso_local global i32 0, align 4
@axp288_extcon_id_evt = common dso_local global i32 0, align 4
@axp288_put_role_sw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"INT3496\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"controlling USB role\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"controlling USB role based on Vbus presence\0A\00", align 1
@axp288_extcon_cables = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to allocate memory for extcon\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@EXTCON_IRQ_END = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to get virtual interrupt=%d\0A\00", align 1
@axp288_extcon_isr = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to request interrupt=%d\0A\00", align 1
@system_long_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp288_extcon_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_extcon_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.axp288_extcon_info*, align 8
  %5 = alloca %struct.axp20x_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.axp20x_dev* @dev_get_drvdata(i32 %14)
  store %struct.axp20x_dev* %15, %struct.axp20x_dev** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.axp288_extcon_info* @devm_kzalloc(%struct.device* %19, i32 80, i32 %20)
  store %struct.axp288_extcon_info* %21, %struct.axp288_extcon_info** %4, align 8
  %22 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %23 = icmp ne %struct.axp288_extcon_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %268

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %31 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %30, i32 0, i32 10
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.axp20x_dev*, %struct.axp20x_dev** %5, align 8
  %33 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %36 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  %37 = load %struct.axp20x_dev*, %struct.axp20x_dev** %5, align 8
  %38 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %41 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @EXTCON_NONE, align 4
  %43 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %44 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %46 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %45, i32 0, i32 1
  %47 = load i32, i32* @axp288_usb_role_work, align 4
  %48 = call i32 @INIT_WORK(i32* %46, i32 %47)
  %49 = load i32, i32* @axp288_extcon_id_evt, align 4
  %50 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %51 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %55 = call i32 @platform_set_drvdata(%struct.platform_device* %53, %struct.axp288_extcon_info* %54)
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i64 @usb_role_switch_get(%struct.device* %56)
  %58 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %59 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %61 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @IS_ERR(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %27
  %66 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %67 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @PTR_ERR(i64 %68)
  store i32 %69, i32* %2, align 4
  br label %268

70:                                               ; preds = %27
  %71 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %72 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %111

75:                                               ; preds = %70
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = load i32, i32* @axp288_put_role_sw, align 4
  %78 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %79 = call i32 @devm_add_action_or_reset(%struct.device* %76, i32 %77, %struct.axp288_extcon_info* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %268

84:                                               ; preds = %75
  %85 = call %struct.acpi_device* @acpi_dev_get_first_match_dev(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 -1)
  store %struct.acpi_device* %85, %struct.acpi_device** %7, align 8
  %86 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %87 = icmp ne %struct.acpi_device* %86, null
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %90 = call i32 @acpi_dev_name(%struct.acpi_device* %89)
  %91 = call i64 @extcon_get_extcon_dev(i32 %90)
  %92 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %93 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %92, i32 0, i32 4
  store i64 %91, i64* %93, align 8
  %94 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %95 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %94, i32 0, i32 0
  %96 = call i32 @put_device(i32* %95)
  %97 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %98 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %88
  %102 = load i32, i32* @EPROBE_DEFER, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %268

104:                                              ; preds = %88
  %105 = load %struct.device*, %struct.device** %6, align 8
  %106 = call i32 @dev_info(%struct.device* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %110

107:                                              ; preds = %84
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = call i32 @dev_info(%struct.device* %108, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %70
  %112 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %113 = call i32 @axp288_get_vbus_attach(%struct.axp288_extcon_info* %112)
  %114 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %115 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 8
  %116 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %117 = call i32 @axp288_extcon_log_rsi(%struct.axp288_extcon_info* %116)
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i32, i32* @axp288_extcon_cables, align 4
  %121 = call i64 @devm_extcon_dev_allocate(%struct.device* %119, i32 %120)
  %122 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %123 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %122, i32 0, i32 6
  store i64 %121, i64* %123, align 8
  %124 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %125 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @IS_ERR(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %111
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %133 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %134 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @PTR_ERR(i64 %135)
  store i32 %136, i32* %2, align 4
  br label %268

137:                                              ; preds = %111
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %141 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @devm_extcon_dev_register(%struct.device* %139, i64 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %137
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %2, align 4
  br label %268

151:                                              ; preds = %137
  store i32 0, i32* %9, align 4
  br label %152

152:                                              ; preds = %231, %151
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @EXTCON_IRQ_END, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %234

156:                                              ; preds = %152
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @platform_get_irq(%struct.platform_device* %157, i32 %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %2, align 4
  br label %268

164:                                              ; preds = %156
  %165 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %166 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @regmap_irq_get_virq(i32 %167, i32 %168)
  %170 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %171 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %169, i32* %175, align 4
  %176 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %177 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %164
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = load i32, i32* %10, align 4
  %188 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %186, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  %189 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %190 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %2, align 4
  br label %268

197:                                              ; preds = %164
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %201 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @axp288_extcon_isr, align 4
  %208 = load i32, i32* @IRQF_ONESHOT, align 4
  %209 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %210 = or i32 %208, %209
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %215 = call i32 @devm_request_threaded_irq(%struct.device* %199, i32 %206, i32* null, i32 %207, i32 %210, i32 %213, %struct.axp288_extcon_info* %214)
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %197
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %222 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %220, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %8, align 4
  store i32 %229, i32* %2, align 4
  br label %268

230:                                              ; preds = %197
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %9, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %152

234:                                              ; preds = %152
  %235 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %236 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %234
  %240 = load %struct.device*, %struct.device** %6, align 8
  %241 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %242 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %245 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %244, i32 0, i32 3
  %246 = call i32 @devm_extcon_register_notifier_all(%struct.device* %240, i64 %243, %struct.TYPE_2__* %245)
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %8, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %239
  %250 = load i32, i32* %8, align 4
  store i32 %250, i32* %2, align 4
  br label %268

251:                                              ; preds = %239
  br label %252

252:                                              ; preds = %251, %234
  %253 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %254 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %252
  %258 = load i32, i32* @system_long_wq, align 4
  %259 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %260 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %259, i32 0, i32 1
  %261 = call i32 @queue_work(i32 %258, i32* %260)
  %262 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %263 = getelementptr inbounds %struct.axp288_extcon_info, %struct.axp288_extcon_info* %262, i32 0, i32 1
  %264 = call i32 @flush_work(i32* %263)
  br label %265

265:                                              ; preds = %257, %252
  %266 = load %struct.axp288_extcon_info*, %struct.axp288_extcon_info** %4, align 8
  %267 = call i32 @axp288_extcon_enable(%struct.axp288_extcon_info* %266)
  store i32 0, i32* %2, align 4
  br label %268

268:                                              ; preds = %265, %249, %218, %184, %162, %146, %129, %101, %82, %65, %24
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local %struct.axp20x_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.axp288_extcon_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.axp288_extcon_info*) #1

declare dso_local i64 @usb_role_switch_get(%struct.device*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.axp288_extcon_info*) #1

declare dso_local %struct.acpi_device* @acpi_dev_get_first_match_dev(i8*, i32*, i32) #1

declare dso_local i64 @extcon_get_extcon_dev(i32) #1

declare dso_local i32 @acpi_dev_name(%struct.acpi_device*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @axp288_get_vbus_attach(%struct.axp288_extcon_info*) #1

declare dso_local i32 @axp288_extcon_log_rsi(%struct.axp288_extcon_info*) #1

declare dso_local i64 @devm_extcon_dev_allocate(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.device*, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.axp288_extcon_info*) #1

declare dso_local i32 @devm_extcon_register_notifier_all(%struct.device*, i64, %struct.TYPE_2__*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @axp288_extcon_enable(%struct.axp288_extcon_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
