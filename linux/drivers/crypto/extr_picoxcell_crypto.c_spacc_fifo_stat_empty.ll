; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_fifo_stat_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_fifo_stat_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spacc_engine = type { i64 }

@SPA_FIFO_STAT_REG_OFFSET = common dso_local global i64 0, align 8
@SPA_FIFO_STAT_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spacc_engine*)* @spacc_fifo_stat_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spacc_fifo_stat_empty(%struct.spacc_engine* %0) #0 {
  %2 = alloca %struct.spacc_engine*, align 8
  store %struct.spacc_engine* %0, %struct.spacc_engine** %2, align 8
  %3 = load %struct.spacc_engine*, %struct.spacc_engine** %2, align 8
  %4 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SPA_FIFO_STAT_REG_OFFSET, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl(i64 %7)
  %9 = load i32, i32* @SPA_FIFO_STAT_EMPTY, align 4
  %10 = and i32 %8, %9
  ret i32 %10
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
