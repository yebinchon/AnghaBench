; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c___check_shared_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c___check_shared_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shared_memory_amount = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@DM_STATS_MEMORY_FACTOR = common dso_local global i32 0, align 4
@DM_STATS_VMALLOC_FACTOR = common dso_local global i64 0, align 8
@VMALLOC_END = common dso_local global i64 0, align 8
@VMALLOC_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__check_shared_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_shared_memory(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* @shared_memory_amount, align 8
  %6 = load i64, i64* %3, align 8
  %7 = add i64 %5, %6
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @shared_memory_amount, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = zext i32 %14 to i64
  %16 = lshr i64 %13, %15
  %17 = call i32 (...) @totalram_pages()
  %18 = load i32, i32* @DM_STATS_MEMORY_FACTOR, align 4
  %19 = sdiv i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %24

23:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22, %11
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @totalram_pages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
