; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cy8ctmg110_ts.c_cy8ctmg110_set_sleepmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cy8ctmg110_ts.c_cy8ctmg110_set_sleepmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cy8ctmg110 = type { i32 }

@CY8CTMG110_TOUCH_WAKEUP_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cy8ctmg110*, i32)* @cy8ctmg110_set_sleepmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cy8ctmg110_set_sleepmode(%struct.cy8ctmg110* %0, i32 %1) #0 {
  %3 = alloca %struct.cy8ctmg110*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  store %struct.cy8ctmg110* %0, %struct.cy8ctmg110** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  store i8 -1, i8* %10, align 1
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  store i8 5, i8* %11, align 1
  br label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  store i8 16, i8* %13, align 1
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  store i8 -1, i8* %14, align 1
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  store i8 0, i8* %15, align 1
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.cy8ctmg110*, %struct.cy8ctmg110** %3, align 8
  %18 = load i32, i32* @CY8CTMG110_TOUCH_WAKEUP_TIME, align 4
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %20 = call i32 @cy8ctmg110_write_regs(%struct.cy8ctmg110* %17, i32 %18, i32 3, i8* %19)
  ret i32 %20
}

declare dso_local i32 @cy8ctmg110_write_regs(%struct.cy8ctmg110*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
