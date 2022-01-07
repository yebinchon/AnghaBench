; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_qcom_hwspinlock.c_qcom_hwspinlock_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_qcom_hwspinlock.c_qcom_hwspinlock_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock = type { %struct.regmap_field* }
%struct.regmap_field = type { i32 }

@QCOM_MUTEX_APPS_PROC_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwspinlock*)* @qcom_hwspinlock_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_hwspinlock_trylock(%struct.hwspinlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwspinlock*, align 8
  %4 = alloca %struct.regmap_field*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hwspinlock* %0, %struct.hwspinlock** %3, align 8
  %7 = load %struct.hwspinlock*, %struct.hwspinlock** %3, align 8
  %8 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %7, i32 0, i32 0
  %9 = load %struct.regmap_field*, %struct.regmap_field** %8, align 8
  store %struct.regmap_field* %9, %struct.regmap_field** %4, align 8
  %10 = load %struct.regmap_field*, %struct.regmap_field** %4, align 8
  %11 = load i64, i64* @QCOM_MUTEX_APPS_PROC_ID, align 8
  %12 = call i32 @regmap_field_write(%struct.regmap_field* %10, i64 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.regmap_field*, %struct.regmap_field** %4, align 8
  %19 = call i32 @regmap_field_read(%struct.regmap_field* %18, i64* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @QCOM_MUTEX_APPS_PROC_ID, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %22, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @regmap_field_write(%struct.regmap_field*, i64) #1

declare dso_local i32 @regmap_field_read(%struct.regmap_field*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
