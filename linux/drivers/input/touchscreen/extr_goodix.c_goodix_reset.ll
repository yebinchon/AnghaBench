; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_ts_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.goodix_ts_data*)* @goodix_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goodix_reset(%struct.goodix_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.goodix_ts_data*, align 8
  %4 = alloca i32, align 4
  store %struct.goodix_ts_data* %0, %struct.goodix_ts_data** %3, align 8
  %5 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %6 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @gpiod_direction_output(i32 %7, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = call i32 @msleep(i32 20)
  %15 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %16 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %19 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 20
  %24 = zext i1 %23 to i32
  %25 = call i32 @gpiod_direction_output(i32 %17, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %13
  %31 = call i32 @usleep_range(i32 100, i32 2000)
  %32 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %33 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @gpiod_direction_output(i32 %34, i32 1)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %58

40:                                               ; preds = %30
  %41 = call i32 @usleep_range(i32 6000, i32 10000)
  %42 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %43 = getelementptr inbounds %struct.goodix_ts_data, %struct.goodix_ts_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @gpiod_direction_input(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %58

50:                                               ; preds = %40
  %51 = load %struct.goodix_ts_data*, %struct.goodix_ts_data** %3, align 8
  %52 = call i32 @goodix_int_sync(%struct.goodix_ts_data* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %48, %38, %28, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpiod_direction_input(i32) #1

declare dso_local i32 @goodix_int_sync(%struct.goodix_ts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
