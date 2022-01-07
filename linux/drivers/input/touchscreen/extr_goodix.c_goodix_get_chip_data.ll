; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_get_chip_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_get_chip_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goodix_chip_data = type { i32 }

@gt1x_chip_data = common dso_local global %struct.goodix_chip_data zeroinitializer, align 4
@gt911_chip_data = common dso_local global %struct.goodix_chip_data zeroinitializer, align 4
@gt967_chip_data = common dso_local global %struct.goodix_chip_data zeroinitializer, align 4
@gt9x_chip_data = common dso_local global %struct.goodix_chip_data zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.goodix_chip_data* (i32)* @goodix_get_chip_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.goodix_chip_data* @goodix_get_chip_data(i32 %0) #0 {
  %2 = alloca %struct.goodix_chip_data*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %8 [
    i32 1151, label %5
    i32 5663, label %5
    i32 5688, label %5
    i32 911, label %6
    i32 9271, label %6
    i32 9110, label %6
    i32 927, label %6
    i32 928, label %6
    i32 912, label %7
    i32 967, label %7
  ]

5:                                                ; preds = %1, %1, %1
  store %struct.goodix_chip_data* @gt1x_chip_data, %struct.goodix_chip_data** %2, align 8
  br label %9

6:                                                ; preds = %1, %1, %1, %1, %1
  store %struct.goodix_chip_data* @gt911_chip_data, %struct.goodix_chip_data** %2, align 8
  br label %9

7:                                                ; preds = %1, %1
  store %struct.goodix_chip_data* @gt967_chip_data, %struct.goodix_chip_data** %2, align 8
  br label %9

8:                                                ; preds = %1
  store %struct.goodix_chip_data* @gt9x_chip_data, %struct.goodix_chip_data** %2, align 8
  br label %9

9:                                                ; preds = %8, %7, %6, %5
  %10 = load %struct.goodix_chip_data*, %struct.goodix_chip_data** %2, align 8
  ret %struct.goodix_chip_data* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
