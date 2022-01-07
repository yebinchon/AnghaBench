; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_scatterlist.c_alloc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_scatterlist.c_alloc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfn_table = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.scatterlist* }
%struct.scatterlist = type { i64, i64 }
%struct.rnd_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PFN_BIAS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfn_table*, i64, i64, i64 (i64, i64, %struct.rnd_state*)*, %struct.rnd_state*, i32)* @alloc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_table(%struct.pfn_table* %0, i64 %1, i64 %2, i64 (i64, i64, %struct.rnd_state*)* %3, %struct.rnd_state* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfn_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64 (i64, i64, %struct.rnd_state*)*, align 8
  %12 = alloca %struct.rnd_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.pfn_table* %0, %struct.pfn_table** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 (i64, i64, %struct.rnd_state*)* %3, i64 (i64, i64, %struct.rnd_state*)** %11, align 8
  store %struct.rnd_state* %4, %struct.rnd_state** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.pfn_table*, %struct.pfn_table** %8, align 8
  %19 = getelementptr inbounds %struct.pfn_table, %struct.pfn_table* %18, i32 0, i32 2
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load i32, i32* @__GFP_NORETRY, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @__GFP_NOWARN, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @sg_alloc_table(%struct.TYPE_3__* %19, i64 %20, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %7, align 4
  br label %126

30:                                               ; preds = %6
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = mul i64 %31, %32
  %34 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %35 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @overflows_type(i64 %33, i64 %36)
  %38 = call i32 @GEM_BUG_ON(i32 %37)
  %39 = load i64, i64* @PFN_BIAS, align 8
  %40 = load %struct.pfn_table*, %struct.pfn_table** %8, align 8
  %41 = getelementptr inbounds %struct.pfn_table, %struct.pfn_table* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.pfn_table*, %struct.pfn_table** %8, align 8
  %43 = getelementptr inbounds %struct.pfn_table, %struct.pfn_table* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %16, align 8
  %45 = load %struct.pfn_table*, %struct.pfn_table** %8, align 8
  %46 = getelementptr inbounds %struct.pfn_table, %struct.pfn_table* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load %struct.scatterlist*, %struct.scatterlist** %47, align 8
  store %struct.scatterlist* %48, %struct.scatterlist** %14, align 8
  store i64 0, i64* %15, align 8
  br label %49

49:                                               ; preds = %113, %30
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %116

53:                                               ; preds = %49
  %54 = load i64 (i64, i64, %struct.rnd_state*)*, i64 (i64, i64, %struct.rnd_state*)** %11, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.rnd_state*, %struct.rnd_state** %12, align 8
  %58 = call i64 %54(i64 %55, i64 %56, %struct.rnd_state* %57)
  store i64 %58, i64* %17, align 8
  %59 = load i64, i64* %16, align 8
  %60 = call i32 @pfn_to_page(i64 %59)
  %61 = load i64, i64* %16, align 8
  %62 = load i64, i64* %17, align 8
  %63 = add i64 %61, %62
  %64 = call i32 @pfn_to_page(i64 %63)
  %65 = load i64, i64* %17, align 8
  %66 = call i32 @page_contiguous(i32 %60, i32 %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %53
  %69 = load %struct.pfn_table*, %struct.pfn_table** %8, align 8
  %70 = getelementptr inbounds %struct.pfn_table, %struct.pfn_table* %69, i32 0, i32 2
  %71 = call i32 @sg_free_table(%struct.TYPE_3__* %70)
  %72 = load i32, i32* @ENOSPC, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %126

74:                                               ; preds = %53
  %75 = load i64, i64* %15, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %79 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %78)
  store %struct.scatterlist* %79, %struct.scatterlist** %14, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %82 = load i64, i64* %16, align 8
  %83 = call i32 @pfn_to_page(i64 %82)
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* @PAGE_SIZE, align 8
  %86 = mul i64 %84, %85
  %87 = call i32 @sg_set_page(%struct.scatterlist* %81, i32 %83, i64 %86, i32 0)
  %88 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %89 = call i32 @sg_page(%struct.scatterlist* %88)
  %90 = call i64 @page_to_pfn(i32 %89)
  %91 = load i64, i64* %16, align 8
  %92 = icmp ne i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @GEM_BUG_ON(i32 %93)
  %95 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %96 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* @PAGE_SIZE, align 8
  %100 = mul i64 %98, %99
  %101 = icmp ne i64 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @GEM_BUG_ON(i32 %102)
  %104 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %105 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @GEM_BUG_ON(i32 %108)
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %16, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %16, align 8
  br label %113

113:                                              ; preds = %80
  %114 = load i64, i64* %15, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %15, align 8
  br label %49

116:                                              ; preds = %49
  %117 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %118 = call i32 @sg_mark_end(%struct.scatterlist* %117)
  %119 = load i64, i64* %15, align 8
  %120 = load %struct.pfn_table*, %struct.pfn_table** %8, align 8
  %121 = getelementptr inbounds %struct.pfn_table, %struct.pfn_table* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load %struct.pfn_table*, %struct.pfn_table** %8, align 8
  %125 = getelementptr inbounds %struct.pfn_table, %struct.pfn_table* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %116, %68, %28
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i64 @sg_alloc_table(%struct.TYPE_3__*, i64, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @overflows_type(i64, i64) #1

declare dso_local i32 @page_contiguous(i32, i32, i64) #1

declare dso_local i32 @pfn_to_page(i64) #1

declare dso_local i32 @sg_free_table(%struct.TYPE_3__*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i64, i32) #1

declare dso_local i64 @page_to_pfn(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
