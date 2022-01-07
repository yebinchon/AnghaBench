; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pd = type { i32, i8*, i8*, i8*, %struct.psb_mmu_driver*, i32, i32, i8*, i8* }
%struct.psb_mmu_driver = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PSB_PTE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.psb_mmu_pd* @psb_mmu_alloc_pd(%struct.psb_mmu_driver* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.psb_mmu_pd*, align 8
  %5 = alloca %struct.psb_mmu_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.psb_mmu_pd*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.psb_mmu_driver* %0, %struct.psb_mmu_driver** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.psb_mmu_pd* @kmalloc(i32 64, i32 %11)
  store %struct.psb_mmu_pd* %12, %struct.psb_mmu_pd** %8, align 8
  %13 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %14 = icmp ne %struct.psb_mmu_pd* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.psb_mmu_pd* null, %struct.psb_mmu_pd** %4, align 8
  br label %171

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_DMA32, align 4
  %18 = call i8* @alloc_page(i32 %17)
  %19 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %20 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %22 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %168

26:                                               ; preds = %16
  %27 = load i32, i32* @GFP_DMA32, align 4
  %28 = call i8* @alloc_page(i32 %27)
  %29 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %30 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %32 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %163

36:                                               ; preds = %26
  %37 = load i32, i32* @GFP_DMA32, align 4
  %38 = call i8* @alloc_page(i32 %37)
  %39 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %40 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %42 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %158

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %51 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @page_to_pfn(i8* %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i8* @psb_mmu_mask_pte(i32 %53, i32 %54)
  %56 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %57 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %59 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @page_to_pfn(i8* %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i8* @psb_mmu_mask_pte(i32 %61, i32 %62)
  %64 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %65 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  br label %71

66:                                               ; preds = %46
  %67 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %68 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %67, i32 0, i32 7
  store i8* null, i8** %68, align 8
  %69 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %70 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %69, i32 0, i32 8
  store i8* null, i8** %70, align 8
  br label %71

71:                                               ; preds = %66, %49
  %72 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %73 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i8** @kmap(i8* %74)
  store i8** %75, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %91, %71
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = sext i32 %79 to i64
  %81 = udiv i64 %80, 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %85 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %84, i32 0, i32 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i8**, i8*** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %86, i8** %90, align 8
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %76

94:                                               ; preds = %76
  %95 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %96 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @kunmap(i8* %97)
  %99 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %100 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i8** @kmap(i8* %101)
  store i8** %102, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %118, %94
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = sext i32 %106 to i64
  %108 = udiv i64 %107, 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %112 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %111, i32 0, i32 7
  %113 = load i8*, i8** %112, align 8
  %114 = load i8**, i8*** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  store i8* %113, i8** %117, align 8
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %103

121:                                              ; preds = %103
  %122 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %123 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @kunmap(i8* %124)
  %126 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %127 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = call i8** @kmap(i8* %128)
  %130 = call i32 @clear_page(i8** %129)
  %131 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %132 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @kunmap(i8* %133)
  %135 = call i32 @vmalloc_user(i32 8192)
  %136 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %137 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  %138 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %139 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %121
  br label %153

143:                                              ; preds = %121
  %144 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %145 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %144, i32 0, i32 0
  store i32 -1, i32* %145, align 8
  %146 = load i32, i32* @PSB_PTE_VALID, align 4
  %147 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %148 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load %struct.psb_mmu_driver*, %struct.psb_mmu_driver** %5, align 8
  %150 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %151 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %150, i32 0, i32 4
  store %struct.psb_mmu_driver* %149, %struct.psb_mmu_driver** %151, align 8
  %152 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  store %struct.psb_mmu_pd* %152, %struct.psb_mmu_pd** %4, align 8
  br label %171

153:                                              ; preds = %142
  %154 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %155 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %154, i32 0, i32 3
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @__free_page(i8* %156)
  br label %158

158:                                              ; preds = %153, %45
  %159 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %160 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %159, i32 0, i32 2
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @__free_page(i8* %161)
  br label %163

163:                                              ; preds = %158, %35
  %164 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %165 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @__free_page(i8* %166)
  br label %168

168:                                              ; preds = %163, %25
  %169 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %8, align 8
  %170 = call i32 @kfree(%struct.psb_mmu_pd* %169)
  store %struct.psb_mmu_pd* null, %struct.psb_mmu_pd** %4, align 8
  br label %171

171:                                              ; preds = %168, %143, %15
  %172 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %4, align 8
  ret %struct.psb_mmu_pd* %172
}

declare dso_local %struct.psb_mmu_pd* @kmalloc(i32, i32) #1

declare dso_local i8* @alloc_page(i32) #1

declare dso_local i8* @psb_mmu_mask_pte(i32, i32) #1

declare dso_local i32 @page_to_pfn(i8*) #1

declare dso_local i8** @kmap(i8*) #1

declare dso_local i32 @kunmap(i8*) #1

declare dso_local i32 @clear_page(i8**) #1

declare dso_local i32 @vmalloc_user(i32) #1

declare dso_local i32 @__free_page(i8*) #1

declare dso_local i32 @kfree(%struct.psb_mmu_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
