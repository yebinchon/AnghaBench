; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_crtc.c_drm_crtc_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_crtc.c_drm_crtc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32*, i64, %struct.TYPE_4__*, i32, i32, i32, i32*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32 (%struct.drm_crtc*, i64)* }
%struct.drm_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_crtc_cleanup(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %4 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %4, i32 0, i32 7
  %6 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %8 = call i32 @drm_crtc_crc_fini(%struct.drm_crtc* %7)
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kfree(i32* %11)
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 6
  store i32* null, i32** %14, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 5
  %17 = call i32 @drm_modeset_lock_fini(i32* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 4
  %21 = call i32 @drm_mode_object_unregister(%struct.drm_device* %18, i32* %20)
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 3
  %24 = call i32 @list_del(i32* %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %31 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %36 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.drm_crtc*, i64)*, i32 (%struct.drm_crtc*, i64)** %38, align 8
  %40 = icmp ne i32 (%struct.drm_crtc*, i64)* %39, null
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %34, %1
  %43 = phi i1 [ false, %1 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @WARN_ON(i32 %44)
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %42
  %51 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %52 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.drm_crtc*, i64)*, i32 (%struct.drm_crtc*, i64)** %54, align 8
  %56 = icmp ne i32 (%struct.drm_crtc*, i64)* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %59 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.drm_crtc*, i64)*, i32 (%struct.drm_crtc*, i64)** %61, align 8
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %64 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %65 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 %62(%struct.drm_crtc* %63, i64 %66)
  br label %68

68:                                               ; preds = %57, %50, %42
  %69 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %70 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @kfree(i32* %71)
  %73 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %74 = call i32 @memset(%struct.drm_crtc* %73, i32 0, i32 56)
  ret void
}

declare dso_local i32 @drm_crtc_crc_fini(%struct.drm_crtc*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @drm_modeset_lock_fini(i32*) #1

declare dso_local i32 @drm_mode_object_unregister(%struct.drm_device*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(%struct.drm_crtc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
