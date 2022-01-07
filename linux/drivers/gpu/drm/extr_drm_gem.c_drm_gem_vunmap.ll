; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_vunmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_vunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.drm_gem_object*, i8*)* }
%struct.TYPE_4__ = type { i32 (%struct.drm_gem_object*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_vunmap(%struct.drm_gem_object* %0, i8* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i8*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %50

8:                                                ; preds = %2
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %10 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %15 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.drm_gem_object*, i8*)*, i32 (%struct.drm_gem_object*, i8*)** %17, align 8
  %19 = icmp ne i32 (%struct.drm_gem_object*, i8*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.drm_gem_object*, i8*)*, i32 (%struct.drm_gem_object*, i8*)** %24, align 8
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 %25(%struct.drm_gem_object* %26, i8* %27)
  br label %50

29:                                               ; preds = %13, %8
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %31 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (%struct.drm_gem_object*, i8*)*, i32 (%struct.drm_gem_object*, i8*)** %35, align 8
  %37 = icmp ne i32 (%struct.drm_gem_object*, i8*)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %40 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.drm_gem_object*, i8*)*, i32 (%struct.drm_gem_object*, i8*)** %44, align 8
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 %45(%struct.drm_gem_object* %46, i8* %47)
  br label %49

49:                                               ; preds = %38, %29
  br label %50

50:                                               ; preds = %7, %49, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
