; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.omap_gem_object = type { i64, i32, i32*, i64 }

@.str = private unnamed_addr constant [27 x i8] c"could not unpin pages: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"could not release unmap: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_gem_unpin(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.omap_gem_object*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %5 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %6 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %5)
  store %struct.omap_gem_object* %6, %struct.omap_gem_object** %3, align 8
  %7 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %8 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %11 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %1
  %15 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %16 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %20 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %14
  %24 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %25 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @tiler_unpin(i32* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %32 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %30, %23
  %39 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %40 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @tiler_release(i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %47 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %45, %38
  %54 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %55 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %57 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %53, %14
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.omap_gem_object*, %struct.omap_gem_object** %3, align 8
  %61 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  ret void
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tiler_unpin(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tiler_release(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
