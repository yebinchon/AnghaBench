; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mbigen.c_get_mbigen_vec_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mbigen.c_get_mbigen_vec_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RESERVED_IRQ_PER_MBIGEN_CHIP = common dso_local global i64 0, align 8
@IRQS_PER_MBIGEN_NODE = common dso_local global i32 0, align 4
@MBIGEN_NODE_OFFSET = common dso_local global i32 0, align 4
@REG_MBIGEN_VEC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_mbigen_vec_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mbigen_vec_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @RESERVED_IRQ_PER_MBIGEN_CHIP, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = sub nsw i64 %7, %5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @IRQS_PER_MBIGEN_NODE, align 4
  %12 = sdiv i32 %10, %11
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @IRQS_PER_MBIGEN_NODE, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = mul i32 %17, 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MBIGEN_NODE_OFFSET, align 4
  %21 = mul i32 %19, %20
  %22 = add i32 %18, %21
  %23 = load i32, i32* @REG_MBIGEN_VEC_OFFSET, align 4
  %24 = add i32 %22, %23
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
