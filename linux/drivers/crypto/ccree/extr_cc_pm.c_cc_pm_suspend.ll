; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_pm.c_cc_pm_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_pm.c_cc_pm_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cc_drvdata = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"set HOST_POWER_DOWN_EN\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cc_suspend_req_queue (%x)\0A\00", align 1
@HOST_POWER_DOWN_EN = common dso_local global i32 0, align 4
@POWER_DOWN_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_pm_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.cc_drvdata*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.cc_drvdata* @dev_get_drvdata(%struct.device* %6)
  store %struct.cc_drvdata* %7, %struct.cc_drvdata** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cc_drvdata*, %struct.cc_drvdata** %4, align 8
  %11 = call i32 @cc_suspend_req_queue(%struct.cc_drvdata* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %29

19:                                               ; preds = %1
  %20 = load %struct.cc_drvdata*, %struct.cc_drvdata** %4, align 8
  %21 = call i32 @fini_cc_regs(%struct.cc_drvdata* %20)
  %22 = load %struct.cc_drvdata*, %struct.cc_drvdata** %4, align 8
  %23 = load i32, i32* @HOST_POWER_DOWN_EN, align 4
  %24 = call i32 @CC_REG(i32 %23)
  %25 = load i32, i32* @POWER_DOWN_ENABLE, align 4
  %26 = call i32 @cc_iowrite(%struct.cc_drvdata* %22, i32 %24, i32 %25)
  %27 = load %struct.cc_drvdata*, %struct.cc_drvdata** %4, align 8
  %28 = call i32 @cc_clk_off(%struct.cc_drvdata* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %19, %14
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.cc_drvdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @cc_suspend_req_queue(%struct.cc_drvdata*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @fini_cc_regs(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_iowrite(%struct.cc_drvdata*, i32, i32) #1

declare dso_local i32 @CC_REG(i32) #1

declare dso_local i32 @cc_clk_off(%struct.cc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
