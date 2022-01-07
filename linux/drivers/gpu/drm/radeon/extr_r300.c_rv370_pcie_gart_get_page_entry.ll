; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_rv370_pcie_gart_get_page_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_rv370_pcie_gart_get_page_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADEON_GART_PAGE_READ = common dso_local global i32 0, align 4
@R300_PTE_READABLE = common dso_local global i32 0, align 4
@RADEON_GART_PAGE_WRITE = common dso_local global i32 0, align 4
@R300_PTE_WRITEABLE = common dso_local global i32 0, align 4
@RADEON_GART_PAGE_SNOOP = common dso_local global i32 0, align 4
@R300_PTE_UNSNOOPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv370_pcie_gart_get_page_entry(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @lower_32_bits(i32 %5)
  %7 = ashr i32 %6, 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @upper_32_bits(i32 %8)
  %10 = and i32 %9, 255
  %11 = shl i32 %10, 24
  %12 = or i32 %7, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @RADEON_GART_PAGE_READ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @R300_PTE_READABLE, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @RADEON_GART_PAGE_WRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @R300_PTE_WRITEABLE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RADEON_GART_PAGE_SNOOP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @R300_PTE_UNSNOOPED, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
