; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_thread_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_thread_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cmdq_thread = type { i64 }

@CMDQ_THR_SUSPEND = common dso_local global i32 0, align 4
@CMDQ_THR_SUSPEND_TASK = common dso_local global i64 0, align 8
@CMDQ_THR_ENABLE_TASK = common dso_local global i64 0, align 8
@CMDQ_THR_ENABLED = common dso_local global i32 0, align 4
@CMDQ_THR_CURR_STATUS = common dso_local global i64 0, align 8
@CMDQ_THR_STATUS_SUSPENDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"suspend GCE thread 0x%x failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdq*, %struct.cmdq_thread*)* @cmdq_thread_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_thread_suspend(%struct.cmdq* %0, %struct.cmdq_thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmdq*, align 8
  %5 = alloca %struct.cmdq_thread*, align 8
  %6 = alloca i32, align 4
  store %struct.cmdq* %0, %struct.cmdq** %4, align 8
  store %struct.cmdq_thread* %1, %struct.cmdq_thread** %5, align 8
  %7 = load i32, i32* @CMDQ_THR_SUSPEND, align 4
  %8 = load %struct.cmdq_thread*, %struct.cmdq_thread** %5, align 8
  %9 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CMDQ_THR_SUSPEND_TASK, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load %struct.cmdq_thread*, %struct.cmdq_thread** %5, align 8
  %15 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CMDQ_THR_ENABLE_TASK, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = load i32, i32* @CMDQ_THR_ENABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load %struct.cmdq_thread*, %struct.cmdq_thread** %5, align 8
  %26 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CMDQ_THR_CURR_STATUS, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CMDQ_THR_STATUS_SUSPENDED, align 4
  %33 = and i32 %31, %32
  %34 = call i64 @readl_poll_timeout_atomic(i64 %29, i32 %30, i32 %33, i32 0, i32 10)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %24
  %37 = load %struct.cmdq*, %struct.cmdq** %4, align 8
  %38 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cmdq_thread*, %struct.cmdq_thread** %5, align 8
  %42 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cmdq*, %struct.cmdq** %4, align 8
  %45 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %36, %23
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
