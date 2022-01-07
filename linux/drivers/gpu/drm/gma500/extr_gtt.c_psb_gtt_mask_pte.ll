; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gtt.c_psb_gtt_mask_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gtt.c_psb_gtt_mask_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSB_PTE_VALID = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PSB_MMU_CACHED_MEMORY = common dso_local global i32 0, align 4
@PSB_PTE_CACHED = common dso_local global i32 0, align 4
@PSB_MMU_RO_MEMORY = common dso_local global i32 0, align 4
@PSB_PTE_RO = common dso_local global i32 0, align 4
@PSB_MMU_WO_MEMORY = common dso_local global i32 0, align 4
@PSB_PTE_WO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @psb_gtt_mask_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_gtt_mask_pte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @PSB_PTE_VALID, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @PAGE_SHIFT, align 4
  %9 = lshr i32 -1, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PSB_MMU_CACHED_MEMORY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @PSB_PTE_CACHED, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PSB_MMU_RO_MEMORY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @PSB_PTE_RO, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PSB_MMU_WO_MEMORY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @PSB_PTE_WO, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PAGE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %42, %43
  ret i32 %44
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
