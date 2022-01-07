; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.drm_gem_object*)* }
%struct.TYPE_4__ = type { i32 (%struct.drm_gem_object*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_unpin(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %3 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %4 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %9 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (%struct.drm_gem_object*)*, i32 (%struct.drm_gem_object*)** %11, align 8
  %13 = icmp ne i32 (%struct.drm_gem_object*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %16 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.drm_gem_object*)*, i32 (%struct.drm_gem_object*)** %18, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %21 = call i32 %19(%struct.drm_gem_object* %20)
  br label %42

22:                                               ; preds = %7, %1
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %24 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.drm_gem_object*)*, i32 (%struct.drm_gem_object*)** %28, align 8
  %30 = icmp ne i32 (%struct.drm_gem_object*)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %33 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.drm_gem_object*)*, i32 (%struct.drm_gem_object*)** %37, align 8
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %40 = call i32 %38(%struct.drm_gem_object* %39)
  br label %41

41:                                               ; preds = %31, %22
  br label %42

42:                                               ; preds = %41, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
