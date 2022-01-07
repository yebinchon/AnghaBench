; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_4__ = type { {}* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @drm_gem_vmap(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca i8*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %10 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i8* (%struct.drm_gem_object*)**
  %14 = load i8* (%struct.drm_gem_object*)*, i8* (%struct.drm_gem_object*)** %13, align 8
  %15 = icmp ne i8* (%struct.drm_gem_object*)* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %8
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i8* (%struct.drm_gem_object*)**
  %22 = load i8* (%struct.drm_gem_object*)*, i8* (%struct.drm_gem_object*)** %21, align 8
  %23 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %24 = call i8* %22(%struct.drm_gem_object* %23)
  store i8* %24, i8** %3, align 8
  br label %51

25:                                               ; preds = %8, %1
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %27 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i8* (%struct.drm_gem_object*)**
  %33 = load i8* (%struct.drm_gem_object*)*, i8* (%struct.drm_gem_object*)** %32, align 8
  %34 = icmp ne i8* (%struct.drm_gem_object*)* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %37 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = bitcast {}** %41 to i8* (%struct.drm_gem_object*)**
  %43 = load i8* (%struct.drm_gem_object*)*, i8* (%struct.drm_gem_object*)** %42, align 8
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %45 = call i8* %43(%struct.drm_gem_object* %44)
  store i8* %45, i8** %3, align 8
  br label %50

46:                                               ; preds = %25
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i8* @ERR_PTR(i32 %48)
  store i8* %49, i8** %3, align 8
  br label %50

50:                                               ; preds = %46, %35
  br label %51

51:                                               ; preds = %50, %16
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i8* @ERR_PTR(i32 %56)
  store i8* %57, i8** %3, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i8*, i8** %3, align 8
  ret i8* %59
}

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
