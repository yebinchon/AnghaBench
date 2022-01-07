; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max14577.c_max14577_muic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.max14577 = type { i32, i32, i32 }
%struct.max14577_muic_info = type { i32, i32, %struct.TYPE_7__*, %struct.max14577*, i32, i32, i32, i32, %struct.max14577_muic_irq*, i32, i32 }
%struct.max14577_muic_irq = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max14577_muic_irq_work = common dso_local global i32 0, align 4
@max77836_muic_irqs = common dso_local global i8* null, align 8
@max14577_muic_irqs = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@max14577_muic_irq_handler = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", align 1
@max14577_extcon_cable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to allocate memory for extcon\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@CTRL1_SW_USB = common dso_local global i32 0, align 4
@CTRL1_SW_UART = common dso_local global i32 0, align 4
@DELAY_MS_DEFAULT = common dso_local global i32 0, align 4
@MAX14577_MUIC_REG_STATUS1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot read STATUS registers\0A\00", align 1
@MAX14577_CABLE_GROUP_ADC = common dso_local global i32 0, align 4
@MAX14577_MUIC_ADC_FACTORY_MODE_UART_OFF = common dso_local global i32 0, align 4
@MAX14577_REG_DEVICEID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to read revision number\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"device ID : 0x%x\0A\00", align 1
@ADC_DEBOUNCE_TIME_25MS = common dso_local global i32 0, align 4
@max14577_muic_detect_cable_wq = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max14577_muic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_muic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max14577*, align 8
  %5 = alloca %struct.max14577_muic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.max14577_muic_irq*, align 8
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.max14577* @dev_get_drvdata(i32 %17)
  store %struct.max14577* %18, %struct.max14577** %4, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.max14577_muic_info* @devm_kzalloc(%struct.TYPE_7__* %20, i32 56, i32 %21)
  store %struct.max14577_muic_info* %22, %struct.max14577_muic_info** %5, align 8
  %23 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %24 = icmp ne %struct.max14577_muic_info* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %234

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %32 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %31, i32 0, i32 2
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %32, align 8
  %33 = load %struct.max14577*, %struct.max14577** %4, align 8
  %34 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %35 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %34, i32 0, i32 3
  store %struct.max14577* %33, %struct.max14577** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.max14577_muic_info* %37)
  %39 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %40 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %39, i32 0, i32 10
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %43 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %42, i32 0, i32 9
  %44 = load i32, i32* @max14577_muic_irq_work, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.max14577*, %struct.max14577** %4, align 8
  %47 = getelementptr inbounds %struct.max14577, %struct.max14577* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %60 [
    i32 128, label %49
    i32 129, label %59
  ]

