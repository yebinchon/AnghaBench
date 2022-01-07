; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bcm-kona.c_bcm_kona_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-bcm-kona.c_bcm_kona_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { i32 }
%struct.bcm_kona_gpio_bank = type { i32, i64, %struct.bcm_kona_gpio* }
%struct.bcm_kona_gpio = type { i32, i32, i32, %struct.bcm_kona_gpio_bank*, i32, %struct.platform_device*, %struct.gpio_chip }

@bcm_kona_gpio_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to find gpio controller\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.gpio_chip zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't determine # GPIO banks\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GPIO_MAX_BANK_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Too many GPIO banks configured (max=%d)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GPIO_PER_BANK = common dso_local global i32 0, align 4
@bcm_kona_irq_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Couldn't allocate IRQ domain\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Couldn't get IRQ for bank %d\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Setting up Kona GPIO\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Couldn't add GPIO chip -- %d\0A\00", align 1
@bcm_kona_gpio_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_kona_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.bcm_kona_gpio_bank*, align 8
  %7 = alloca %struct.bcm_kona_gpio*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load i32, i32* @bcm_kona_gpio_of_match, align 4
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.of_device_id* @of_match_device(i32 %13, %struct.device* %14)
  store %struct.of_device_id* %15, %struct.of_device_id** %5, align 8
  %16 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %17 = icmp ne %struct.of_device_id* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %220

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.bcm_kona_gpio* @devm_kzalloc(%struct.device* %24, i32 48, i32 %25)
  store %struct.bcm_kona_gpio* %26, %struct.bcm_kona_gpio** %7, align 8
  %27 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %28 = icmp ne %struct.bcm_kona_gpio* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %220

32:                                               ; preds = %23
  %33 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %34 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %33, i32 0, i32 6
  %35 = bitcast %struct.gpio_chip* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 4 bitcast (%struct.gpio_chip* @template_chip to i8*), i64 8, i1 false)
  %36 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %37 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %36, i32 0, i32 6
  store %struct.gpio_chip* %37, %struct.gpio_chip** %8, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @of_irq_count(i32 %40)
  %42 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %43 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %45 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %32
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %220

53:                                               ; preds = %32
  %54 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %55 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @GPIO_MAX_BANK_NUM, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* @GPIO_MAX_BANK_NUM, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %220

65:                                               ; preds = %53
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %68 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.bcm_kona_gpio_bank* @devm_kcalloc(%struct.device* %66, i32 %69, i32 24, i32 %70)
  %72 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %73 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %72, i32 0, i32 3
  store %struct.bcm_kona_gpio_bank* %71, %struct.bcm_kona_gpio_bank** %73, align 8
  %74 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %75 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %74, i32 0, i32 3
  %76 = load %struct.bcm_kona_gpio_bank*, %struct.bcm_kona_gpio_bank** %75, align 8
  %77 = icmp ne %struct.bcm_kona_gpio_bank* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %65
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %220

81:                                               ; preds = %65
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %84 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %83, i32 0, i32 5
  store %struct.platform_device* %82, %struct.platform_device** %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.bcm_kona_gpio* %86)
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = getelementptr inbounds %struct.device, %struct.device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %92 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %94 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @GPIO_PER_BANK, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %99 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = getelementptr inbounds %struct.device, %struct.device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %104 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %107 = call i32 @irq_domain_add_linear(i32 %102, i32 %105, i32* @bcm_kona_irq_ops, %struct.bcm_kona_gpio* %106)
  %108 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %109 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %111 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %81
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @ENXIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %220

