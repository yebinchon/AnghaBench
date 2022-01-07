; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_put_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_put_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, i32 }
%struct.page = type { i32 }
%struct.address_space = type { i32 }
%struct.pagevec = type { i32 }
%struct.TYPE_2__ = type { %struct.address_space* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_put_pages(%struct.drm_gem_object* %0, %struct.page** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca %struct.pagevec, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %14 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_2__* @file_inode(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %11, align 8
  %19 = load %struct.address_space*, %struct.address_space** %11, align 8
  %20 = call i32 @mapping_clear_unevictable(%struct.address_space* %19)
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %31 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = call i32 @pagevec_init(%struct.pagevec* %12)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %79, %4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %36
  %41 = load %struct.page**, %struct.page*** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 %43
  %45 = load %struct.page*, %struct.page** %44, align 8
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %79

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.page**, %struct.page*** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.page*, %struct.page** %52, i64 %54
  %56 = load %struct.page*, %struct.page** %55, align 8
  %57 = call i32 @set_page_dirty(%struct.page* %56)
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.page**, %struct.page*** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.page*, %struct.page** %62, i64 %64
  %66 = load %struct.page*, %struct.page** %65, align 8
  %67 = call i32 @mark_page_accessed(%struct.page* %66)
  br label %68

68:                                               ; preds = %61, %58
  %69 = load %struct.page**, %struct.page*** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.page*, %struct.page** %69, i64 %71
  %73 = load %struct.page*, %struct.page** %72, align 8
  %74 = call i32 @pagevec_add(%struct.pagevec* %12, %struct.page* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %68
  %77 = call i32 @drm_gem_check_release_pagevec(%struct.pagevec* %12)
  br label %78

78:                                               ; preds = %76, %68
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %36

82:                                               ; preds = %36
  %83 = call i64 @pagevec_count(%struct.pagevec* %12)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @drm_gem_check_release_pagevec(%struct.pagevec* %12)
  br label %87

87:                                               ; preds = %85, %82
  %88 = load %struct.page**, %struct.page*** %6, align 8
  %89 = call i32 @kvfree(%struct.page** %88)
  ret void
}

declare dso_local %struct.TYPE_2__* @file_inode(i32) #1

declare dso_local i32 @mapping_clear_unevictable(%struct.address_space*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @mark_page_accessed(%struct.page*) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local i32 @drm_gem_check_release_pagevec(%struct.pagevec*) #1

declare dso_local i64 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @kvfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
