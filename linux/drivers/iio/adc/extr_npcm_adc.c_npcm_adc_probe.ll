; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_npcm_adc.c_npcm_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_npcm_adc.c_npcm_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.npcm_adc = type { i32, i64, i64, i64, i32, i64, %struct.device* }
%struct.iio_dev = type { i32, i32, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ADC clock failed: can't read clk\0A\00", align 1
@NPCM_ADCCON = common dso_local global i64 0, align 8
@NPCM_ADCCON_DIV_MASK = common dso_local global i32 0, align 4
@NPCM_ADCCON_DIV_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"nuvoton,npcm750-adc\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"nuvoton,npcm750-rst\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to find nuvoton,npcm750-rst\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@npcm_adc_isr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"NPCM_ADC\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed requesting interrupt\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Can't enable ADC reference voltage\0A\00", align 1
@NPCM_ADCCON_REFSEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NPCM_ADC_ENABLE = common dso_local global i32 0, align 4
@NPCM_ADCCON_ADC_CONV = common dso_local global i32 0, align 4
@npcm_adc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@npcm_adc_iio_channels = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Couldn't register the device.\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"NPCM ADC driver probed\0A\00", align 1
@NPCM_ADCCON_ADC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @npcm_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.npcm_adc*, align 8
  %10 = alloca %struct.iio_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %11, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %12, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %20, i32 56)
  store %struct.iio_dev* %21, %struct.iio_dev** %10, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %23 = icmp ne %struct.iio_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %290

