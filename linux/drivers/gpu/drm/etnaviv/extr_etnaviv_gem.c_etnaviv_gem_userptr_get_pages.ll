; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_userptr_get_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem.c_etnaviv_gem_userptr_get_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.etnaviv_gem_object = type { %struct.page**, %struct.TYPE_4__, %struct.etnaviv_gem_userptr }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.etnaviv_gem_userptr = type { i32, i64, %struct.TYPE_5__* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gem_object*)* @etnaviv_gem_userptr_get_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gem_userptr_get_pages(%struct.etnaviv_gem_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etnaviv_gem_object*, align 8
  %4 = alloca %struct.page**, align 8
  %5 = alloca %struct.etnaviv_gem_userptr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.page**, align 8
  store %struct.etnaviv_gem_object* %0, %struct.etnaviv_gem_object** %3, align 8
  store %struct.page** null, %struct.page*** %4, align 8
  %12 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %13 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %12, i32 0, i32 2
  store %struct.etnaviv_gem_userptr* %13, %struct.etnaviv_gem_userptr** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %15 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @might_lock_read(i32* %23)
  %25 = load %struct.etnaviv_gem_userptr*, %struct.etnaviv_gem_userptr** %5, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gem_userptr, %struct.etnaviv_gem_userptr* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %95

35:                                               ; preds = %1
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.page** @kvmalloc_array(i32 %36, i32 8, i32 %37)
  store %struct.page** %38, %struct.page*** %4, align 8
  %39 = load %struct.page**, %struct.page*** %4, align 8
  %40 = icmp ne %struct.page** %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %95

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %87, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.etnaviv_gem_userptr*, %struct.etnaviv_gem_userptr** %5, align 8
  %50 = getelementptr inbounds %struct.etnaviv_gem_userptr, %struct.etnaviv_gem_userptr* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %51, %55
  store i64 %56, i64* %10, align 8
  %57 = load %struct.page**, %struct.page*** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.page*, %struct.page** %57, i64 %59
  store %struct.page** %60, %struct.page*** %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.etnaviv_gem_userptr*, %struct.etnaviv_gem_userptr** %5, align 8
  %64 = getelementptr inbounds %struct.etnaviv_gem_userptr, %struct.etnaviv_gem_userptr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %45
  %68 = load i32, i32* @FOLL_WRITE, align 4
  br label %70

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = load %struct.page**, %struct.page*** %11, align 8
  %73 = call i32 @get_user_pages_fast(i64 %61, i32 %62, i32 %71, %struct.page** %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.page**, %struct.page*** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @release_pages(%struct.page** %77, i32 %78)
  %80 = load %struct.page**, %struct.page*** %4, align 8
  %81 = call i32 @kvfree(%struct.page** %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %95

83:                                               ; preds = %70
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %45, label %91

91:                                               ; preds = %87
  %92 = load %struct.page**, %struct.page*** %4, align 8
  %93 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %3, align 8
  %94 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %93, i32 0, i32 0
  store %struct.page** %92, %struct.page*** %94, align 8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %76, %41, %32
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @might_lock_read(i32*) #1

declare dso_local %struct.page** @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, %struct.page**) #1

declare dso_local i32 @release_pages(%struct.page**, i32) #1

declare dso_local i32 @kvfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
