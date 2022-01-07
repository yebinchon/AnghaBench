; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_pm.c_cc_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_pm.c_cc_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cc_drvdata = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"unset HOST_POWER_DOWN_EN\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"failed getting clock back on. We're toast.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cryptocell reset not completed\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@HOST_POWER_DOWN_EN = common dso_local global i32 0, align 4
@POWER_DOWN_DISABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"init_cc_regs (%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"cc_resume_req_queue (%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_pm_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cc_drvdata*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.cc_drvdata* @dev_get_drvdata(%struct.device* %6)
  store %struct.cc_drvdata* %7, %struct.cc_drvdata** %5, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %11 = call i32 @cc_clk_on(%struct.cc_drvdata* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %57

18:                                               ; preds = %1
  %19 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %20 = call i32 @cc_wait_for_reset_completion(%struct.cc_drvdata* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %18
  %28 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %29 = load i32, i32* @HOST_POWER_DOWN_EN, align 4
  %30 = call i32 @CC_REG(i32 %29)
  %31 = load i32, i32* @POWER_DOWN_DISABLE, align 4
  %32 = call i32 @cc_iowrite(%struct.cc_drvdata* %28, i32 %30, i32 %31)
  %33 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %34 = call i32 @init_cc_regs(%struct.cc_drvdata* %33, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %57

42:                                               ; preds = %27
  %43 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %44 = call i32 @cc_tee_handle_fips_error(%struct.cc_drvdata* %43)
  %45 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %46 = call i32 @cc_resume_req_queue(%struct.cc_drvdata* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %42
  %55 = load %struct.cc_drvdata*, %struct.cc_drvdata** %5, align 8
  %56 = call i32 @cc_init_hash_sram(%struct.cc_drvdata* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %49, %37, %22, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.cc_drvdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @cc_clk_on(%struct.cc_drvdata*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @cc_wait_for_reset_completion(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_iowrite(%struct.cc_drvdata*, i32, i32) #1

declare dso_local i32 @CC_REG(i32) #1

declare dso_local i32 @init_cc_regs(%struct.cc_drvdata*, i32) #1

declare dso_local i32 @cc_tee_handle_fips_error(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_resume_req_queue(%struct.cc_drvdata*) #1

declare dso_local i32 @cc_init_hash_sram(%struct.cc_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
