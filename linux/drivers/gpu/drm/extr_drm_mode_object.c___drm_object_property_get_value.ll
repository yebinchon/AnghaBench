; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c___drm_object_property_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c___drm_object_property_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, %struct.drm_property** }
%struct.drm_property = type { i32, i32 }

@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mode_object*, %struct.drm_property*, i32*)* @__drm_object_property_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__drm_object_property_get_value(%struct.drm_mode_object* %0, %struct.drm_property* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_mode_object*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_mode_object* %0, %struct.drm_mode_object** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %10 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @drm_drv_uses_atomic_modeset(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %16 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %23 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @drm_atomic_get_property(%struct.drm_mode_object* %22, %struct.drm_property* %23, i32* %24)
  store i32 %25, i32* %4, align 4
  br label %65

26:                                               ; preds = %14, %3
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %59, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %30 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %27
  %36 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %37 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load %struct.drm_property**, %struct.drm_property*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.drm_property*, %struct.drm_property** %40, i64 %42
  %44 = load %struct.drm_property*, %struct.drm_property** %43, align 8
  %45 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %46 = icmp eq %struct.drm_property* %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %35
  %48 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %49 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %65

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %27

62:                                               ; preds = %27
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %47, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @drm_drv_uses_atomic_modeset(i32) #1

declare dso_local i32 @drm_atomic_get_property(%struct.drm_mode_object*, %struct.drm_property*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
