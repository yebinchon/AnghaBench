; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_drm_mode_object_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mode_object.c_drm_mode_object_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_object = type { i64, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"OBJ ID: %d (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mode_object_put(%struct.drm_mode_object* %0) #0 {
  %2 = alloca %struct.drm_mode_object*, align 8
  store %struct.drm_mode_object* %0, %struct.drm_mode_object** %2, align 8
  %3 = load %struct.drm_mode_object*, %struct.drm_mode_object** %2, align 8
  %4 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.drm_mode_object*, %struct.drm_mode_object** %2, align 8
  %9 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.drm_mode_object*, %struct.drm_mode_object** %2, align 8
  %12 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %11, i32 0, i32 1
  %13 = call i32 @kref_read(i32* %12)
  %14 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.drm_mode_object*, %struct.drm_mode_object** %2, align 8
  %16 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %15, i32 0, i32 1
  %17 = load %struct.drm_mode_object*, %struct.drm_mode_object** %2, align 8
  %18 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @kref_put(i32* %16, i64 %19)
  br label %21

21:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @kref_put(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
