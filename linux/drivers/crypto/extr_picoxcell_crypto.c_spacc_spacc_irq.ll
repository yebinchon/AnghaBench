; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_spacc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_spacc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spacc_engine = type { i64 }

@SPA_IRQ_STAT_REG_OFFSET = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spacc_spacc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spacc_spacc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.spacc_engine*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.spacc_engine*
  store %struct.spacc_engine* %8, %struct.spacc_engine** %5, align 8
  %9 = load %struct.spacc_engine*, %struct.spacc_engine** %5, align 8
  %10 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SPA_IRQ_STAT_REG_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.spacc_engine*, %struct.spacc_engine** %5, align 8
  %17 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SPA_IRQ_STAT_REG_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.spacc_engine*, %struct.spacc_engine** %5, align 8
  %23 = call i32 @spacc_process_done(%struct.spacc_engine* %22)
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %24
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spacc_process_done(%struct.spacc_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
