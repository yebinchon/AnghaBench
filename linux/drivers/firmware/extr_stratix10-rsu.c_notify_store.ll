; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_notify_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-rsu.c_notify_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stratix10_rsu_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@COMMAND_RSU_NOTIFY = common dso_local global i32 0, align 4
@rsu_command_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error, RSU notify returned %i\0A\00", align 1
@COMMAND_RSU_STATUS = common dso_local global i32 0, align 4
@rsu_status_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error, getting RSU status %i\0A\00", align 1
@RSU_FW_VERSION_MASK = common dso_local global i32 0, align 4
@COMMAND_RSU_RETRY = common dso_local global i32 0, align 4
@rsu_retry_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Error, getting RSU retry %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @notify_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stratix10_rsu_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.stratix10_rsu_priv* @dev_get_drvdata(%struct.device* %13)
  store %struct.stratix10_rsu_priv* %14, %struct.stratix10_rsu_priv** %10, align 8
  %15 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %10, align 8
  %16 = icmp eq %struct.stratix10_rsu_priv* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %76

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 0, i64* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %76

27:                                               ; preds = %20
  %28 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %10, align 8
  %29 = load i32, i32* @COMMAND_RSU_NOTIFY, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* @rsu_command_callback, align 4
  %32 = call i32 @rsu_send_msg(%struct.stratix10_rsu_priv* %28, i32 %29, i64 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %76

40:                                               ; preds = %27
  %41 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %10, align 8
  %42 = load i32, i32* @COMMAND_RSU_STATUS, align 4
  %43 = load i32, i32* @rsu_status_callback, align 4
  %44 = call i32 @rsu_send_msg(%struct.stratix10_rsu_priv* %41, i32 %42, i64 0, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %76

52:                                               ; preds = %40
  %53 = load i32, i32* @RSU_FW_VERSION_MASK, align 4
  %54 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %10, align 8
  %55 = getelementptr inbounds %struct.stratix10_rsu_priv, %struct.stratix10_rsu_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @FIELD_GET(i32 %53, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load %struct.stratix10_rsu_priv*, %struct.stratix10_rsu_priv** %10, align 8
  %62 = load i32, i32* @COMMAND_RSU_RETRY, align 4
  %63 = load i32, i32* @rsu_retry_callback, align 4
  %64 = call i32 @rsu_send_msg(%struct.stratix10_rsu_priv* %61, i32 %62, i64 0, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %76

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %73, %67, %47, %35, %25, %17
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.stratix10_rsu_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @rsu_send_msg(%struct.stratix10_rsu_priv*, i32, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
