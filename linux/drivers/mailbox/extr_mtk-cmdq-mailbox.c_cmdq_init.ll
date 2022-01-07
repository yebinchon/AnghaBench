; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq = type { i32, i64 }

@CMDQ_THR_ACTIVE_SLOT_CYCLES = common dso_local global i32 0, align 4
@CMDQ_THR_SLOT_CYCLES = common dso_local global i64 0, align 8
@CMDQ_MAX_EVENT = common dso_local global i32 0, align 4
@CMDQ_SYNC_TOKEN_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdq*)* @cmdq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_init(%struct.cmdq* %0) #0 {
  %2 = alloca %struct.cmdq*, align 8
  %3 = alloca i32, align 4
  store %struct.cmdq* %0, %struct.cmdq** %2, align 8
  %4 = load %struct.cmdq*, %struct.cmdq** %2, align 8
  %5 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @clk_enable(i32 %6)
  %8 = icmp slt i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load i32, i32* @CMDQ_THR_ACTIVE_SLOT_CYCLES, align 4
  %12 = load %struct.cmdq*, %struct.cmdq** %2, align 8
  %13 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CMDQ_THR_SLOT_CYCLES, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %30, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CMDQ_MAX_EVENT, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.cmdq*, %struct.cmdq** %2, align 8
  %25 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CMDQ_SYNC_TOKEN_UPDATE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load %struct.cmdq*, %struct.cmdq** %2, align 8
  %35 = getelementptr inbounds %struct.cmdq, %struct.cmdq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_disable(i32 %36)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @clk_enable(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