119:                                              ; preds = %81
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %120, i32 0)
  %122 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %123 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %125 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @IS_ERR(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load i32, i32* @ENXIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %9, align 4
  br label %214

132:                                              ; preds = %119
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %168, %132
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %136 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %171

139:                                              ; preds = %133
  %140 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %141 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %140, i32 0, i32 3
  %142 = load %struct.bcm_kona_gpio_bank*, %struct.bcm_kona_gpio_bank** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.bcm_kona_gpio_bank, %struct.bcm_kona_gpio_bank* %142, i64 %144
  store %struct.bcm_kona_gpio_bank* %145, %struct.bcm_kona_gpio_bank** %6, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.bcm_kona_gpio_bank*, %struct.bcm_kona_gpio_bank** %6, align 8
  %148 = getelementptr inbounds %struct.bcm_kona_gpio_bank, %struct.bcm_kona_gpio_bank* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i64 @platform_get_irq(%struct.platform_device* %149, i32 %150)
  %152 = load %struct.bcm_kona_gpio_bank*, %struct.bcm_kona_gpio_bank** %6, align 8
  %153 = getelementptr inbounds %struct.bcm_kona_gpio_bank, %struct.bcm_kona_gpio_bank* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %155 = load %struct.bcm_kona_gpio_bank*, %struct.bcm_kona_gpio_bank** %6, align 8
  %156 = getelementptr inbounds %struct.bcm_kona_gpio_bank, %struct.bcm_kona_gpio_bank* %155, i32 0, i32 2
  store %struct.bcm_kona_gpio* %154, %struct.bcm_kona_gpio** %156, align 8
  %157 = load %struct.bcm_kona_gpio_bank*, %struct.bcm_kona_gpio_bank** %6, align 8
  %158 = getelementptr inbounds %struct.bcm_kona_gpio_bank, %struct.bcm_kona_gpio_bank* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %139
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = load i32, i32* %10, align 4
  %164 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @ENOENT, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %9, align 4
  br label %214

167:                                              ; preds = %139
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %133

171:                                              ; preds = %133
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = call i32 @dev_info(%struct.device* %173, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %175 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %176 = call i32 @bcm_kona_gpio_reset(%struct.bcm_kona_gpio* %175)
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %179 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %180 = call i32 @devm_gpiochip_add_data(%struct.device* %177, %struct.gpio_chip* %178, %struct.bcm_kona_gpio* %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %171
  %184 = load %struct.device*, %struct.device** %4, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %185)
  br label %214

187:                                              ; preds = %171
  store i32 0, i32* %10, align 4
  br label %188

188:                                              ; preds = %207, %187
  %189 = load i32, i32* %10, align 4
  %190 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %191 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %188
  %195 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %196 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %195, i32 0, i32 3
  %197 = load %struct.bcm_kona_gpio_bank*, %struct.bcm_kona_gpio_bank** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.bcm_kona_gpio_bank, %struct.bcm_kona_gpio_bank* %197, i64 %199
  store %struct.bcm_kona_gpio_bank* %200, %struct.bcm_kona_gpio_bank** %6, align 8
  %201 = load %struct.bcm_kona_gpio_bank*, %struct.bcm_kona_gpio_bank** %6, align 8
  %202 = getelementptr inbounds %struct.bcm_kona_gpio_bank, %struct.bcm_kona_gpio_bank* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* @bcm_kona_gpio_irq_handler, align 4
  %205 = load %struct.bcm_kona_gpio_bank*, %struct.bcm_kona_gpio_bank** %6, align 8
  %206 = call i32 @irq_set_chained_handler_and_data(i64 %203, i32 %204, %struct.bcm_kona_gpio_bank* %205)
  br label %207

207:                                              ; preds = %194
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %188

210:                                              ; preds = %188
  %211 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %212 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %211, i32 0, i32 2
  %213 = call i32 @raw_spin_lock_init(i32* %212)
  store i32 0, i32* %2, align 4
  br label %220

214:                                              ; preds = %183, %161, %129
  %215 = load %struct.bcm_kona_gpio*, %struct.bcm_kona_gpio** %7, align 8
  %216 = getelementptr inbounds %struct.bcm_kona_gpio, %struct.bcm_kona_gpio* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @irq_domain_remove(i32 %217)
  %219 = load i32, i32* %9, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %214, %210, %114, %78, %59, %48, %29, %18
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.bcm_kona_gpio* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @of_irq_count(i32) #1

declare dso_local %struct.bcm_kona_gpio_bank* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm_kona_gpio*) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, %struct.bcm_kona_gpio*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @bcm_kona_gpio_reset(%struct.bcm_kona_gpio*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.gpio_chip*, %struct.bcm_kona_gpio*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i64, i32, %struct.bcm_kona_gpio_bank*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
