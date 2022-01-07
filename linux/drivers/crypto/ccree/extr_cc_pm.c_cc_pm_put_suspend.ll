; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_pm.c_cc_pm_put_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_pm.c_cc_pm_put_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cc_drvdata = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"request to suspend already suspended queue\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_pm_put_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cc_drvdata*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.cc_drvdata* @dev_get_drvdata(%struct.device* %5)
  store %struct.cc_drvdata* %6, %struct.cc_drvdata** %4, align 8
  %7 = load %struct.cc_drvdata*, %struct.cc_drvdata** %4, align 8
  %8 = call i32 @cc_req_queue_suspended(%struct.cc_drvdata* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @pm_runtime_mark_last_busy(%struct.device* %11)
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @pm_runtime_put_autosuspend(%struct.device* %13)
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.cc_drvdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cc_req_queue_suspended(%struct.cc_drvdata*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
