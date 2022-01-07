; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_detect_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_detect_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1400_ts = type { i32, i32 }
%struct.platform_device = type { i32 }

@UCB_IE_RIS = common dso_local global i32 0, align 4
@UCB_IE_ADC = common dso_local global i32 0, align 4
@UCB_IE_FAL = common dso_local global i32 0, align 4
@UCB_IE_CLEAR = common dso_local global i32 0, align 4
@UCB_ADC_CR = common dso_local global i32 0, align 4
@UCB_ADC_ENA = common dso_local global i32 0, align 4
@UCB_ADC_START = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@UCB_ADC_DATA = common dso_local global i32 0, align 4
@UCB_ADC_DAT_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"timed out in IRQ probe\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1400_ts*, %struct.platform_device*)* @ucb1400_ts_detect_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_ts_detect_irq(%struct.ucb1400_ts* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucb1400_ts*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ucb1400_ts* %0, %struct.ucb1400_ts** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = call i64 (...) @probe_irq_on()
  store i64 %8, i64* %6, align 8
  %9 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %10 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UCB_IE_RIS, align 4
  %13 = load i32, i32* @UCB_IE_ADC, align 4
  %14 = call i32 @ucb1400_reg_write(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %16 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UCB_IE_FAL, align 4
  %19 = load i32, i32* @UCB_IE_ADC, align 4
  %20 = call i32 @ucb1400_reg_write(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %22 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UCB_IE_CLEAR, align 4
  %25 = call i32 @ucb1400_reg_write(i32 %23, i32 %24, i32 65535)
  %26 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %27 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @UCB_IE_CLEAR, align 4
  %30 = call i32 @ucb1400_reg_write(i32 %28, i32 %29, i32 0)
  %31 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %32 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UCB_ADC_CR, align 4
  %35 = load i32, i32* @UCB_ADC_ENA, align 4
  %36 = call i32 @ucb1400_reg_write(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %38 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @UCB_ADC_CR, align 4
  %41 = load i32, i32* @UCB_ADC_ENA, align 4
  %42 = load i32, i32* @UCB_ADC_START, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ucb1400_reg_write(i32 %39, i32 %40, i32 %43)
  %45 = load i32, i32* @jiffies, align 4
  %46 = load i32, i32* @HZ, align 4
  %47 = sdiv i32 %46, 2
  %48 = add nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %74, %2
  %51 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %52 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UCB_ADC_DATA, align 4
  %55 = call i32 @ucb1400_reg_read(i32 %53, i32 %54)
  %56 = load i32, i32* @UCB_ADC_DAT_VALID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %75

60:                                               ; preds = %50
  %61 = call i32 (...) @cpu_relax()
  %62 = load i32, i32* @jiffies, align 4
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @time_after(i32 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @probe_irq_off(i64 %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %119

74:                                               ; preds = %60
  br label %50

75:                                               ; preds = %50
  %76 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %77 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @UCB_ADC_CR, align 4
  %80 = call i32 @ucb1400_reg_write(i32 %78, i32 %79, i32 0)
  %81 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %82 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @UCB_IE_RIS, align 4
  %85 = call i32 @ucb1400_reg_write(i32 %83, i32 %84, i32 0)
  %86 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %87 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @UCB_IE_FAL, align 4
  %90 = call i32 @ucb1400_reg_write(i32 %88, i32 %89, i32 0)
  %91 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %92 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @UCB_IE_CLEAR, align 4
  %95 = call i32 @ucb1400_reg_write(i32 %93, i32 %94, i32 65535)
  %96 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %97 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @UCB_IE_CLEAR, align 4
  %100 = call i32 @ucb1400_reg_write(i32 %98, i32 %99, i32 0)
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @probe_irq_off(i64 %101)
  %103 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %104 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %106 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %75
  %110 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %4, align 8
  %111 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NO_IRQ, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109, %75
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %119

118:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %115, %66
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @probe_irq_on(...) #1

declare dso_local i32 @ucb1400_reg_write(i32, i32, i32) #1

declare dso_local i32 @ucb1400_reg_read(i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @probe_irq_off(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
