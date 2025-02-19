; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_blend.c_drm_plane_create_zpos_immutable_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_blend.c_drm_plane_create_zpos_immutable_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__*, %struct.drm_property*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_property = type { i32 }

@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"zpos\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_plane_create_zpos_immutable_property(%struct.drm_plane* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_property*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.drm_property* @drm_property_create_range(i32 %9, i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  store %struct.drm_property* %13, %struct.drm_property** %6, align 8
  %14 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %15 = icmp ne %struct.drm_property* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %44

19:                                               ; preds = %2
  %20 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 2
  %22 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @drm_object_attach_property(i32* %21, %struct.drm_property* %22, i32 %23)
  %25 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  %26 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %27 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %26, i32 0, i32 1
  store %struct.drm_property* %25, %struct.drm_property** %27, align 8
  %28 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %29 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %35 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %40 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %19
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.drm_property* @drm_property_create_range(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, %struct.drm_property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
