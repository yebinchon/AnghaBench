; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_blend.c_drm_plane_create_alpha_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_blend.c_drm_plane_create_alpha_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__*, %struct.drm_property*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_property = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@DRM_BLEND_ALPHA_OPAQUE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_plane_create_alpha_property(%struct.drm_plane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_property*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %6 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DRM_BLEND_ALPHA_OPAQUE, align 4
  %9 = call %struct.drm_property* @drm_property_create_range(i32 %7, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 %8)
  store %struct.drm_property* %9, %struct.drm_property** %4, align 8
  %10 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %11 = icmp ne %struct.drm_property* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %17 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %16, i32 0, i32 2
  %18 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %19 = load i32, i32* @DRM_BLEND_ALPHA_OPAQUE, align 4
  %20 = call i32 @drm_object_attach_property(i32* %17, %struct.drm_property* %18, i32 %19)
  %21 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 1
  store %struct.drm_property* %21, %struct.drm_property** %23, align 8
  %24 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %25 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load i32, i32* @DRM_BLEND_ALPHA_OPAQUE, align 4
  %30 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %31 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %15
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.drm_property* @drm_property_create_range(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, %struct.drm_property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