49:                                               ; preds = %28
  %50 = load i8*, i8** @max77836_muic_irqs, align 8
  %51 = bitcast i8* %50 to %struct.max14577_muic_irq*
  %52 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %53 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %52, i32 0, i32 8
  store %struct.max14577_muic_irq* %51, %struct.max14577_muic_irq** %53, align 8
  %54 = load i8*, i8** @max77836_muic_irqs, align 8
  %55 = call i8* @ARRAY_SIZE(i8* %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %58 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %70

59:                                               ; preds = %28
  br label %60

60:                                               ; preds = %28, %59
  %61 = load i8*, i8** @max14577_muic_irqs, align 8
  %62 = bitcast i8* %61 to %struct.max14577_muic_irq*
  %63 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %64 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %63, i32 0, i32 8
  store %struct.max14577_muic_irq* %62, %struct.max14577_muic_irq** %64, align 8
  %65 = load i8*, i8** @max14577_muic_irqs, align 8
  %66 = call i8* @ARRAY_SIZE(i8* %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %69 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %60, %49
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %122, %70
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %74 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %125

77:                                               ; preds = %71
  %78 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %79 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %78, i32 0, i32 8
  %80 = load %struct.max14577_muic_irq*, %struct.max14577_muic_irq** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.max14577_muic_irq, %struct.max14577_muic_irq* %80, i64 %82
  store %struct.max14577_muic_irq* %83, %struct.max14577_muic_irq** %12, align 8
  store i32 0, i32* %13, align 4
  %84 = load %struct.max14577*, %struct.max14577** %4, align 8
  %85 = getelementptr inbounds %struct.max14577, %struct.max14577* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.max14577_muic_irq*, %struct.max14577_muic_irq** %12, align 8
  %88 = getelementptr inbounds %struct.max14577_muic_irq, %struct.max14577_muic_irq* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @regmap_irq_get_virq(i32 %86, i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp sle i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %234

96:                                               ; preds = %77
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.max14577_muic_irq*, %struct.max14577_muic_irq** %12, align 8
  %99 = getelementptr inbounds %struct.max14577_muic_irq, %struct.max14577_muic_irq* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @max14577_muic_irq_handler, align 4
  %104 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %105 = load %struct.max14577_muic_irq*, %struct.max14577_muic_irq** %12, align 8
  %106 = getelementptr inbounds %struct.max14577_muic_irq, %struct.max14577_muic_irq* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %109 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %101, i32 %102, i32* null, i32 %103, i32 %104, i32 %107, %struct.max14577_muic_info* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %96
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.max14577_muic_irq*, %struct.max14577_muic_irq** %12, align 8
  %116 = getelementptr inbounds %struct.max14577_muic_irq, %struct.max14577_muic_irq* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %114, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  br label %234

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %71

125:                                              ; preds = %71
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = load i32, i32* @max14577_extcon_cable, align 4
  %129 = call i32 @devm_extcon_dev_allocate(%struct.TYPE_7__* %127, i32 %128)
  %130 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %131 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 4
  %132 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %133 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @IS_ERR(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %125
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %234

143:                                              ; preds = %125
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %147 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @devm_extcon_dev_register(%struct.TYPE_7__* %145, i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %2, align 4
  br label %234

157:                                              ; preds = %143
  %158 = load i32, i32* @CTRL1_SW_USB, align 4
  %159 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %160 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %159, i32 0, i32 6
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @CTRL1_SW_UART, align 4
  %162 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %163 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @DELAY_MS_DEFAULT, align 4
  %165 = call i32 @msecs_to_jiffies(i32 %164)
  store i32 %165, i32* %6, align 4
  %166 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %167 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %166, i32 0, i32 3
  %168 = load %struct.max14577*, %struct.max14577** %167, align 8
  %169 = getelementptr inbounds %struct.max14577, %struct.max14577* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @MAX14577_MUIC_REG_STATUS1, align 4
  %172 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %173 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @max14577_bulk_read(i32 %170, i32 %171, i32 %174, i32 2)
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %157
  %179 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %180 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %179, i32 0, i32 2
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %183 = load i32, i32* %9, align 4
  store i32 %183, i32* %2, align 4
  br label %234

184:                                              ; preds = %157
  %185 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %186 = load i32, i32* @MAX14577_CABLE_GROUP_ADC, align 4
  %187 = call i32 @max14577_muic_get_cable_type(%struct.max14577_muic_info* %185, i32 %186, i32* %8)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %184
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @MAX14577_MUIC_ADC_FACTORY_MODE_UART_OFF, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %196 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %197 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @max14577_muic_set_path(%struct.max14577_muic_info* %195, i32 %198, i32 1)
  br label %200

200:                                              ; preds = %194, %190, %184
  %201 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %202 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %201, i32 0, i32 3
  %203 = load %struct.max14577*, %struct.max14577** %202, align 8
  %204 = getelementptr inbounds %struct.max14577, %struct.max14577* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @MAX14577_REG_DEVICEID, align 4
  %207 = call i32 @max14577_read_reg(i32 %205, i32 %206, i32* %11)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %200
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %212, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %214 = load i32, i32* %9, align 4
  store i32 %214, i32* %2, align 4
  br label %234

215:                                              ; preds = %200
  %216 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %217 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %216, i32 0, i32 2
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = call i32 @dev_info(%struct.TYPE_7__* %218, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %219)
  %221 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %222 = load i32, i32* @ADC_DEBOUNCE_TIME_25MS, align 4
  %223 = call i32 @max14577_muic_set_debounce_time(%struct.max14577_muic_info* %221, i32 %222)
  %224 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %225 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %224, i32 0, i32 1
  %226 = load i32, i32* @max14577_muic_detect_cable_wq, align 4
  %227 = call i32 @INIT_DELAYED_WORK(i32* %225, i32 %226)
  %228 = load i32, i32* @system_power_efficient_wq, align 4
  %229 = load %struct.max14577_muic_info*, %struct.max14577_muic_info** %5, align 8
  %230 = getelementptr inbounds %struct.max14577_muic_info, %struct.max14577_muic_info* %229, i32 0, i32 1
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @queue_delayed_work(i32 %228, i32* %230, i32 %231)
  %233 = load i32, i32* %9, align 4
  store i32 %233, i32* %2, align 4
  br label %234

234:                                              ; preds = %215, %210, %178, %152, %137, %112, %93, %25
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local %struct.max14577* @dev_get_drvdata(i32) #1

declare dso_local %struct.max14577_muic_info* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max14577_muic_info*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i32, i32*, i32, i32, i32, %struct.max14577_muic_info*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @devm_extcon_dev_allocate(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @max14577_bulk_read(i32, i32, i32, i32) #1

declare dso_local i32 @max14577_muic_get_cable_type(%struct.max14577_muic_info*, i32, i32*) #1

declare dso_local i32 @max14577_muic_set_path(%struct.max14577_muic_info*, i32, i32) #1

declare dso_local i32 @max14577_read_reg(i32, i32, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @max14577_muic_set_debounce_time(%struct.max14577_muic_info*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
