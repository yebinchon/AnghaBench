; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c___drm_mode_object_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c___drm_mode_object_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_object = type { i64, i64, i32, i64 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_file = type { i32 }

@DRM_MODE_OBJECT_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_mode_object* @__drm_mode_object_find(%struct.drm_device* %0, %struct.drm_file* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %9, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.drm_mode_object* @idr_find(i32* %16, i64 %17)
  store %struct.drm_mode_object* %18, %struct.drm_mode_object** %9, align 8
  %19 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %20 = icmp ne %struct.drm_mode_object* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @DRM_MODE_OBJECT_ANY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %27 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %9, align 8
  br label %32

32:                                               ; preds = %31, %25, %21, %4
  %33 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %34 = icmp ne %struct.drm_mode_object* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %37 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %9, align 8
  br label %42

42:                                               ; preds = %41, %35, %32
  %43 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %44 = icmp ne %struct.drm_mode_object* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %47 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @drm_mode_object_lease_required(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %53 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %54 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @_drm_lease_held(%struct.drm_file* %52, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %9, align 8
  br label %59

59:                                               ; preds = %58, %51, %45, %42
  %60 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %61 = icmp ne %struct.drm_mode_object* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %64 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %69 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %68, i32 0, i32 2
  %70 = call i32 @kref_get_unless_zero(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %9, align 8
  br label %73

73:                                               ; preds = %72, %67
  br label %74

74:                                               ; preds = %73, %62, %59
  %75 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %76 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  ret %struct.drm_mode_object* %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.drm_mode_object* @idr_find(i32*, i64) #1

declare dso_local i64 @drm_mode_object_lease_required(i64) #1

declare dso_local i32 @_drm_lease_held(%struct.drm_file*, i64) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
