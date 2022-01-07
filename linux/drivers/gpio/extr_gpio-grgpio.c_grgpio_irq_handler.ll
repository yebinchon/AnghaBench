; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-grgpio.c_grgpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-grgpio.c_grgpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grgpio_priv = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.grgpio_lirq* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.grgpio_lirq = type { i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"No gpio line matched irq %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @grgpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grgpio_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.grgpio_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.grgpio_lirq*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.grgpio_priv*
  store %struct.grgpio_priv* %12, %struct.grgpio_priv** %5, align 8
  %13 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %14 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %18 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %63, %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %22
  %27 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %28 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %27, i32 0, i32 4
  %29 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %29, i64 %31
  store %struct.grgpio_lirq* %32, %struct.grgpio_lirq** %10, align 8
  %33 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %34 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %26
  %41 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %10, align 8
  %42 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %47 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %10, align 8
  %50 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.grgpio_lirq*, %struct.grgpio_lirq** %10, align 8
  %59 = getelementptr inbounds %struct.grgpio_lirq, %struct.grgpio_lirq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @generic_handle_irq(i32 %60)
  store i32 1, i32* %9, align 4
  br label %62

62:                                               ; preds = %57, %45, %40, %26
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %22

66:                                               ; preds = %22
  %67 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %68 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = load %struct.grgpio_priv*, %struct.grgpio_priv** %5, align 8
  %76 = getelementptr inbounds %struct.grgpio_priv, %struct.grgpio_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @dev_warn(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %66
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
