; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_drm_object_property_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_drm_object_property_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, %struct.drm_property** }
%struct.drm_property = type { i32, i32 }

@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_object_property_set_value(%struct.drm_mode_object* %0, %struct.drm_property* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_mode_object*, align 8
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_mode_object* %0, %struct.drm_mode_object** %5, align 8
  store %struct.drm_property* %1, %struct.drm_property** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %10 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @drm_drv_uses_atomic_modeset(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %16 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %14, %3
  %23 = phi i1 [ false, %3 ], [ %21, %14 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %57, %22
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %29 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %26
  %35 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %36 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load %struct.drm_property**, %struct.drm_property*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.drm_property*, %struct.drm_property** %39, i64 %41
  %43 = load %struct.drm_property*, %struct.drm_property** %42, align 8
  %44 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %45 = icmp eq %struct.drm_property* %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %34
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.drm_mode_object*, %struct.drm_mode_object** %5, align 8
  %49 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %47, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %63

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %26

60:                                               ; preds = %26
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %46
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @drm_drv_uses_atomic_modeset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
