; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mbigen.c_get_mbigen_type_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mbigen.c_get_mbigen_type_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RESERVED_IRQ_PER_MBIGEN_CHIP = common dso_local global i64 0, align 8
@IRQS_PER_MBIGEN_NODE = common dso_local global i32 0, align 4
@MBIGEN_NODE_OFFSET = common dso_local global i32 0, align 4
@REG_MBIGEN_TYPE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @get_mbigen_type_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_mbigen_type_reg(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i64, i64* @RESERVED_IRQ_PER_MBIGEN_CHIP, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = sub nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @IRQS_PER_MBIGEN_NODE, align 4
  %17 = sdiv i32 %15, %16
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IRQS_PER_MBIGEN_NODE, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = urem i32 %22, 32
  %24 = shl i32 1, %23
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = udiv i32 %26, 32
  %28 = mul i32 %27, 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MBIGEN_NODE_OFFSET, align 4
  %32 = mul i32 %30, %31
  %33 = add i32 %29, %32
  %34 = load i32, i32* @REG_MBIGEN_TYPE_OFFSET, align 4
  %35 = add i32 %33, %34
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
