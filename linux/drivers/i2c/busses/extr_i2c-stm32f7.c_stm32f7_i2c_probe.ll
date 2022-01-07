; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.stm32f7_i2c_dev = type { %struct.reset_control*, %struct.TYPE_25__*, i32, i32, %struct.i2c_adapter, %struct.stm32f7_i2c_setup, i8*, %struct.reset_control* }
%struct.i2c_adapter = type { i32, i32, i32, %struct.TYPE_24__, i32*, i32, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_25__* }
%struct.stm32f7_i2c_setup = type { i32, i32 }
%struct.reset_control = type { i32 }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get IRQ event: %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get IRQ error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Error: Missing controller clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to prepare_enable clock\0A\00", align 1
@STM32_I2C_SPEED_STANDARD = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@STM32_I2C_SPEED_FAST_PLUS = common dso_local global i8* null, align 8
@STM32_I2C_SPEED_FAST = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"Error: Missing controller reset\0A\00", align 1
@stm32f7_i2c_isr_event = common dso_local global i32 0, align 4
@stm32f7_i2c_isr_event_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to request irq event %i\0A\00", align 1
@stm32f7_i2c_isr_error = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to request irq error %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Can't get device data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"i2c-scl-rising-time-ns\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"i2c-scl-falling-time-ns\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"STM32F7 I2C(%pa)\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@stm32f7_i2c_algo = common dso_local global i32 0, align 4
@STM32F7_I2C_TXDR = common dso_local global i32 0, align 4
@STM32F7_I2C_RXDR = common dso_local global i32 0, align 4
@STM32F7_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"STM32F7 I2C-%d bus adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32f7_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f7_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32f7_i2c_dev*, align 8
  %5 = alloca %struct.stm32f7_i2c_setup*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.reset_control*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.stm32f7_i2c_dev* @devm_kzalloc(%struct.TYPE_25__* %17, i32 96, i32 %18)
  store %struct.stm32f7_i2c_dev* %19, %struct.stm32f7_i2c_dev** %4, align 8
  %20 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %21 = icmp ne %struct.stm32f7_i2c_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %395

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %6, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = call %struct.reset_control* @devm_ioremap_resource(%struct.TYPE_25__* %30, %struct.resource* %31)
  %33 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %34 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %33, i32 0, i32 7
  store %struct.reset_control* %32, %struct.reset_control** %34, align 8
  %35 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %36 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %35, i32 0, i32 7
  %37 = load %struct.reset_control*, %struct.reset_control** %36, align 8
  %38 = call i64 @IS_ERR(%struct.reset_control* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %42 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %41, i32 0, i32 7
  %43 = load %struct.reset_control*, %struct.reset_control** %42, align 8
  %44 = call i32 @PTR_ERR(%struct.reset_control* %43)
  store i32 %44, i32* %2, align 4
  br label %395

45:                                               ; preds = %25
  %46 = load %struct.resource*, %struct.resource** %6, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call i32 @platform_get_irq(%struct.platform_device* %49, i32 0)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %45
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @EPROBE_DEFER, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* %14, align 4
  %62 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i32 [ %64, %66 ], [ %69, %67 ]
  store i32 %71, i32* %2, align 4
  br label %395

72:                                               ; preds = %45
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = call i32 @platform_get_irq(%struct.platform_device* %73, i32 1)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @EPROBE_DEFER, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %13, align 4
  %86 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  br label %94

94:                                               ; preds = %91, %90
  %95 = phi i32 [ %88, %90 ], [ %93, %91 ]
  store i32 %95, i32* %2, align 4
  br label %395

96:                                               ; preds = %72
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = call %struct.reset_control* @devm_clk_get(%struct.TYPE_25__* %98, i32* null)
  %100 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %101 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %100, i32 0, i32 0
  store %struct.reset_control* %99, %struct.reset_control** %101, align 8
  %102 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %103 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %102, i32 0, i32 0
  %104 = load %struct.reset_control*, %struct.reset_control** %103, align 8
  %105 = call i64 @IS_ERR(%struct.reset_control* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %96
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %112 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %111, i32 0, i32 0
  %113 = load %struct.reset_control*, %struct.reset_control** %112, align 8
  %114 = call i32 @PTR_ERR(%struct.reset_control* %113)
  store i32 %114, i32* %2, align 4
  br label %395

115:                                              ; preds = %96
  %116 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %117 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %116, i32 0, i32 0
  %118 = load %struct.reset_control*, %struct.reset_control** %117, align 8
  %119 = call i32 @clk_prepare_enable(%struct.reset_control* %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %2, align 4
  br label %395

127:                                              ; preds = %115
  %128 = load i8*, i8** @STM32_I2C_SPEED_STANDARD, align 8
  %129 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %130 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @device_property_read_u32(%struct.TYPE_25__* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %150, label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %7, align 4
  %138 = icmp sge i32 %137, 1000000
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = load i8*, i8** @STM32_I2C_SPEED_FAST_PLUS, align 8
  %141 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %142 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %141, i32 0, i32 6
  store i8* %140, i8** %142, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %145 = call i32 @stm32f7_i2c_setup_fm_plus_bits(%struct.platform_device* %143, %struct.stm32f7_i2c_dev* %144)
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %389

149:                                              ; preds = %139
  br label %172

150:                                              ; preds = %136, %127
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = icmp sge i32 %154, 400000
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i8*, i8** @STM32_I2C_SPEED_FAST, align 8
  %158 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %159 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  br label %171

160:                                              ; preds = %153, %150
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %7, align 4
  %165 = icmp sge i32 %164, 100000
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i8*, i8** @STM32_I2C_SPEED_STANDARD, align 8
  %168 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %169 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %168, i32 0, i32 6
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %166, %163, %160
  br label %171

171:                                              ; preds = %170, %156
  br label %172

172:                                              ; preds = %171, %149
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call %struct.reset_control* @devm_reset_control_get(%struct.TYPE_25__* %174, i32* null)
  store %struct.reset_control* %175, %struct.reset_control** %11, align 8
  %176 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %177 = call i64 @IS_ERR(%struct.reset_control* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %183 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %184 = call i32 @PTR_ERR(%struct.reset_control* %183)
  store i32 %184, i32* %15, align 4
  br label %389

185:                                              ; preds = %172
  %186 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %187 = call i32 @reset_control_assert(%struct.reset_control* %186)
  %188 = call i32 @udelay(i32 2)
  %189 = load %struct.reset_control*, %struct.reset_control** %11, align 8
  %190 = call i32 @reset_control_deassert(%struct.reset_control* %189)
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %194 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %193, i32 0, i32 1
  store %struct.TYPE_25__* %192, %struct.TYPE_25__** %194, align 8
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* @stm32f7_i2c_isr_event, align 4
  %199 = load i32, i32* @stm32f7_i2c_isr_event_thread, align 4
  %200 = load i32, i32* @IRQF_ONESHOT, align 4
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %205 = call i32 @devm_request_threaded_irq(%struct.TYPE_25__* %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %203, %struct.stm32f7_i2c_dev* %204)
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %185
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = load i32, i32* %14, align 4
  %212 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %210, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %211)
  br label %389

213:                                              ; preds = %185
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @stm32f7_i2c_isr_error, align 4
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %222 = call i32 @devm_request_irq(%struct.TYPE_25__* %215, i32 %216, i32 %217, i32 0, i32 %220, %struct.stm32f7_i2c_dev* %221)
  store i32 %222, i32* %15, align 4
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %213
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = load i32, i32* %13, align 4
  %229 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %227, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %228)
  br label %389

230:                                              ; preds = %213
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = call %struct.stm32f7_i2c_setup* @of_device_get_match_data(%struct.TYPE_25__* %232)
  store %struct.stm32f7_i2c_setup* %233, %struct.stm32f7_i2c_setup** %5, align 8
  %234 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %235 = icmp ne %struct.stm32f7_i2c_setup* %234, null
  br i1 %235, label %242, label %236

236:                                              ; preds = %230
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = call i32 (%struct.TYPE_25__*, i8*, ...) @dev_err(%struct.TYPE_25__* %238, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %240 = load i32, i32* @ENODEV, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %15, align 4
  br label %389

242:                                              ; preds = %230
  %243 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %244 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %243, i32 0, i32 5
  %245 = load %struct.stm32f7_i2c_setup*, %struct.stm32f7_i2c_setup** %5, align 8
  %246 = bitcast %struct.stm32f7_i2c_setup* %244 to i8*
  %247 = bitcast %struct.stm32f7_i2c_setup* %245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %246, i8* align 4 %247, i64 8, i1 false)
  %248 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %249 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %248, i32 0, i32 1
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %249, align 8
  %251 = call i32 @device_property_read_u32(%struct.TYPE_25__* %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32* %8)
  store i32 %251, i32* %15, align 4
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %242
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %257 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %257, i32 0, i32 0
  store i32 %255, i32* %258, align 8
  br label %259

259:                                              ; preds = %254, %242
  %260 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %261 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %260, i32 0, i32 1
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %261, align 8
  %263 = call i32 @device_property_read_u32(%struct.TYPE_25__* %262, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32* %9)
  store i32 %263, i32* %15, align 4
  %264 = load i32, i32* %15, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %259
  %267 = load i32, i32* %9, align 4
  %268 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %269 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.stm32f7_i2c_setup, %struct.stm32f7_i2c_setup* %269, i32 0, i32 1
  store i32 %267, i32* %270, align 4
  br label %271

271:                                              ; preds = %266, %259
  %272 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %273 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %274 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %273, i32 0, i32 5
  %275 = call i32 @stm32f7_i2c_setup_timing(%struct.stm32f7_i2c_dev* %272, %struct.stm32f7_i2c_setup* %274)
  store i32 %275, i32* %15, align 4
  %276 = load i32, i32* %15, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  br label %389

279:                                              ; preds = %271
  %280 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %281 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %280, i32 0, i32 4
  store %struct.i2c_adapter* %281, %struct.i2c_adapter** %10, align 8
  %282 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %283 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %284 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %282, %struct.stm32f7_i2c_dev* %283)
  %285 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %286 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.resource*, %struct.resource** %6, align 8
  %289 = getelementptr inbounds %struct.resource, %struct.resource* %288, i32 0, i32 0
  %290 = call i32 @snprintf(i32 %287, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i64* %289)
  %291 = load i32, i32* @THIS_MODULE, align 4
  %292 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %293 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %292, i32 0, i32 5
  store i32 %291, i32* %293, align 8
  %294 = load i32, i32* @HZ, align 4
  %295 = mul nsw i32 2, %294
  %296 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %297 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %299 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %298, i32 0, i32 1
  store i32 3, i32* %299, align 4
  %300 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %301 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %300, i32 0, i32 4
  store i32* @stm32f7_i2c_algo, i32** %301, align 8
  %302 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %303 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %302, i32 0, i32 0
  %304 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %305 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 1
  store %struct.TYPE_25__* %303, %struct.TYPE_25__** %306, align 8
  %307 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %308 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %312 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %312, i32 0, i32 0
  store i32 %310, i32* %313, align 8
  %314 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %315 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %314, i32 0, i32 3
  %316 = call i32 @init_completion(i32* %315)
  %317 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %318 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %317, i32 0, i32 1
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %318, align 8
  %320 = load i64, i64* %12, align 8
  %321 = load i32, i32* @STM32F7_I2C_TXDR, align 4
  %322 = load i32, i32* @STM32F7_I2C_RXDR, align 4
  %323 = call i32 @stm32_i2c_dma_request(%struct.TYPE_25__* %319, i64 %320, i32 %321, i32 %322)
  %324 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %325 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %324, i32 0, i32 2
  store i32 %323, i32* %325, align 8
  %326 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %327 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %328 = call i32 @platform_set_drvdata(%struct.platform_device* %326, %struct.stm32f7_i2c_dev* %327)
  %329 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %330 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %329, i32 0, i32 1
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %330, align 8
  %332 = load i32, i32* @STM32F7_AUTOSUSPEND_DELAY, align 4
  %333 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_25__* %331, i32 %332)
  %334 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %335 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %334, i32 0, i32 1
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %335, align 8
  %337 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_25__* %336)
  %338 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %339 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %338, i32 0, i32 1
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %339, align 8
  %341 = call i32 @pm_runtime_set_active(%struct.TYPE_25__* %340)
  %342 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %343 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %342, i32 0, i32 1
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %343, align 8
  %345 = call i32 @pm_runtime_enable(%struct.TYPE_25__* %344)
  %346 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %347 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %346, i32 0, i32 0
  %348 = call i32 @pm_runtime_get_noresume(%struct.TYPE_25__* %347)
  %349 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %350 = call i32 @stm32f7_i2c_hw_config(%struct.stm32f7_i2c_dev* %349)
  %351 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %352 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %351)
  store i32 %352, i32* %15, align 4
  %353 = load i32, i32* %15, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %279
  br label %372

