; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_command_is_wfe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_command_is_wfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMDQ_WFE_UPDATE = common dso_local global i32 0, align 4
@CMDQ_WFE_WAIT = common dso_local global i32 0, align 4
@CMDQ_WFE_WAIT_VALUE = common dso_local global i32 0, align 4
@CMDQ_CODE_WFE = common dso_local global i32 0, align 4
@CMDQ_OP_CODE_SHIFT = common dso_local global i32 0, align 4
@CMDQ_OP_CODE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cmdq_command_is_wfe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmdq_command_is_wfe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @CMDQ_WFE_UPDATE, align 4
  %7 = load i32, i32* @CMDQ_WFE_WAIT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @CMDQ_WFE_WAIT_VALUE, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @CMDQ_CODE_WFE, align 4
  %12 = load i32, i32* @CMDQ_OP_CODE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = shl i32 %13, 32
  store i32 %14, i32* %4, align 4
  %15 = load i64, i64* @CMDQ_OP_CODE_MASK, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 32
  %18 = or i32 %17, -1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %21, %24
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
