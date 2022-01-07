; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iopgtable_clear_entry_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_omap-iommu.c_iopgtable_clear_entry_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_iommu = type { i32, i32 }

@IOPTE_SIZE = common dso_local global i64 0, align 8
@IOPTE_LARGE = common dso_local global i32 0, align 4
@IOLARGE_MASK = common dso_local global i32 0, align 4
@PTRS_PER_IOPTE = common dso_local global i32 0, align 4
@IOPGD_SIZE = common dso_local global i64 0, align 8
@IOPGD_SUPER = common dso_local global i32 0, align 4
@IOSUPER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.omap_iommu*, i32)* @iopgtable_clear_entry_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iopgtable_clear_entry_core(%struct.omap_iommu* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.omap_iommu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.omap_iommu* %0, %struct.omap_iommu** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.omap_iommu*, %struct.omap_iommu** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @iopgd_offset(%struct.omap_iommu* %14, i32 %15)
  store i32* %16, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @iopgd_index(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @iopte_index(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  store i64 %24, i64* %11, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %133

29:                                               ; preds = %2
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @iopgd_is_table(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %94

34:                                               ; preds = %29
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32* @iopte_offset(i32* %35, i32 %36)
  store i32* %37, i32** %13, align 8
  %38 = load i64, i64* @IOPTE_SIZE, align 8
  store i64 %38, i64* %6, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IOPTE_LARGE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %45, 16
  store i32 %46, i32* %8, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IOLARGE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = call i32* @iopte_offset(i32* %47, i32 %50)
  store i32* %51, i32** %13, align 8
  br label %52

52:                                               ; preds = %44, %34
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = mul i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memset(i32* %57, i32 0, i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @iopgd_page_paddr(i32* %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.omap_iommu*, %struct.omap_iommu** %4, align 8
  %66 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @flush_iopte_range(i32 %67, i32 %68, i64 %69, i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32* @iopte_offset(i32* %72, i32 0)
  store i32* %73, i32** %13, align 8
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %87, %52
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @PTRS_PER_IOPTE, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %131

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %74

90:                                               ; preds = %74
  %91 = load %struct.omap_iommu*, %struct.omap_iommu** %4, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @iopte_free(%struct.omap_iommu* %91, i32* %92, i32 1)
  store i32 1, i32* %8, align 4
  br label %115

94:                                               ; preds = %29
  %95 = load i64, i64* @IOPGD_SIZE, align 8
  store i64 %95, i64* %6, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IOPGD_SUPER, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @IOPGD_SUPER, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  %104 = mul nsw i32 %103, 16
  store i32 %104, i32* %8, align 4
  %105 = load %struct.omap_iommu*, %struct.omap_iommu** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @IOSUPER_MASK, align 4
  %108 = and i32 %106, %107
  %109 = call i32* @iopgd_offset(%struct.omap_iommu* %105, i32 %108)
  store i32* %109, i32** %7, align 8
  br label %110

110:                                              ; preds = %102, %94
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %6, align 8
  %114 = mul i64 %113, %112
  store i64 %114, i64* %6, align 8
  br label %115

115:                                              ; preds = %110, %90
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memset(i32* %116, i32 0, i32 %120)
  %122 = load %struct.omap_iommu*, %struct.omap_iommu** %4, align 8
  %123 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.omap_iommu*, %struct.omap_iommu** %4, align 8
  %126 = getelementptr inbounds %struct.omap_iommu, %struct.omap_iommu* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %10, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @flush_iopte_range(i32 %124, i32 %127, i64 %128, i32 %129)
  br label %131

131:                                              ; preds = %115, %85
  %132 = load i64, i64* %6, align 8
  store i64 %132, i64* %3, align 8
  br label %133

133:                                              ; preds = %131, %28
  %134 = load i64, i64* %3, align 8
  ret i64 %134
}

declare dso_local i32* @iopgd_offset(%struct.omap_iommu*, i32) #1

declare dso_local i32 @iopgd_index(i32) #1

declare dso_local i32 @iopte_index(i32) #1

declare dso_local i64 @iopgd_is_table(i32) #1

declare dso_local i32* @iopte_offset(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @iopgd_page_paddr(i32*) #1

declare dso_local i32 @flush_iopte_range(i32, i32, i64, i32) #1

declare dso_local i32 @iopte_free(%struct.omap_iommu*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
