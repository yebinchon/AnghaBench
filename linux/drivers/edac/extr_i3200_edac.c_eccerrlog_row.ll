; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i3200_edac.c_eccerrlog_row.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i3200_edac.c_eccerrlog_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I3200_ECCERRLOG_RANK_BITS = common dso_local global i32 0, align 4
@I3200_ECCERRLOG_RANK_SHIFT = common dso_local global i32 0, align 4
@I3200_RANKS_PER_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @eccerrlog_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eccerrlog_row(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @I3200_ECCERRLOG_RANK_BITS, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @I3200_ECCERRLOG_RANK_SHIFT, align 4
  %10 = ashr i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @I3200_RANKS_PER_CHANNEL, align 4
  %14 = mul nsw i32 %12, %13
  %15 = or i32 %11, %14
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
