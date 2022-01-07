; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mc13783_ts.c_mc13783_ts_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mc13783_ts.c_mc13783_ts_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.mc13783_ts_priv = type { i32 }

@MC13XXX_IRQ_TS = common dso_local global i32 0, align 4
@mc13783_ts_handler = common dso_local global i32 0, align 4
@MC13783_TS_NAME = common dso_local global i32 0, align 4
@MC13XXX_ADC0 = common dso_local global i32 0, align 4
@MC13XXX_ADC0_TSMOD_MASK = common dso_local global i32 0, align 4
@MC13XXX_ADC0_TSMOD0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @mc13783_ts_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_ts_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.mc13783_ts_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.mc13783_ts_priv* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.mc13783_ts_priv* %6, %struct.mc13783_ts_priv** %3, align 8
  %7 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mc13xxx_lock(i32 %9)
  %11 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MC13XXX_IRQ_TS, align 4
  %15 = call i32 @mc13xxx_irq_ack(i32 %13, i32 %14)
  %16 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MC13XXX_IRQ_TS, align 4
  %20 = load i32, i32* @mc13783_ts_handler, align 4
  %21 = load i32, i32* @MC13783_TS_NAME, align 4
  %22 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %3, align 8
  %23 = call i32 @mc13xxx_irq_request(i32 %18, i32 %19, i32 %20, i32 %21, %struct.mc13783_ts_priv* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MC13XXX_ADC0, align 4
  %32 = load i32, i32* @MC13XXX_ADC0_TSMOD_MASK, align 4
  %33 = load i32, i32* @MC13XXX_ADC0_TSMOD0, align 4
  %34 = call i32 @mc13xxx_reg_rmw(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MC13XXX_IRQ_TS, align 4
  %42 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %3, align 8
  %43 = call i32 @mc13xxx_irq_free(i32 %40, i32 %41, %struct.mc13783_ts_priv* %42)
  br label %44

44:                                               ; preds = %37, %27
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.mc13783_ts_priv*, %struct.mc13783_ts_priv** %3, align 8
  %47 = getelementptr inbounds %struct.mc13783_ts_priv, %struct.mc13783_ts_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mc13xxx_unlock(i32 %48)
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.mc13783_ts_priv* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mc13xxx_lock(i32) #1

declare dso_local i32 @mc13xxx_irq_ack(i32, i32) #1

declare dso_local i32 @mc13xxx_irq_request(i32, i32, i32, i32, %struct.mc13783_ts_priv*) #1

declare dso_local i32 @mc13xxx_reg_rmw(i32, i32, i32, i32) #1

declare dso_local i32 @mc13xxx_irq_free(i32, i32, %struct.mc13783_ts_priv*) #1

declare dso_local i32 @mc13xxx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
