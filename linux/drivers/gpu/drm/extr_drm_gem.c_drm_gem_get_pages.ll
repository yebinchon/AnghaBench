; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.drm_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.pagevec = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page** @drm_gem_get_pages(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.page**, align 8
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca %struct.pagevec, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  %10 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.address_space*, %struct.address_space** %13, align 8
  store %struct.address_space* %14, %struct.address_space** %4, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %16 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %25 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.page** @kvmalloc_array(i32 %29, i32 8, i32 %30)
  store %struct.page** %31, %struct.page*** %6, align 8
  %32 = load %struct.page**, %struct.page*** %6, align 8
  %33 = icmp eq %struct.page** %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.page** @ERR_PTR(i32 %36)
  store %struct.page** %37, %struct.page*** %2, align 8
  br label %106

38:                                               ; preds = %1
  %39 = load %struct.address_space*, %struct.address_space** %4, align 8
  %40 = call i32 @mapping_set_unevictable(%struct.address_space* %39)
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %72, %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %75

45:                                               ; preds = %41
  %46 = load %struct.address_space*, %struct.address_space** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.page* @shmem_read_mapping_page(%struct.address_space* %46, i32 %47)
  store %struct.page* %48, %struct.page** %5, align 8
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i64 @IS_ERR(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %77

53:                                               ; preds = %45
  %54 = load %struct.page*, %struct.page** %5, align 8
  %55 = load %struct.page**, %struct.page*** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.page*, %struct.page** %55, i64 %57
  store %struct.page* %54, %struct.page** %58, align 8
  %59 = load %struct.address_space*, %struct.address_space** %4, align 8
  %60 = load i32, i32* @__GFP_DMA32, align 4
  %61 = call i64 @mapping_gfp_constraint(%struct.address_space* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.page*, %struct.page** %5, align 8
  %65 = call i32 @page_to_pfn(%struct.page* %64)
  %66 = sext i32 %65 to i64
  %67 = icmp uge i64 %66, 1048576
  br label %68

68:                                               ; preds = %63, %53
  %69 = phi i1 [ false, %53 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %41

75:                                               ; preds = %41
  %76 = load %struct.page**, %struct.page*** %6, align 8
  store %struct.page** %76, %struct.page*** %2, align 8
  br label %106

77:                                               ; preds = %52
  %78 = load %struct.address_space*, %struct.address_space** %4, align 8
  %79 = call i32 @mapping_clear_unevictable(%struct.address_space* %78)
  %80 = call i32 @pagevec_init(%struct.pagevec* %7)
  br label %81

81:                                               ; preds = %95, %77
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %8, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.page**, %struct.page*** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.page*, %struct.page** %86, i64 %88
  %90 = load %struct.page*, %struct.page** %89, align 8
  %91 = call i32 @pagevec_add(%struct.pagevec* %7, %struct.page* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %85
  %94 = call i32 @drm_gem_check_release_pagevec(%struct.pagevec* %7)
  br label %95

95:                                               ; preds = %93, %85
  br label %81

96:                                               ; preds = %81
  %97 = call i64 @pagevec_count(%struct.pagevec* %7)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @drm_gem_check_release_pagevec(%struct.pagevec* %7)
  br label %101

101:                                              ; preds = %99, %96
  %102 = load %struct.page**, %struct.page*** %6, align 8
  %103 = call i32 @kvfree(%struct.page** %102)
  %104 = load %struct.page*, %struct.page** %5, align 8
  %105 = call %struct.page** @ERR_CAST(%struct.page* %104)
  store %struct.page** %105, %struct.page*** %2, align 8
  br label %106

106:                                              ; preds = %101, %75, %34
  %107 = load %struct.page**, %struct.page*** %2, align 8
  ret %struct.page** %107
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.page** @kvmalloc_array(i32, i32, i32) #1

declare dso_local %struct.page** @ERR_PTR(i32) #1

declare dso_local i32 @mapping_set_unevictable(%struct.address_space*) #1

declare dso_local %struct.page* @shmem_read_mapping_page(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @mapping_gfp_constraint(%struct.address_space*, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @mapping_clear_unevictable(%struct.address_space*) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local i32 @drm_gem_check_release_pagevec(%struct.pagevec*) #1

declare dso_local i64 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @kvfree(%struct.page**) #1

declare dso_local %struct.page** @ERR_CAST(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