27:                                               ; preds = %1
  %28 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %29 = call %struct.npcm_adc* @iio_priv(%struct.iio_dev* %28)
  store %struct.npcm_adc* %29, %struct.npcm_adc** %9, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %33 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %32, i32 0, i32 6
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %8, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = call i64 @devm_ioremap_resource(%struct.device* %38, %struct.resource* %39)
  %41 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %42 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %41, i32 0, i32 3
  store i64 %40, i64* %42, align 8
  %43 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %44 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @IS_ERR(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %27
  %49 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %50 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @PTR_ERR(i64 %51)
  store i32 %52, i32* %2, align 4
  br label %290

53:                                               ; preds = %27
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i64 @devm_clk_get(%struct.device* %55, i32* null)
  %57 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %58 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %60 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @IS_ERR(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @dev_warn(%struct.device* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %69 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @PTR_ERR(i64 %70)
  store i32 %71, i32* %2, align 4
  br label %290

72:                                               ; preds = %53
  %73 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %74 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NPCM_ADCCON, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @ioread32(i64 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @NPCM_ADCCON_DIV_MASK, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @NPCM_ADCCON_DIV_SHIFT, align 4
  %84 = ashr i32 %82, %83
  store i32 %84, i32* %6, align 4
  %85 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %86 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @clk_get_rate(i64 %87)
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  %91 = mul nsw i32 %90, 2
  %92 = sdiv i32 %88, %91
  %93 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %94 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.device_node*, %struct.device_node** %12, align 8
  %96 = call i64 @of_device_is_compatible(%struct.device_node* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %72
  %99 = call i64 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %101 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  %102 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %103 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @IS_ERR(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %98
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %111 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %112 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @PTR_ERR(i64 %113)
  store i32 %114, i32* %4, align 4
  br label %284

115:                                              ; preds = %98
  br label %116

116:                                              ; preds = %115, %72
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = call i32 @platform_get_irq(%struct.platform_device* %117, i32 0)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %284

124:                                              ; preds = %116
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @npcm_adc_isr, align 4
  %129 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %130 = call i32 @devm_request_irq(%struct.device* %126, i32 %127, i32 %128, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.iio_dev* %129)
  store i32 %130, i32* %4, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load %struct.device*, %struct.device** %11, align 8
  %135 = call i32 @dev_err(%struct.device* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %284

136:                                              ; preds = %124
  %137 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %138 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @NPCM_ADCCON, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @ioread32(i64 %141)
  store i32 %142, i32* %7, align 4
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i64 @devm_regulator_get_optional(%struct.device* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %146 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %147 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %149 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @IS_ERR(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %175, label %153

153:                                              ; preds = %136
  %154 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %155 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @regulator_enable(i64 %156)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %153
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @dev_err(%struct.device* %162, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %284

164:                                              ; preds = %153
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @NPCM_ADCCON_REFSEL, align 4
  %167 = xor i32 %166, -1
  %168 = and i32 %165, %167
  %169 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %170 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @NPCM_ADCCON, align 8
  %173 = add nsw i64 %171, %172
  %174 = call i32 @iowrite32(i32 %168, i64 %173)
  br label %198

175:                                              ; preds = %136
  %176 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %177 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @PTR_ERR(i64 %178)
  %180 = load i32, i32* @ENODEV, align 4
  %181 = sub nsw i32 0, %180
  %182 = icmp ne i32 %179, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %175
  %184 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %185 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @PTR_ERR(i64 %186)
  store i32 %187, i32* %4, align 4
  br label %284

188:                                              ; preds = %175
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @NPCM_ADCCON_REFSEL, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %193 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @NPCM_ADCCON, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @iowrite32(i32 %191, i64 %196)
  br label %198

198:                                              ; preds = %188, %164
  %199 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %200 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %199, i32 0, i32 4
  %201 = call i32 @init_waitqueue_head(i32* %200)
  %202 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %203 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @NPCM_ADCCON, align 8
  %206 = add nsw i64 %204, %205
  %207 = call i32 @ioread32(i64 %206)
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* @NPCM_ADC_ENABLE, align 4
  %209 = load i32, i32* %7, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %213 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @NPCM_ADCCON, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @iowrite32(i32 %211, i64 %216)
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @NPCM_ADCCON_ADC_CONV, align 4
  %220 = or i32 %218, %219
  %221 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %222 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @NPCM_ADCCON, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @iowrite32(i32 %220, i64 %225)
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %229 = call i32 @platform_set_drvdata(%struct.platform_device* %227, %struct.iio_dev* %228)
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = call i32 @dev_name(%struct.device* %231)
  %233 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %234 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %233, i32 0, i32 5
  store i32 %232, i32* %234, align 8
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %235, i32 0, i32 0
  %237 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %238 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  store %struct.device* %236, %struct.device** %239, align 8
  %240 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %241 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %240, i32 0, i32 3
  store i32* @npcm_adc_iio_info, i32** %241, align 8
  %242 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %243 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %244 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* @npcm_adc_iio_channels, align 4
  %246 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %247 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* @npcm_adc_iio_channels, align 4
  %249 = call i32 @ARRAY_SIZE(i32 %248)
  %250 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %251 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  %252 = load %struct.iio_dev*, %struct.iio_dev** %10, align 8
  %253 = call i32 @iio_device_register(%struct.iio_dev* %252)
  store i32 %253, i32* %4, align 4
  %254 = load i32, i32* %4, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %198
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = call i32 @dev_err(%struct.device* %258, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %262

260:                                              ; preds = %198
  %261 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %290

262:                                              ; preds = %256
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* @NPCM_ADCCON_ADC_EN, align 4
  %265 = xor i32 %264, -1
  %266 = and i32 %263, %265
  %267 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %268 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @NPCM_ADCCON, align 8
  %271 = add nsw i64 %269, %270
  %272 = call i32 @iowrite32(i32 %266, i64 %271)
  %273 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %274 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = call i64 @IS_ERR(i64 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %262
  %279 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %280 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @regulator_disable(i64 %281)
  br label %283

283:                                              ; preds = %278, %262
  br label %284

284:                                              ; preds = %283, %183, %160, %133, %121, %107
  %285 = load %struct.npcm_adc*, %struct.npcm_adc** %9, align 8
  %286 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @clk_disable_unprepare(i64 %287)
  %289 = load i32, i32* %4, align 4
  store i32 %289, i32* %2, align 4
  br label %290

290:                                              ; preds = %284, %260, %64, %48, %24
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.npcm_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i64 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.iio_dev*) #1

declare dso_local i64 @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
