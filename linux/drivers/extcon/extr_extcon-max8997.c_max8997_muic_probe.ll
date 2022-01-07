; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-max8997.c_max8997_muic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_muic_irq = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.max8997_dev = type { i32, i32, i32 }
%struct.max8997_platform_data = type { %struct.max8997_muic_platform_data* }
%struct.max8997_muic_platform_data = type { i32, i64, i8*, i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.max8997_muic_info = type { i32, i8*, %struct.TYPE_7__*, i32, i32, i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max8997_muic_irq_work = common dso_local global i32 0, align 4
@muic_irqs = common dso_local global %struct.max8997_muic_irq* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@max8997_muic_irq_handler = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed: irq request (IRQ: %d, error :%d)\0A\00", align 1
@max8997_extcon_cable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to allocate memory for extcon\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to register extcon device\0A\00", align 1
@CONTROL1_SW_UART = common dso_local global i8* null, align 8
@CONTROL1_SW_USB = common dso_local global i8* null, align 8
@DELAY_MS_DEFAULT = common dso_local global i64 0, align 8
@MAX8997_MUIC_REG_STATUS1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to read MUIC register\0A\00", align 1
@MAX8997_CABLE_GROUP_ADC = common dso_local global i32 0, align 4
@MAX8997_MUIC_ADC_FACTORY_MODE_UART_OFF = common dso_local global i32 0, align 4
@ADC_DEBOUNCE_TIME_25MS = common dso_local global i32 0, align 4
@max8997_muic_detect_cable_wq = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8997_muic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_muic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8997_dev*, align 8
  %5 = alloca %struct.max8997_platform_data*, align 8
  %6 = alloca %struct.max8997_muic_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.max8997_muic_irq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.max8997_muic_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.max8997_dev* @dev_get_drvdata(i32 %18)
  store %struct.max8997_dev* %19, %struct.max8997_dev** %4, align 8
  %20 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %21 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.max8997_platform_data* @dev_get_platdata(i32 %22)
  store %struct.max8997_platform_data* %23, %struct.max8997_platform_data** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.max8997_muic_info* @devm_kzalloc(%struct.TYPE_7__* %25, i32 56, i32 %26)
  store %struct.max8997_muic_info* %27, %struct.max8997_muic_info** %6, align 8
  %28 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %29 = icmp ne %struct.max8997_muic_info* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %289

33:                                               ; preds = %1
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %37 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %36, i32 0, i32 2
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %37, align 8
  %38 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %39 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %42 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.max8997_muic_info* %44)
  %46 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %47 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %46, i32 0, i32 8
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %50 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %49, i32 0, i32 7
  %51 = load i32, i32* @max8997_muic_irq_work, align 4
  %52 = call i32 @INIT_WORK(i32* %50, i32 %51)
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %98, %33
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.max8997_muic_irq*, %struct.max8997_muic_irq** @muic_irqs, align 8
  %56 = call i32 @ARRAY_SIZE(%struct.max8997_muic_irq* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %53
  %59 = load %struct.max8997_muic_irq*, %struct.max8997_muic_irq** @muic_irqs, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.max8997_muic_irq, %struct.max8997_muic_irq* %59, i64 %61
  store %struct.max8997_muic_irq* %62, %struct.max8997_muic_irq** %12, align 8
  store i32 0, i32* %13, align 4
  %63 = load %struct.max8997_dev*, %struct.max8997_dev** %4, align 8
  %64 = getelementptr inbounds %struct.max8997_dev, %struct.max8997_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.max8997_muic_irq*, %struct.max8997_muic_irq** %12, align 8
  %67 = getelementptr inbounds %struct.max8997_muic_irq, %struct.max8997_muic_irq* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @irq_create_mapping(i32 %65, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %58
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %273

75:                                               ; preds = %58
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.max8997_muic_irq*, %struct.max8997_muic_irq** %12, align 8
  %78 = getelementptr inbounds %struct.max8997_muic_irq, %struct.max8997_muic_irq* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @max8997_muic_irq_handler, align 4
  %81 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %82 = load %struct.max8997_muic_irq*, %struct.max8997_muic_irq** %12, align 8
  %83 = getelementptr inbounds %struct.max8997_muic_irq, %struct.max8997_muic_irq* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %86 = call i32 @request_threaded_irq(i32 %79, i32* null, i32 %80, i32 %81, i32 %84, %struct.max8997_muic_info* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %75
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = load %struct.max8997_muic_irq*, %struct.max8997_muic_irq** %12, align 8
  %93 = getelementptr inbounds %struct.max8997_muic_irq, %struct.max8997_muic_irq* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  br label %273

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %53

101:                                              ; preds = %53
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load i32, i32* @max8997_extcon_cable, align 4
  %105 = call i32 @devm_extcon_dev_allocate(%struct.TYPE_7__* %103, i32 %104)
  %106 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %107 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %109 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %101
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %115, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %273

119:                                              ; preds = %101
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %123 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @devm_extcon_dev_register(%struct.TYPE_7__* %121, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %273

132:                                              ; preds = %119
  %133 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %134 = icmp ne %struct.max8997_platform_data* %133, null
  br i1 %134, label %135, label %218

135:                                              ; preds = %132
  %136 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %137 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %136, i32 0, i32 0
  %138 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %137, align 8
  %139 = icmp ne %struct.max8997_muic_platform_data* %138, null
  br i1 %139, label %140, label %218

140:                                              ; preds = %135
  %141 = load %struct.max8997_platform_data*, %struct.max8997_platform_data** %5, align 8
  %142 = getelementptr inbounds %struct.max8997_platform_data, %struct.max8997_platform_data* %141, i32 0, i32 0
  %143 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %142, align 8
  store %struct.max8997_muic_platform_data* %143, %struct.max8997_muic_platform_data** %14, align 8
  store i32 0, i32* %11, align 4
  br label %144

144:                                              ; preds = %171, %140
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %14, align 8
  %147 = getelementptr inbounds %struct.max8997_muic_platform_data, %struct.max8997_muic_platform_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %174

150:                                              ; preds = %144
  %151 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %152 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %14, align 8
  %155 = getelementptr inbounds %struct.max8997_muic_platform_data, %struct.max8997_muic_platform_data* %154, i32 0, i32 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %14, align 8
  %163 = getelementptr inbounds %struct.max8997_muic_platform_data, %struct.max8997_muic_platform_data* %162, i32 0, i32 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @max8997_write_reg(i32 %153, i32 %161, i32 %169)
  br label %171

171:                                              ; preds = %150
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %144

174:                                              ; preds = %144
  %175 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %14, align 8
  %176 = getelementptr inbounds %struct.max8997_muic_platform_data, %struct.max8997_muic_platform_data* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %14, align 8
  %181 = getelementptr inbounds %struct.max8997_muic_platform_data, %struct.max8997_muic_platform_data* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %184 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  br label %189

185:                                              ; preds = %174
  %186 = load i8*, i8** @CONTROL1_SW_UART, align 8
  %187 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %188 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %187, i32 0, i32 1
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %185, %179
  %190 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %14, align 8
  %191 = getelementptr inbounds %struct.max8997_muic_platform_data, %struct.max8997_muic_platform_data* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %189
  %195 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %14, align 8
  %196 = getelementptr inbounds %struct.max8997_muic_platform_data, %struct.max8997_muic_platform_data* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %199 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %198, i32 0, i32 5
  store i8* %197, i8** %199, align 8
  br label %204

200:                                              ; preds = %189
  %201 = load i8*, i8** @CONTROL1_SW_USB, align 8
  %202 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %203 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %202, i32 0, i32 5
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %200, %194
  %205 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %14, align 8
  %206 = getelementptr inbounds %struct.max8997_muic_platform_data, %struct.max8997_muic_platform_data* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load %struct.max8997_muic_platform_data*, %struct.max8997_muic_platform_data** %14, align 8
  %211 = getelementptr inbounds %struct.max8997_muic_platform_data, %struct.max8997_muic_platform_data* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @msecs_to_jiffies(i64 %212)
  store i32 %213, i32* %7, align 4
  br label %217

214:                                              ; preds = %204
  %215 = load i64, i64* @DELAY_MS_DEFAULT, align 8
  %216 = call i32 @msecs_to_jiffies(i64 %215)
  store i32 %216, i32* %7, align 4
  br label %217

217:                                              ; preds = %214, %209
  br label %227

218:                                              ; preds = %135, %132
  %219 = load i8*, i8** @CONTROL1_SW_UART, align 8
  %220 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %221 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %220, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  %222 = load i8*, i8** @CONTROL1_SW_USB, align 8
  %223 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %224 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  %225 = load i64, i64* @DELAY_MS_DEFAULT, align 8
  %226 = call i32 @msecs_to_jiffies(i64 %225)
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %218, %217
  %228 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %229 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @MAX8997_MUIC_REG_STATUS1, align 4
  %232 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %233 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @max8997_bulk_read(i32 %230, i32 %231, i32 2, i32 %234)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %227
  %239 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %240 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %239, i32 0, i32 2
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %240, align 8
  %242 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %241, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %243 = load i32, i32* %10, align 4
  store i32 %243, i32* %2, align 4
  br label %289

244:                                              ; preds = %227
  %245 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %246 = load i32, i32* @MAX8997_CABLE_GROUP_ADC, align 4
  %247 = call i32 @max8997_muic_get_cable_type(%struct.max8997_muic_info* %245, i32 %246, i32* %9)
  store i32 %247, i32* %8, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %244
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @MAX8997_MUIC_ADC_FACTORY_MODE_UART_OFF, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %256 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %257 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @max8997_muic_set_path(%struct.max8997_muic_info* %255, i8* %258, i32 1)
  br label %260

260:                                              ; preds = %254, %250, %244
  %261 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %262 = load i32, i32* @ADC_DEBOUNCE_TIME_25MS, align 4
  %263 = call i32 @max8997_muic_set_debounce_time(%struct.max8997_muic_info* %261, i32 %262)
  %264 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %265 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %264, i32 0, i32 0
  %266 = load i32, i32* @max8997_muic_detect_cable_wq, align 4
  %267 = call i32 @INIT_DELAYED_WORK(i32* %265, i32 %266)
  %268 = load i32, i32* @system_power_efficient_wq, align 4
  %269 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %270 = getelementptr inbounds %struct.max8997_muic_info, %struct.max8997_muic_info* %269, i32 0, i32 0
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @queue_delayed_work(i32 %268, i32* %270, i32 %271)
  store i32 0, i32* %2, align 4
  br label %289

273:                                              ; preds = %128, %113, %89, %72
  br label %274

274:                                              ; preds = %278, %273
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %11, align 4
  %277 = icmp sge i32 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %274
  %279 = load %struct.max8997_muic_irq*, %struct.max8997_muic_irq** @muic_irqs, align 8
  %280 = load i32, i32* %11, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.max8997_muic_irq, %struct.max8997_muic_irq* %279, i64 %281
  %283 = getelementptr inbounds %struct.max8997_muic_irq, %struct.max8997_muic_irq* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.max8997_muic_info*, %struct.max8997_muic_info** %6, align 8
  %286 = call i32 @free_irq(i32 %284, %struct.max8997_muic_info* %285)
  br label %274

287:                                              ; preds = %274
  %288 = load i32, i32* %10, align 4
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %287, %260, %238, %30
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local %struct.max8997_dev* @dev_get_drvdata(i32) #1

declare dso_local %struct.max8997_platform_data* @dev_get_platdata(i32) #1

declare dso_local %struct.max8997_muic_info* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8997_muic_info*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.max8997_muic_irq*) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.max8997_muic_info*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @devm_extcon_dev_allocate(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @devm_extcon_dev_register(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @max8997_write_reg(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

declare dso_local i32 @max8997_bulk_read(i32, i32, i32, i32) #1

declare dso_local i32 @max8997_muic_get_cable_type(%struct.max8997_muic_info*, i32, i32*) #1

declare dso_local i32 @max8997_muic_set_path(%struct.max8997_muic_info*, i8*, i32) #1

declare dso_local i32 @max8997_muic_set_debounce_time(%struct.max8997_muic_info*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.max8997_muic_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
