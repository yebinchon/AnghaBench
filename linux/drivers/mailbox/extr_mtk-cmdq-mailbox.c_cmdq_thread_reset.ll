; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_thread_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_thread_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cmdq_thread = type { i64 }

@CMDQ_THR_DO_WARM_RESET = common dso_local global i32 0, align 4
@CMDQ_THR_WARM_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"reset GCE thread 0x%x failed\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdq*, %struct.cmdq_thread*)* @cmdq_thread_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_thread_reset(%struct.cmdq* %0, %struct.cmdq_thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmdq*, align 8
  %5 = alloca %struct.cmdq_thread*, align 8
  %6 = alloca i32, align 4
  store %struct.cmdq* %0, %struct.cmdq** %4, align 8
  store %struct.cmdq_thread* %1, %struct.cmdq_thread** %5, align 8
  %7 = load i32, i32* @CMDQ_THR_DO_WARM_RESET, align 4
  %8 = load %struct.cmdq_thread*, %struct.cmdq_thread** %5, align 8
  %9 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CMDQ_THR_WARM_RESET, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  %14 = load %struct.cmdq_thread*, %struct.cmdq_thread** %5, align 8
  %15 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CMDQ_THR_WARM_RESET, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CMDQ_THR_DO_WARM_RESET, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @readl_poll_timeout_atomic(i64 %18, i32 %19, i32 %25, i32 0, i32 10)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %2
  %29 = load %struct.cmdq*, %struct.cmdq** %4, align 8
  %30 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cmdq_thread*, %struct.cmdq_thread** %5, align 8
  %34 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cmdq*, %struct.cmdq** %4, align 8
  %37 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
