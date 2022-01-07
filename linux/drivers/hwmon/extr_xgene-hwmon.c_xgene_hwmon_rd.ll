; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_xgene-hwmon.c_xgene_hwmon_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_hwmon_dev = type { i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Mailbox send error %d\0A\00", align 1
@MBOX_OP_TIMEOUTMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Mailbox operation timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@MSG_TYPE_ERR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_hwmon_dev*, i32*)* @xgene_hwmon_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_hwmon_rd(%struct.xgene_hwmon_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.xgene_hwmon_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.xgene_hwmon_dev* %0, %struct.xgene_hwmon_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %7 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %10 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %9, i32 0, i32 4
  %11 = call i32 @init_completion(i32* %10)
  %12 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %13 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %15 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @mbox_send_message(i32 %16, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %23 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %71

27:                                               ; preds = %2
  %28 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %29 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %28, i32 0, i32 4
  %30 = load i32, i32* @MBOX_OP_TIMEOUTMS, align 4
  %31 = call i32 @msecs_to_jiffies(i32 %30)
  %32 = call i32 @wait_for_completion_timeout(i32* %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %36 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %71

41:                                               ; preds = %27
  %42 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %43 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @MSG_TYPE(i32 %45)
  %47 = load i64, i64* @MSG_TYPE_ERR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %71

52:                                               ; preds = %41
  %53 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %54 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %60 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %66 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %52, %49, %34, %21
  %72 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %73 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load %struct.xgene_hwmon_dev*, %struct.xgene_hwmon_dev** %3, align 8
  %75 = getelementptr inbounds %struct.xgene_hwmon_dev, %struct.xgene_hwmon_dev* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mbox_send_message(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @MSG_TYPE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
