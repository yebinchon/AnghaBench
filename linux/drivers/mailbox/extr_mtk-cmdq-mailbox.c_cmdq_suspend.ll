; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cmdq = type { i32, i32, i32, %struct.cmdq_thread* }
%struct.cmdq_thread = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"exist running task(s) in suspend\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @cmdq_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.cmdq*, align 8
  %4 = alloca %struct.cmdq_thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.cmdq* @dev_get_drvdata(%struct.device* %7)
  store %struct.cmdq* %8, %struct.cmdq** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.cmdq*, %struct.cmdq** %3, align 8
  %10 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.cmdq*, %struct.cmdq** %3, align 8
  %14 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.cmdq*, %struct.cmdq** %3, align 8
  %19 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %18, i32 0, i32 3
  %20 = load %struct.cmdq_thread*, %struct.cmdq_thread** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %20, i64 %22
  store %struct.cmdq_thread* %23, %struct.cmdq_thread** %4, align 8
  %24 = load %struct.cmdq_thread*, %struct.cmdq_thread** %4, align 8
  %25 = getelementptr inbounds %struct.cmdq_thread, %struct.cmdq_thread* %24, i32 0, i32 0
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %11

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.device*, %struct.device** %2, align 8
  %38 = call i32 @dev_warn(%struct.device* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.cmdq*, %struct.cmdq** %3, align 8
  %41 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_unprepare(i32 %42)
  ret i32 0
}

declare dso_local %struct.cmdq* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
