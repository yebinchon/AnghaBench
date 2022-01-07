; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_swapin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_tt.c_ttm_tt_swapin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i32, i32, %struct.file*, %struct.page** }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_NO_RETRY = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_PERSISTENT_SWAP = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_tt_swapin(%struct.ttm_tt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %14 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %13, i32 0, i32 2
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %5, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = icmp eq %struct.file* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.address_space*, %struct.address_space** %21, align 8
  store %struct.address_space* %22, %struct.address_space** %4, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %75, %1
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %26 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %78

29:                                               ; preds = %23
  %30 = load %struct.address_space*, %struct.address_space** %4, align 8
  %31 = call i32 @mapping_gfp_mask(%struct.address_space* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %33 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TTM_PAGE_FLAG_NO_RETRY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  br label %41

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load %struct.address_space*, %struct.address_space** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.page* @shmem_read_mapping_page_gfp(%struct.address_space* %45, i32 %46, i32 %47)
  store %struct.page* %48, %struct.page** %6, align 8
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = call i64 @IS_ERR(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load %struct.page*, %struct.page** %6, align 8
  %54 = call i32 @PTR_ERR(%struct.page* %53)
  store i32 %54, i32* %9, align 4
  br label %97

55:                                               ; preds = %41
  %56 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %57 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %56, i32 0, i32 3
  %58 = load %struct.page**, %struct.page*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 %60
  %62 = load %struct.page*, %struct.page** %61, align 8
  store %struct.page* %62, %struct.page** %7, align 8
  %63 = load %struct.page*, %struct.page** %7, align 8
  %64 = icmp eq %struct.page* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %97

69:                                               ; preds = %55
  %70 = load %struct.page*, %struct.page** %7, align 8
  %71 = load %struct.page*, %struct.page** %6, align 8
  %72 = call i32 @copy_highpage(%struct.page* %70, %struct.page* %71)
  %73 = load %struct.page*, %struct.page** %6, align 8
  %74 = call i32 @put_page(%struct.page* %73)
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %23

78:                                               ; preds = %23
  %79 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %80 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TTM_PAGE_FLAG_PERSISTENT_SWAP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load %struct.file*, %struct.file** %5, align 8
  %87 = call i32 @fput(%struct.file* %86)
  br label %88

88:                                               ; preds = %85, %78
  %89 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %90 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %89, i32 0, i32 2
  store %struct.file* null, %struct.file** %90, align 8
  %91 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %94 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  store i32 0, i32* %2, align 4
  br label %99

97:                                               ; preds = %68, %52
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %88
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local %struct.page* @shmem_read_mapping_page_gfp(%struct.address_space*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
