; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95245.c_lm95245_read_conversion_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95245.c_lm95245_read_conversion_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm95245_data = type { i32, i32 }

@LM95245_REG_RW_CONVERS_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm95245_data*)* @lm95245_read_conversion_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm95245_read_conversion_rate(%struct.lm95245_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm95245_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm95245_data* %0, %struct.lm95245_data** %3, align 8
  %6 = load %struct.lm95245_data*, %struct.lm95245_data** %3, align 8
  %7 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LM95245_REG_RW_CONVERS_RATE, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %27 [
    i32 131, label %17
    i32 130, label %20
    i32 129, label %23
    i32 128, label %26
  ]

17:                                               ; preds = %15
  %18 = load %struct.lm95245_data*, %struct.lm95245_data** %3, align 8
  %19 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %18, i32 0, i32 0
  store i32 63, i32* %19, align 4
  br label %30

20:                                               ; preds = %15
  %21 = load %struct.lm95245_data*, %struct.lm95245_data** %3, align 8
  %22 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %21, i32 0, i32 0
  store i32 364, i32* %22, align 4
  br label %30

23:                                               ; preds = %15
  %24 = load %struct.lm95245_data*, %struct.lm95245_data** %3, align 8
  %25 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %24, i32 0, i32 0
  store i32 1000, i32* %25, align 4
  br label %30

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %15, %26
  %28 = load %struct.lm95245_data*, %struct.lm95245_data** %3, align 8
  %29 = getelementptr inbounds %struct.lm95245_data, %struct.lm95245_data* %28, i32 0, i32 0
  store i32 2500, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %23, %20, %17
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
