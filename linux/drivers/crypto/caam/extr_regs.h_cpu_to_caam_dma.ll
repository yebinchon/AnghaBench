; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_regs.h_cpu_to_caam_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_regs.h_cpu_to_caam_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_ARCH_DMA_ADDR_T_64BIT = common dso_local global i32 0, align 4
@caam_ptr_sz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpu_to_caam_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_to_caam_dma(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @CONFIG_ARCH_DMA_ADDR_T_64BIT, align 4
  %5 = call i64 @IS_ENABLED(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* @caam_ptr_sz, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @cpu_to_caam_dma64(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %17

14:                                               ; preds = %7, %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @cpu_to_caam32(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @cpu_to_caam_dma64(i32) #1

declare dso_local i32 @cpu_to_caam32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
