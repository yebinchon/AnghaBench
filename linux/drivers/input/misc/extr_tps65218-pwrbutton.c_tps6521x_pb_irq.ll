; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_tps65218-pwrbutton.c_tps6521x_pb_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_tps65218-pwrbutton.c_tps6521x_pb_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps6521x_pwrbutton = type { i32, i32, i32, %struct.tps6521x_data* }
%struct.tps6521x_data = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"can't read register: %d\0A\00", align 1
@KEY_POWER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tps6521x_pb_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6521x_pb_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tps6521x_pwrbutton*, align 8
  %6 = alloca %struct.tps6521x_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tps6521x_pwrbutton*
  store %struct.tps6521x_pwrbutton* %10, %struct.tps6521x_pwrbutton** %5, align 8
  %11 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %12 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %11, i32 0, i32 3
  %13 = load %struct.tps6521x_data*, %struct.tps6521x_data** %12, align 8
  store %struct.tps6521x_data* %13, %struct.tps6521x_data** %6, align 8
  %14 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %15 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tps6521x_data*, %struct.tps6521x_data** %6, align 8
  %18 = getelementptr inbounds %struct.tps6521x_data, %struct.tps6521x_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(i32 %16, i32 %19, i32* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %25 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %57

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.tps6521x_data*, %struct.tps6521x_data** %6, align 8
  %32 = getelementptr inbounds %struct.tps6521x_data, %struct.tps6521x_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %38 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @KEY_POWER, align 4
  %41 = call i32 @input_report_key(i32 %39, i32 %40, i32 1)
  %42 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %43 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pm_wakeup_event(i32 %44, i32 0)
  br label %52

46:                                               ; preds = %29
  %47 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %48 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @KEY_POWER, align 4
  %51 = call i32 @input_report_key(i32 %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %46, %36
  %53 = load %struct.tps6521x_pwrbutton*, %struct.tps6521x_pwrbutton** %5, align 8
  %54 = getelementptr inbounds %struct.tps6521x_pwrbutton, %struct.tps6521x_pwrbutton* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @input_sync(i32 %55)
  br label %57

57:                                               ; preds = %52, %23
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %58
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @pm_wakeup_event(i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
