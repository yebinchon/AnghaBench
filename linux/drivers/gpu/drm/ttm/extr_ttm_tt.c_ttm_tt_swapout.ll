; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_swapout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_swapout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, i64, i32, i32, %struct.page*, %struct.page** }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.file = type { %struct.address_space* }

@ENOMEM = common dso_local global i32 0, align 4
@tt_unbound = common dso_local global i64 0, align 8
@tt_unpopulated = common dso_local global i64 0, align 8
@tt_cached = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"ttm swap\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed allocating swap storage\0A\00", align 1
@TTM_PAGE_FLAG_NO_RETRY = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_PERSISTENT_SWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_tt_swapout(%struct.ttm_tt* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %16 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @tt_unbound, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %22 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @tt_unpopulated, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %20, %2
  %27 = phi i1 [ false, %2 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %31 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @tt_cached, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = icmp ne %struct.file* %37, null
  br i1 %38, label %57, label %39

39:                                               ; preds = %26
  %40 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %41 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = call %struct.page* @shmem_file_setup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %44, i32 0)
  %46 = bitcast %struct.page* %45 to %struct.file*
  store %struct.file* %46, %struct.file** %7, align 8
  %47 = load %struct.file*, %struct.file** %7, align 8
  %48 = bitcast %struct.file* %47 to %struct.page*
  %49 = call i64 @IS_ERR(%struct.page* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %39
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.file*, %struct.file** %7, align 8
  %54 = bitcast %struct.file* %53 to %struct.page*
  %55 = call i32 @PTR_ERR(%struct.page* %54)
  store i32 %55, i32* %3, align 4
  br label %152

56:                                               ; preds = %39
  br label %59

57:                                               ; preds = %26
  %58 = load %struct.file*, %struct.file** %5, align 8
  store %struct.file* %58, %struct.file** %7, align 8
  br label %59

59:                                               ; preds = %57, %56
  %60 = load %struct.file*, %struct.file** %7, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = load %struct.address_space*, %struct.address_space** %61, align 8
  store %struct.address_space* %62, %struct.address_space** %6, align 8
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %119, %59
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %66 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %122

69:                                               ; preds = %63
  %70 = load %struct.address_space*, %struct.address_space** %6, align 8
  %71 = call i32 @mapping_gfp_mask(%struct.address_space* %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %73 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TTM_PAGE_FLAG_NO_RETRY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  br label %81

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %86 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %85, i32 0, i32 5
  %87 = load %struct.page**, %struct.page*** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.page*, %struct.page** %87, i64 %89
  %91 = load %struct.page*, %struct.page** %90, align 8
  store %struct.page* %91, %struct.page** %8, align 8
  %92 = load %struct.page*, %struct.page** %8, align 8
  %93 = icmp eq %struct.page* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  br label %119

98:                                               ; preds = %81
  %99 = load %struct.address_space*, %struct.address_space** %6, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call %struct.page* @shmem_read_mapping_page_gfp(%struct.address_space* %99, i32 %100, i32 %101)
  store %struct.page* %102, %struct.page** %9, align 8
  %103 = load %struct.page*, %struct.page** %9, align 8
  %104 = call i64 @IS_ERR(%struct.page* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load %struct.page*, %struct.page** %9, align 8
  %108 = call i32 @PTR_ERR(%struct.page* %107)
  store i32 %108, i32* %11, align 4
  br label %143

109:                                              ; preds = %98
  %110 = load %struct.page*, %struct.page** %9, align 8
  %111 = load %struct.page*, %struct.page** %8, align 8
  %112 = call i32 @copy_highpage(%struct.page* %110, %struct.page* %111)
  %113 = load %struct.page*, %struct.page** %9, align 8
  %114 = call i32 @set_page_dirty(%struct.page* %113)
  %115 = load %struct.page*, %struct.page** %9, align 8
  %116 = call i32 @mark_page_accessed(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %9, align 8
  %118 = call i32 @put_page(%struct.page* %117)
  br label %119

119:                                              ; preds = %109, %97
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %63

122:                                              ; preds = %63
  %123 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %124 = call i32 @ttm_tt_unpopulate(%struct.ttm_tt* %123)
  %125 = load %struct.file*, %struct.file** %7, align 8
  %126 = bitcast %struct.file* %125 to %struct.page*
  %127 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %128 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %127, i32 0, i32 4
  store %struct.page* %126, %struct.page** %128, align 8
  %129 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %130 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %131 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.file*, %struct.file** %5, align 8
  %135 = icmp ne %struct.file* %134, null
  br i1 %135, label %136, label %142

136:                                              ; preds = %122
  %137 = load i32, i32* @TTM_PAGE_FLAG_PERSISTENT_SWAP, align 4
  %138 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %139 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %122
  store i32 0, i32* %3, align 4
  br label %152

143:                                              ; preds = %106
  %144 = load %struct.file*, %struct.file** %5, align 8
  %145 = icmp ne %struct.file* %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = load %struct.file*, %struct.file** %7, align 8
  %148 = bitcast %struct.file* %147 to %struct.page*
  %149 = call i32 @fput(%struct.page* %148)
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %150, %142, %51
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.page* @shmem_file_setup(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @shmem_read_mapping_page_gfp(%struct.address_space*, i32, i32) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @ttm_tt_unpopulate(%struct.ttm_tt*) #1

declare dso_local i32 @fput(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
