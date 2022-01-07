; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c___drm_mode_object_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c___drm_mode_object_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_mode_object = type { i32, void (%struct.kref*)*, i32, i32 }
%struct.kref = type opaque
%struct.kref.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__drm_mode_object_add(%struct.drm_device* %0, %struct.drm_mode_object* %1, i32 %2, i32 %3, void (%struct.kref.0*)* %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.kref.0*)*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_mode_object* %1, %struct.drm_mode_object** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store void (%struct.kref.0*)* %4, void (%struct.kref.0*)** %10, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %5
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load void (%struct.kref.0*)*, void (%struct.kref.0*)** %10, align 8
  %25 = icmp ne void (%struct.kref.0*)* %24, null
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %23, %18, %5
  %28 = phi i1 [ false, %18 ], [ false, %5 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  br label %43

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi %struct.drm_mode_object* [ %41, %40 ], [ null, %42 ]
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @idr_alloc(i32* %37, %struct.drm_mode_object* %44, i32 1, i32 0, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %52 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %55 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load void (%struct.kref.0*)*, void (%struct.kref.0*)** %10, align 8
  %57 = icmp ne void (%struct.kref.0*)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load void (%struct.kref.0*)*, void (%struct.kref.0*)** %10, align 8
  %60 = bitcast void (%struct.kref.0*)* %59 to void (%struct.kref*)*
  %61 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %62 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %61, i32 0, i32 1
  store void (%struct.kref*)* %60, void (%struct.kref*)** %62, align 8
  %63 = load %struct.drm_mode_object*, %struct.drm_mode_object** %7, align 8
  %64 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %63, i32 0, i32 2
  %65 = call i32 @kref_init(i32* %64)
  br label %66

66:                                               ; preds = %58, %49
  br label %67

67:                                               ; preds = %66, %43
  %68 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  br label %77

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  ret i32 %78
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.drm_mode_object*, i32, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
