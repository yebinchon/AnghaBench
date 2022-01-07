; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_mob_calculate_pt_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_mob_calculate_pt_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@VMW_PPN_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @vmw_mob_calculate_pt_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vmw_mob_calculate_pt_pages(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @PAGE_SIZE, align 8
  %7 = mul i64 %5, %6
  store i64 %7, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %15, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @PAGE_SIZE, align 8
  %11 = icmp ugt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = call i64 @DIV_ROUND_UP(i64 %16, i64 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* @VMW_PPN_SIZE, align 8
  %20 = load i64, i64* %3, align 8
  %21 = mul i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = add i64 %22, %23
  %25 = sub i64 %24, 1
  %26 = load i64, i64* @PAGE_MASK, align 8
  %27 = and i64 %25, %26
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %4, align 8
  br label %8

30:                                               ; preds = %8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  ret i64 %33
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
