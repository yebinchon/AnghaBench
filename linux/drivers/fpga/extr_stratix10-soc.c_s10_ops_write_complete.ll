; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_ops_write_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_stratix10-soc.c_s10_ops_write_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.s10_priv* }
%struct.s10_priv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.fpga_image_info = type { i32 }

@COMMAND_RECONFIG_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"timeout waiting for RECONFIG_COMPLETED\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"error (%d) waiting for RECONFIG_COMPLETED\0A\00", align 1
@SVC_STATUS_RECONFIG_COMPLETED = common dso_local global i32 0, align 4
@SVC_STATUS_RECONFIG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"ERROR - giving up - SVC_STATUS_RECONFIG_ERROR\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*)* @s10_ops_write_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s10_ops_write_complete(%struct.fpga_manager* %0, %struct.fpga_image_info* %1) #0 {
  %3 = alloca %struct.fpga_manager*, align 8
  %4 = alloca %struct.fpga_image_info*, align 8
  %5 = alloca %struct.s10_priv*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %3, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %4, align 8
  %9 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %10 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %9, i32 0, i32 0
  %11 = load %struct.s10_priv*, %struct.s10_priv** %10, align 8
  store %struct.s10_priv* %11, %struct.s10_priv** %5, align 8
  %12 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %13 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.fpga_image_info*, %struct.fpga_image_info** %4, align 8
  %17 = getelementptr inbounds %struct.fpga_image_info, %struct.fpga_image_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @usecs_to_jiffies(i32 %18)
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %70, %2
  %21 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %22 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %21, i32 0, i32 2
  %23 = call i32 @reinit_completion(i32* %22)
  %24 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %25 = load i32, i32* @COMMAND_RECONFIG_STATUS, align 4
  %26 = call i32 @s10_svc_send_msg(%struct.s10_priv* %24, i32 %25, i32* null, i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %71

30:                                               ; preds = %20
  %31 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %32 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %31, i32 0, i32 2
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @wait_for_completion_interruptible_timeout(i32* %32, i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %71

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %71

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %52 = load i32, i32* @SVC_STATUS_RECONFIG_COMPLETED, align 4
  %53 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %54 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %53, i32 0, i32 1
  %55 = call i64 @test_and_clear_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %71

58:                                               ; preds = %49
  %59 = load i32, i32* @SVC_STATUS_RECONFIG_ERROR, align 4
  %60 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %61 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %60, i32 0, i32 1
  %62 = call i64 @test_and_clear_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @EFAULT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  br label %71

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  br i1 true, label %20, label %71

71:                                               ; preds = %70, %64, %57, %45, %37, %29
  %72 = load %struct.s10_priv*, %struct.s10_priv** %5, align 8
  %73 = getelementptr inbounds %struct.s10_priv, %struct.s10_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @stratix10_svc_done(i32 %74)
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @s10_svc_send_msg(%struct.s10_priv*, i32, i32*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @stratix10_svc_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
