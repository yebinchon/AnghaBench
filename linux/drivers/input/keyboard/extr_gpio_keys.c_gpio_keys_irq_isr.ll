; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_irq_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_irq_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_button_data = type { i32, i32, i32, i64, i32, i32*, %struct.input_dev*, %struct.TYPE_3__* }
%struct.input_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@EV_KEY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gpio_keys_irq_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_keys_irq_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gpio_button_data*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.gpio_button_data*
  store %struct.gpio_button_data* %9, %struct.gpio_button_data** %5, align 8
  %10 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %11 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %10, i32 0, i32 6
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %15 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %20, i32 0, i32 2
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %25 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %70, label %28

28:                                               ; preds = %2
  %29 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %30 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %29, i32 0, i32 7
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %37 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %36, i32 0, i32 6
  %38 = load %struct.input_dev*, %struct.input_dev** %37, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pm_wakeup_event(i32 %41, i32 0)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %45 = load i32, i32* @EV_KEY, align 4
  %46 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %47 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @input_event(%struct.input_dev* %44, i32 %45, i32 %49, i32 1)
  %51 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %52 = call i32 @input_sync(%struct.input_dev* %51)
  %53 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %54 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %43
  %58 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %59 = load i32, i32* @EV_KEY, align 4
  %60 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %61 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @input_event(%struct.input_dev* %58, i32 %59, i32 %63, i32 0)
  %65 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %66 = call i32 @input_sync(%struct.input_dev* %65)
  br label %86

67:                                               ; preds = %43
  %68 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %69 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %2
  %71 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %72 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %77 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %76, i32 0, i32 4
  %78 = load i64, i64* @jiffies, align 8
  %79 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %80 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @msecs_to_jiffies(i64 %81)
  %83 = add nsw i64 %78, %82
  %84 = call i32 @mod_timer(i32* %77, i64 %83)
  br label %85

85:                                               ; preds = %75, %70
  br label %86

86:                                               ; preds = %85, %57
  %87 = load %struct.gpio_button_data*, %struct.gpio_button_data** %5, align 8
  %88 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %87, i32 0, i32 2
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %91
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
