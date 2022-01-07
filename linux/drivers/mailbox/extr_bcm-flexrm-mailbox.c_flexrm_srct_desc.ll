; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_srct_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_srct_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRCT_TYPE = common dso_local global i32 0, align 4
@DESC_TYPE_SHIFT = common dso_local global i32 0, align 4
@DESC_TYPE_MASK = common dso_local global i32 0, align 4
@SRCT_LENGTH_SHIFT = common dso_local global i32 0, align 4
@SRCT_LENGTH_MASK = common dso_local global i32 0, align 4
@SRCT_ADDR_SHIFT = common dso_local global i32 0, align 4
@SRCT_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @flexrm_srct_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexrm_srct_desc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SRCT_TYPE, align 4
  %8 = load i32, i32* @DESC_TYPE_SHIFT, align 4
  %9 = load i32, i32* @DESC_TYPE_MASK, align 4
  %10 = call i32 @DESC_ENC(i32 %6, i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SRCT_LENGTH_SHIFT, align 4
  %14 = load i32, i32* @SRCT_LENGTH_MASK, align 4
  %15 = call i32 @DESC_ENC(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SRCT_ADDR_SHIFT, align 4
  %19 = load i32, i32* @SRCT_ADDR_MASK, align 4
  %20 = call i32 @DESC_ENC(i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @DESC_ENC(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
