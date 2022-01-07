; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_restrict_pgsizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c_arm_lpae_restrict_pgsizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable_cfg = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@SZ_2M = common dso_local global i32 0, align 4
@SZ_1G = common dso_local global i32 0, align 4
@SZ_32M = common dso_local global i32 0, align 4
@SZ_512M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_pgtable_cfg*)* @arm_lpae_restrict_pgsizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_lpae_restrict_pgsizes(%struct.io_pgtable_cfg* %0) #0 {
  %2 = alloca %struct.io_pgtable_cfg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.io_pgtable_cfg* %0, %struct.io_pgtable_cfg** %2, align 8
  store i32 48, i32* %5, align 4
  %6 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %7 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %3, align 8
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %17 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %25 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PAGE_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i64 @__fls(i32 %29)
  %31 = shl i64 1, %30
  store i64 %31, i64* %3, align 8
  br label %49

32:                                               ; preds = %15
  %33 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %34 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PAGE_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %41 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAGE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = call i64 @__ffs(i32 %44)
  %46 = shl i64 1, %45
  store i64 %46, i64* %3, align 8
  br label %48

47:                                               ; preds = %32
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %47, %39
  br label %49

49:                                               ; preds = %48, %23
  br label %50

50:                                               ; preds = %49, %12
  %51 = load i64, i64* %3, align 8
  switch i64 %51, label %74 [
    i64 129, label %52
    i64 130, label %58
    i64 128, label %62
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @SZ_2M, align 4
  %54 = or i32 129, %53
  %55 = load i32, i32* @SZ_1G, align 4
  %56 = or i32 %54, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %4, align 8
  br label %75

58:                                               ; preds = %50
  %59 = load i32, i32* @SZ_32M, align 4
  %60 = or i32 130, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %4, align 8
  br label %75

62:                                               ; preds = %50
  store i32 52, i32* %5, align 4
  %63 = load i32, i32* @SZ_512M, align 4
  %64 = or i32 128, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %4, align 8
  %66 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %67 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 48
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i64, i64* %4, align 8
  %72 = or i64 %71, 4398046511104
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %70, %62
  br label %75

74:                                               ; preds = %50
  store i64 0, i64* %4, align 8
  br label %75

75:                                               ; preds = %74, %73, %58, %52
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %78 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = and i64 %80, %76
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %84 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i8* @min(i32 %85, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %90 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %92 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i8* @min(i32 %93, i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %2, align 8
  %98 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  ret void
}

declare dso_local i64 @__fls(i32) #1

declare dso_local i64 @__ffs(i32) #1

declare dso_local i8* @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
