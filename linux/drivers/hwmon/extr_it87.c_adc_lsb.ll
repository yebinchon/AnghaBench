; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_adc_lsb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_adc_lsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.it87_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.it87_data*, i32)* @adc_lsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_lsb(%struct.it87_data* %0, i32 %1) #0 {
  %3 = alloca %struct.it87_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.it87_data* %0, %struct.it87_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %7 = call i64 @has_12mv_adc(%struct.it87_data* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 120, i32* %5, align 4
  br label %17

10:                                               ; preds = %2
  %11 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %12 = call i64 @has_10_9mv_adc(%struct.it87_data* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 109, i32* %5, align 4
  br label %16

15:                                               ; preds = %10
  store i32 160, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %14
  br label %17

17:                                               ; preds = %16, %9
  %18 = load %struct.it87_data*, %struct.it87_data** %3, align 8
  %19 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %17
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @has_12mv_adc(%struct.it87_data*) #1

declare dso_local i64 @has_10_9mv_adc(%struct.it87_data*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
