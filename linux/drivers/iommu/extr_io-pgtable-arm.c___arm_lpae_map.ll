; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c___arm_lpae_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c___arm_lpae_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_lpae_io_pgtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.io_pgtable_cfg }
%struct.io_pgtable_cfg = type { i64, i32 }

@ARM_LPAE_MAX_LEVELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ARM_LPAE_PTE_SW_SYNC = common dso_local global i32 0, align 4
@selftest_running = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_lpae_io_pgtable*, i64, i32, i64, i32, i32, i32*)* @__arm_lpae_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__arm_lpae_map(%struct.arm_lpae_io_pgtable* %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.arm_lpae_io_pgtable*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.io_pgtable_cfg*, align 8
  store %struct.arm_lpae_io_pgtable* %0, %struct.arm_lpae_io_pgtable** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %23 = call i64 @ARM_LPAE_BLOCK_SIZE(i32 %21, %struct.arm_lpae_io_pgtable* %22)
  store i64 %23, i64* %18, align 8
  %24 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %25 = call i64 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable* %24)
  store i64 %25, i64* %19, align 8
  %26 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %27 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store %struct.io_pgtable_cfg* %28, %struct.io_pgtable_cfg** %20, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %32 = call i32 @ARM_LPAE_LVL_IDX(i64 %29, i32 %30, %struct.arm_lpae_io_pgtable* %31)
  %33 = load i32*, i32** %15, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %15, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %18, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %7
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %20, align 8
  %42 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %40, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @arm_lpae_init_pte(%struct.arm_lpae_io_pgtable* %47, i64 %48, i32 %49, i32 %50, i32 %51, i32* %52)
  store i32 %53, i32* %8, align 4
  br label %147

54:                                               ; preds = %39, %7
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @ARM_LPAE_MAX_LEVELS, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp sge i32 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %147

65:                                               ; preds = %54
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @READ_ONCE(i32 %67)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %65
  %72 = load i64, i64* %19, align 8
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %20, align 8
  %75 = call i32* @__arm_lpae_alloc_pages(i64 %72, i32 %73, %struct.io_pgtable_cfg* %74)
  store i32* %75, i32** %16, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %147

81:                                               ; preds = %71
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %20, align 8
  %85 = call i32 @arm_lpae_install_table(i32* %82, i32* %83, i32 0, %struct.io_pgtable_cfg* %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32*, i32** %16, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %20, align 8
  %92 = call i32 @__arm_lpae_free_pages(i32* %89, i64 %90, %struct.io_pgtable_cfg* %91)
  br label %93

93:                                               ; preds = %88, %81
  br label %109

94:                                               ; preds = %65
  %95 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %20, align 8
  %96 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @ARM_LPAE_PTE_SW_SYNC, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = load i32*, i32** %15, align 8
  %106 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %20, align 8
  %107 = call i32 @__arm_lpae_sync_pte(i32* %105, %struct.io_pgtable_cfg* %106)
  br label %108

108:                                              ; preds = %104, %99, %94
  br label %109

109:                                              ; preds = %108, %93
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %116 = getelementptr inbounds %struct.arm_lpae_io_pgtable, %struct.arm_lpae_io_pgtable* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @iopte_leaf(i32 %113, i32 %114, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %124 = call i32* @iopte_deref(i32 %122, %struct.arm_lpae_io_pgtable* %123)
  store i32* %124, i32** %16, align 8
  br label %137

125:                                              ; preds = %112, %109
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i32, i32* @selftest_running, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i64 @WARN_ON(i32 %132)
  %134 = load i32, i32* @EEXIST, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %8, align 4
  br label %147

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %121
  %138 = load %struct.arm_lpae_io_pgtable*, %struct.arm_lpae_io_pgtable** %9, align 8
  %139 = load i64, i64* %10, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i64, i64* %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32*, i32** %16, align 8
  %146 = call i32 @__arm_lpae_map(%struct.arm_lpae_io_pgtable* %138, i64 %139, i32 %140, i64 %141, i32 %142, i32 %144, i32* %145)
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %137, %128, %78, %62, %46
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local i64 @ARM_LPAE_BLOCK_SIZE(i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i64 @ARM_LPAE_GRANULE(%struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @ARM_LPAE_LVL_IDX(i64, i32, %struct.arm_lpae_io_pgtable*) #1

declare dso_local i32 @arm_lpae_init_pte(%struct.arm_lpae_io_pgtable*, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32* @__arm_lpae_alloc_pages(i64, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @arm_lpae_install_table(i32*, i32*, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @__arm_lpae_free_pages(i32*, i64, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @__arm_lpae_sync_pte(i32*, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @iopte_leaf(i32, i32, i32) #1

declare dso_local i32* @iopte_deref(i32, %struct.arm_lpae_io_pgtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
