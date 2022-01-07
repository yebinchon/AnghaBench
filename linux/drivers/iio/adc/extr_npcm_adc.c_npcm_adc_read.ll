; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_npcm_adc.c_npcm_adc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_npcm_adc.c_npcm_adc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm_adc = type { i32, i64, i32, i64, i32 }

@NPCM_ADCCON = common dso_local global i64 0, align 8
@NPCM_ADCCON_CH_MASK = common dso_local global i32 0, align 4
@NPCM_ADCCON_ADC_CONV = common dso_local global i32 0, align 4
@NPCM7XX_IPSRST1_OFFSET = common dso_local global i32 0, align 4
@NPCM7XX_IPSRST1_ADC_RST = common dso_local global i32 0, align 4
@NPCM_ADC_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"RESET ADC Complete\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@NPCM_ADCDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.npcm_adc*, i32*, i32)* @npcm_adc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_adc_read(%struct.npcm_adc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.npcm_adc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.npcm_adc* %0, %struct.npcm_adc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %11 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NPCM_ADCCON, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @NPCM_ADCCON_CH_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %21 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @NPCM_ADCCON_CH(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* @NPCM_ADCCON_ADC_CONV, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %29 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NPCM_ADCCON, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @iowrite32(i32 %27, i64 %32)
  %34 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %35 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %38 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @msecs_to_jiffies(i32 10)
  %41 = call i32 @wait_event_interruptible_timeout(i32 %36, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %3
  %45 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %46 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NPCM_ADCCON, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @ioread32(i64 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NPCM_ADCCON_ADC_CONV, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %44
  %56 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %57 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %62 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @NPCM7XX_IPSRST1_OFFSET, align 4
  %65 = load i32, i32* @NPCM7XX_IPSRST1_ADC_RST, align 4
  %66 = call i32 @regmap_write(i64 %63, i32 %64, i32 %65)
  %67 = call i32 @msleep(i32 100)
  %68 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %69 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @NPCM7XX_IPSRST1_OFFSET, align 4
  %72 = call i32 @regmap_write(i64 %70, i32 %71, i32 0)
  %73 = call i32 @msleep(i32 100)
  %74 = load i32, i32* @NPCM_ADC_ENABLE, align 4
  %75 = load i32, i32* @NPCM_ADCCON_ADC_CONV, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %78 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NPCM_ADCCON, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @iowrite32(i32 %76, i64 %81)
  %83 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %84 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %60, %55, %44
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %104

90:                                               ; preds = %3
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %104

95:                                               ; preds = %90
  %96 = load %struct.npcm_adc*, %struct.npcm_adc** %5, align 8
  %97 = getelementptr inbounds %struct.npcm_adc, %struct.npcm_adc* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NPCM_ADCDATA, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @ioread32(i64 %100)
  %102 = call i32 @NPCM_ADC_DATA_MASK(i32 %101)
  %103 = load i32*, i32** %6, align 8
  store i32 %102, i32* %103, align 4
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %95, %93, %87
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @NPCM_ADCCON_CH(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_write(i64, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @NPCM_ADC_DATA_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
