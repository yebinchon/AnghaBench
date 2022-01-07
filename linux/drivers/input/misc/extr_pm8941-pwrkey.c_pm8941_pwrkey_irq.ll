; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pm8941-pwrkey.c_pm8941_pwrkey_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pm8941-pwrkey.c_pm8941_pwrkey_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8941_pwrkey = type { i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@PON_RT_STS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pm8941_pwrkey_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8941_pwrkey_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pm8941_pwrkey*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pm8941_pwrkey*
  store %struct.pm8941_pwrkey* %10, %struct.pm8941_pwrkey** %6, align 8
  %11 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %6, align 8
  %12 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %6, align 8
  %15 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PON_RT_STS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @regmap_read(i32 %13, i64 %18, i32* %7)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %6, align 8
  %26 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %6, align 8
  %29 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %6, align 8
  %33 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %31, %36
  %38 = call i32 @input_report_key(i32 %27, i32 %30, i32 %37)
  %39 = load %struct.pm8941_pwrkey*, %struct.pm8941_pwrkey** %6, align 8
  %40 = getelementptr inbounds %struct.pm8941_pwrkey, %struct.pm8941_pwrkey* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @input_sync(i32 %41)
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %24, %22
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
