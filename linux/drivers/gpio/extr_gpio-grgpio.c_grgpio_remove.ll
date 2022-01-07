; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-grgpio.c_grgpio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-grgpio.c_grgpio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.grgpio_priv = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@GRGPIO_MAX_NGPIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @grgpio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grgpio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.grgpio_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.grgpio_priv* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.grgpio_priv* %8, %struct.grgpio_priv** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.grgpio_priv*, %struct.grgpio_priv** %3, align 8
  %10 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.grgpio_priv*, %struct.grgpio_priv** %3, align 8
  %15 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GRGPIO_MAX_NGPIO, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.grgpio_priv*, %struct.grgpio_priv** %3, align 8
  %25 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %55

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %19

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.grgpio_priv*, %struct.grgpio_priv** %3, align 8
  %43 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %42, i32 0, i32 0
  %44 = call i32 @gpiochip_remove(%struct.TYPE_4__* %43)
  %45 = load %struct.grgpio_priv*, %struct.grgpio_priv** %3, align 8
  %46 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.grgpio_priv*, %struct.grgpio_priv** %3, align 8
  %51 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @irq_domain_remove(i64 %52)
  br label %54

54:                                               ; preds = %49, %41
  br label %55

55:                                               ; preds = %54, %33
  %56 = load %struct.grgpio_priv*, %struct.grgpio_priv** %3, align 8
  %57 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.grgpio_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_4__*) #1

declare dso_local i32 @irq_domain_remove(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
