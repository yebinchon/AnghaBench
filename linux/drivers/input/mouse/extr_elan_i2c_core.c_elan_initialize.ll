; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { i32 }

@ETP_RETRY_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elan_tp_data*)* @elan_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_initialize(%struct.elan_tp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  %6 = load i32, i32* @ETP_RETRY_COUNT, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %15, %1
  %8 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %9 = call i32 @__elan_initialize(%struct.elan_tp_data* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %21

13:                                               ; preds = %7
  %14 = call i32 @msleep(i32 30)
  br label %15

15:                                               ; preds = %13
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %7, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @__elan_initialize(%struct.elan_tp_data*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
