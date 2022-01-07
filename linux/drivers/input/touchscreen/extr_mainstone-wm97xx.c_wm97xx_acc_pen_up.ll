; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mainstone-wm97xx.c_wm97xx_acc_pen_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mainstone-wm97xx.c_wm97xx_acc_pen_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm97xx = type { i32 }

@MODR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm97xx*)* @wm97xx_acc_pen_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm97xx_acc_pen_up(%struct.wm97xx* %0) #0 {
  %2 = alloca %struct.wm97xx*, align 8
  %3 = alloca i32, align 4
  store %struct.wm97xx* %0, %struct.wm97xx** %2, align 8
  %4 = call i32 @schedule_timeout_uninterruptible(i32 1)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %10, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 16
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i32, i32* @MODR, align 4
  br label %10

10:                                               ; preds = %8
  %11 = load i32, i32* %3, align 4
  %12 = add i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %5

13:                                               ; preds = %5
  ret void
}

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
