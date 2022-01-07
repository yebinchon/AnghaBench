; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_insert_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_insert_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.psb_mmu_pt = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psb_mmu_insert_pages(%struct.psb_mmu_pd* %0, %struct.page** %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.psb_mmu_pd*, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.psb_mmu_pt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.psb_mmu_pd* %0, %struct.psb_mmu_pd** %9, align 8
  store %struct.page** %1, %struct.page*** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 1, i32* %17, align 4
  %27 = load i64, i64* %11, align 8
  store i64 %27, i64* %25, align 8
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %26, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %7
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = srem i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %149

40:                                               ; preds = %32
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %17, align 4
  br label %46

44:                                               ; preds = %7
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %23, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @PAGE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %24, align 8
  %55 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %9, align 8
  %56 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @down_read(i32* %58)
  store i32 0, i32* %18, align 4
  br label %60

60:                                               ; preds = %116, %46
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %119

64:                                               ; preds = %60
  %65 = load i64, i64* %11, align 8
  store i64 %65, i64* %20, align 8
  %66 = load i64, i64* %20, align 8
  %67 = load i64, i64* %23, align 8
  %68 = add i64 %66, %67
  store i64 %68, i64* %21, align 8
  br label %69

69:                                               ; preds = %107, %64
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* %21, align 8
  %72 = call i64 @psb_pd_addr_end(i64 %70, i64 %71)
  store i64 %72, i64* %22, align 8
  %73 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %9, align 8
  %74 = load i64, i64* %20, align 8
  %75 = call %struct.psb_mmu_pt* @psb_mmu_pt_alloc_map_lock(%struct.psb_mmu_pd* %73, i64 %74)
  store %struct.psb_mmu_pt* %75, %struct.psb_mmu_pt** %16, align 8
  %76 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %16, align 8
  %77 = icmp ne %struct.psb_mmu_pt* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %69
  br label %120

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %96, %79
  %81 = load %struct.page**, %struct.page*** %10, align 8
  %82 = getelementptr inbounds %struct.page*, %struct.page** %81, i32 1
  store %struct.page** %82, %struct.page*** %10, align 8
  %83 = load %struct.page*, %struct.page** %81, align 8
  %84 = ptrtoint %struct.page* %83 to i32
  %85 = call i32 @page_to_pfn(i32 %84)
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @psb_mmu_mask_pte(i32 %85, i32 %86)
  store i32 %87, i32* %19, align 4
  %88 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %16, align 8
  %89 = load i64, i64* %20, align 8
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @psb_mmu_set_pte(%struct.psb_mmu_pt* %88, i64 %89, i32 %90)
  %92 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %16, align 8
  %93 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* %20, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %20, align 8
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* %22, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %80, label %104

104:                                              ; preds = %96
  %105 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %16, align 8
  %106 = call i32 @psb_mmu_pt_unmap_unlock(%struct.psb_mmu_pt* %105)
  br label %107

107:                                              ; preds = %104
  %108 = load i64, i64* %22, align 8
  store i64 %108, i64* %20, align 8
  %109 = load i64, i64* %22, align 8
  %110 = load i64, i64* %21, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %69, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %24, align 8
  %114 = load i64, i64* %11, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %60

119:                                              ; preds = %60
  store i32 0, i32* %26, align 4
  br label %120

120:                                              ; preds = %119, %78
  %121 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %9, align 8
  %122 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, -1
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %9, align 8
  %127 = load i64, i64* %25, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @psb_mmu_flush_ptes(%struct.psb_mmu_pd* %126, i64 %127, i32 %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %125, %120
  %133 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %9, align 8
  %134 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %133, i32 0, i32 1
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = call i32 @up_read(i32* %136)
  %138 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %9, align 8
  %139 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, -1
  br i1 %141, label %142, label %147

142:                                              ; preds = %132
  %143 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %9, align 8
  %144 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = call i32 @psb_mmu_flush(%struct.TYPE_2__* %145)
  br label %147

147:                                              ; preds = %142, %132
  %148 = load i32, i32* %26, align 4
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %147, %37
  %150 = load i32, i32* %8, align 4
  ret i32 %150
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @psb_pd_addr_end(i64, i64) #1

declare dso_local %struct.psb_mmu_pt* @psb_mmu_pt_alloc_map_lock(%struct.psb_mmu_pd*, i64) #1

declare dso_local i32 @psb_mmu_mask_pte(i32, i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @psb_mmu_set_pte(%struct.psb_mmu_pt*, i64, i32) #1

declare dso_local i32 @psb_mmu_pt_unmap_unlock(%struct.psb_mmu_pt*) #1

declare dso_local i32 @psb_mmu_flush_ptes(%struct.psb_mmu_pd*, i64, i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @psb_mmu_flush(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
