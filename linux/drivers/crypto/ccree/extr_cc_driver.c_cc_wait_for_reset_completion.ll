; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.c_cc_wait_for_reset_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_driver.c_cc_wait_for_reset_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { i64 }

@CC_HW_REV_712 = common dso_local global i64 0, align 8
@CC_HW_RESET_LOOP_COUNT = common dso_local global i32 0, align 4
@NVM_IS_IDLE = common dso_local global i32 0, align 4
@CC_NVM_IS_IDLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_wait_for_reset_completion(%struct.cc_drvdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %3, align 8
  %6 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CC_HW_REV_712, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %29, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CC_HW_RESET_LOOP_COUNT, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load %struct.cc_drvdata*, %struct.cc_drvdata** %3, align 8
  %19 = load i32, i32* @NVM_IS_IDLE, align 4
  %20 = call i32 @CC_REG(i32 %19)
  %21 = call i32 @cc_ioread(%struct.cc_drvdata* %18, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @CC_NVM_IS_IDLE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %33

27:                                               ; preds = %17
  %28 = call i32 (...) @schedule()
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %13

32:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %26, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @cc_ioread(%struct.cc_drvdata*, i32) #1

declare dso_local i32 @CC_REG(i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
