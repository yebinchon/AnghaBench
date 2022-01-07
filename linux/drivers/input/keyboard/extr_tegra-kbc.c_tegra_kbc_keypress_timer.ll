; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_keypress_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_keypress_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_kbc = type { i32, i32, i32, i32, i32*, i32, i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@KBC_INT_0 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@kbc = common dso_local global %struct.tegra_kbc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @tegra_kbc_keypress_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_kbc_keypress_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.tegra_kbc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %9 = ptrtoint %struct.tegra_kbc* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @timer, align 4
  %12 = call %struct.tegra_kbc* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.tegra_kbc* %12, %struct.tegra_kbc** %3, align 8
  %13 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %13, i32 0, i32 2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KBC_INT_0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = ashr i32 %22, 4
  %24 = and i32 %23, 15
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %1
  %28 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %29 = call i32 @tegra_kbc_report_keys(%struct.tegra_kbc* %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %35, %32 ], [ 1, %36 ]
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %40, i32 0, i32 5
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @msecs_to_jiffies(i64 %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @mod_timer(i32* %41, i64 %45)
  br label %78

47:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %51 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %56 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %59 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @input_report_key(i32 %57, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %48

69:                                               ; preds = %48
  %70 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %71 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @input_sync(i32 %72)
  %74 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %75 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  %76 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %77 = call i32 @tegra_kbc_set_fifo_interrupt(%struct.tegra_kbc* %76, i32 1)
  br label %78

78:                                               ; preds = %69, %37
  %79 = load %struct.tegra_kbc*, %struct.tegra_kbc** %3, align 8
  %80 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %79, i32 0, i32 2
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  ret void
}

declare dso_local %struct.tegra_kbc* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @tegra_kbc_report_keys(%struct.tegra_kbc*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @tegra_kbc_set_fifo_interrupt(%struct.tegra_kbc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
