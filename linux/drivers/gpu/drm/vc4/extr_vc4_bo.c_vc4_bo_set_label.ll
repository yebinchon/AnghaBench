; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_set_label.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_bo_set_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i64, i32 }
%struct.vc4_bo = type { i64 }
%struct.vc4_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_gem_object*, i32)* @vc4_bo_set_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_bo_set_label(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc4_bo*, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %8 = call %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object* %7)
  store %struct.vc4_bo* %8, %struct.vc4_bo** %5, align 8
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.vc4_dev* @to_vc4_dev(i32 %11)
  store %struct.vc4_dev* %12, %struct.vc4_dev** %6, align 8
  %13 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %14 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %13, i32 0, i32 1
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %20 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %29 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %32 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %30
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 8
  br label %42

42:                                               ; preds = %18, %2
  %43 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %44 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %47 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %54 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %57 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %60 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %65, %55
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  %68 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %69 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %72 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %42
  %79 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %80 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @is_user_label(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %78
  %85 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %86 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %89 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @kfree(i32* %93)
  %95 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %96 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %99 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  br label %103

103:                                              ; preds = %84, %78, %42
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.vc4_bo*, %struct.vc4_bo** %5, align 8
  %107 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  ret void
}

declare dso_local %struct.vc4_bo* @to_vc4_bo(%struct.drm_gem_object*) #1

declare dso_local %struct.vc4_dev* @to_vc4_dev(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @is_user_label(i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
