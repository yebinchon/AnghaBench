; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_fifo_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_fifo_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max30102_data = type { i32 }

@MAX30102_REG_INT_STATUS = common dso_local global i32 0, align 4
@MAX30102_REG_INT_STATUS_FIFO_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max30102_data*)* @max30102_fifo_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30102_fifo_count(%struct.max30102_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max30102_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.max30102_data* %0, %struct.max30102_data** %3, align 8
  %6 = load %struct.max30102_data*, %struct.max30102_data** %3, align 8
  %7 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAX30102_REG_INT_STATUS, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MAX30102_REG_INT_STATUS_FIFO_RDY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %22

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
