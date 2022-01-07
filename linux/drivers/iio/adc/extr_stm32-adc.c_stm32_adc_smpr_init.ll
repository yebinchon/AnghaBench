; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_smpr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_smpr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { i32*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.stm32_adc_regs* }
%struct.stm32_adc_regs = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@STM32_ADC_MAX_SMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_adc*, i32, i32)* @stm32_adc_smpr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_adc_smpr_init(%struct.stm32_adc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stm32_adc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stm32_adc_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stm32_adc* %0, %struct.stm32_adc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %14 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.stm32_adc_regs*, %struct.stm32_adc_regs** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.stm32_adc_regs, %struct.stm32_adc_regs* %19, i64 %21
  store %struct.stm32_adc_regs* %22, %struct.stm32_adc_regs** %7, align 8
  %23 = load %struct.stm32_adc_regs*, %struct.stm32_adc_regs** %7, align 8
  %24 = getelementptr inbounds %struct.stm32_adc_regs, %struct.stm32_adc_regs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.stm32_adc_regs*, %struct.stm32_adc_regs** %7, align 8
  %27 = getelementptr inbounds %struct.stm32_adc_regs, %struct.stm32_adc_regs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.stm32_adc_regs*, %struct.stm32_adc_regs** %7, align 8
  %30 = getelementptr inbounds %struct.stm32_adc_regs, %struct.stm32_adc_regs* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @NSEC_PER_SEC, align 4
  %33 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %34 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = udiv i32 %32, %37
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %59, %3
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @STM32_ADC_MAX_SMP, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %46 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = mul i32 %44, %53
  %55 = load i32, i32* %6, align 4
  %56 = icmp uge i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %62

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %39

62:                                               ; preds = %57, %39
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @STM32_ADC_MAX_SMP, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @STM32_ADC_MAX_SMP, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %70 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load %struct.stm32_adc*, %struct.stm32_adc** %4, align 8
  %84 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
