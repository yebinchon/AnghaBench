; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_plane_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_plane_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32, i64, %struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.drm_device* }
%struct.TYPE_4__ = type { i32 (%struct.drm_plane*, i64)* }
%struct.drm_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_plane_cleanup(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 8
  %6 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 7
  %9 = call i32 @drm_modeset_lock_fini(i32* %8)
  %10 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kfree(i32 %12)
  %14 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @kfree(i32 %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %20 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 4
  %21 = call i32 @drm_mode_object_unregister(%struct.drm_device* %18, i32* %20)
  %22 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 3
  %24 = call i32 @list_empty(i32* %23)
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %27 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %26, i32 0, i32 3
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %35 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %1
  %39 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %40 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.drm_plane*, i64)*, i32 (%struct.drm_plane*, i64)** %42, align 8
  %44 = icmp ne i32 (%struct.drm_plane*, i64)* %43, null
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %38, %1
  %47 = phi i1 [ false, %1 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %51 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %46
  %55 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %56 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.drm_plane*, i64)*, i32 (%struct.drm_plane*, i64)** %58, align 8
  %60 = icmp ne i32 (%struct.drm_plane*, i64)* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %63 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.drm_plane*, i64)*, i32 (%struct.drm_plane*, i64)** %65, align 8
  %67 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %68 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %69 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 %66(%struct.drm_plane* %67, i64 %70)
  br label %72

72:                                               ; preds = %61, %54, %46
  %73 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %74 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @kfree(i32 %75)
  %77 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %78 = call i32 @memset(%struct.drm_plane* %77, i32 0, i32 56)
  ret void
}

declare dso_local i32 @drm_modeset_lock_fini(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @drm_mode_object_unregister(%struct.drm_device*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(%struct.drm_plane*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
