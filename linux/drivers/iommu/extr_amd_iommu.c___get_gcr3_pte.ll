; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c___get_gcr3_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c___get_gcr3_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GCR3_VALID = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32)* @__get_gcr3_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__get_gcr3_pte(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %4, %49
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = mul nsw i32 9, %14
  %16 = ashr i32 %13, %15
  %17 = and i32 %16, 511
  store i32 %17, i32* %10, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %57

25:                                               ; preds = %12
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GCR3_VALID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32* null, i32** %5, align 8
  br label %59

35:                                               ; preds = %31
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call i64 @get_zeroed_page(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32* null, i32** %5, align 8
  br label %59

43:                                               ; preds = %35
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @iommu_virt_to_phys(i32* %44)
  %46 = load i32, i32* @GCR3_VALID, align 4
  %47 = or i32 %45, %46
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %25
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = call i32* @iommu_phys_to_virt(i32 %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %12

57:                                               ; preds = %24
  %58 = load i32*, i32** %11, align 8
  store i32* %58, i32** %5, align 8
  br label %59

59:                                               ; preds = %57, %42, %34
  %60 = load i32*, i32** %5, align 8
  ret i32* %60
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @iommu_virt_to_phys(i32*) #1

declare dso_local i32* @iommu_phys_to_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