356:                                              ; preds = %279
  %357 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %358 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %357, i32 0, i32 1
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %358, align 8
  %360 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %361 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @dev_info(%struct.TYPE_25__* %359, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %362)
  %364 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %365 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %364, i32 0, i32 1
  %366 = load %struct.TYPE_25__*, %struct.TYPE_25__** %365, align 8
  %367 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_25__* %366)
  %368 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %369 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %368, i32 0, i32 1
  %370 = load %struct.TYPE_25__*, %struct.TYPE_25__** %369, align 8
  %371 = call i32 @pm_runtime_put_autosuspend(%struct.TYPE_25__* %370)
  store i32 0, i32* %2, align 4
  br label %395

372:                                              ; preds = %355
  %373 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %374 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %373, i32 0, i32 1
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %374, align 8
  %376 = call i32 @pm_runtime_put_noidle(%struct.TYPE_25__* %375)
  %377 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %378 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %377, i32 0, i32 1
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %378, align 8
  %380 = call i32 @pm_runtime_disable(%struct.TYPE_25__* %379)
  %381 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %382 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %381, i32 0, i32 1
  %383 = load %struct.TYPE_25__*, %struct.TYPE_25__** %382, align 8
  %384 = call i32 @pm_runtime_set_suspended(%struct.TYPE_25__* %383)
  %385 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %386 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %385, i32 0, i32 1
  %387 = load %struct.TYPE_25__*, %struct.TYPE_25__** %386, align 8
  %388 = call i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_25__* %387)
  br label %389

389:                                              ; preds = %372, %278, %236, %225, %208, %179, %148
  %390 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %4, align 8
  %391 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %390, i32 0, i32 0
  %392 = load %struct.reset_control*, %struct.reset_control** %391, align 8
  %393 = call i32 @clk_disable_unprepare(%struct.reset_control* %392)
  %394 = load i32, i32* %15, align 4
  store i32 %394, i32* %2, align 4
  br label %395

395:                                              ; preds = %389, %356, %122, %107, %94, %70, %40, %22
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local %struct.stm32f7_i2c_dev* @devm_kzalloc(%struct.TYPE_25__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.reset_control* @devm_ioremap_resource(%struct.TYPE_25__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_25__*, i8*, ...) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.reset_control*) #1

declare dso_local i32 @device_property_read_u32(%struct.TYPE_25__*, i8*, i32*) #1

declare dso_local i32 @stm32f7_i2c_setup_fm_plus_bits(%struct.platform_device*, %struct.stm32f7_i2c_dev*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_25__*, i32, i32, i32, i32, i32, %struct.stm32f7_i2c_dev*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_25__*, i32, i32, i32, i32, %struct.stm32f7_i2c_dev*) #1

declare dso_local %struct.stm32f7_i2c_setup* @of_device_get_match_data(%struct.TYPE_25__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @stm32f7_i2c_setup_timing(%struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_setup*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.stm32f7_i2c_dev*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @stm32_i2c_dma_request(%struct.TYPE_25__*, i64, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32f7_i2c_dev*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.TYPE_25__*) #1

declare dso_local i32 @stm32f7_i2c_hw_config(%struct.stm32f7_i2c_dev*) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_25__*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_25__*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
