; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_conn_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_connector.c_nouveau_conn_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, i64 }
%struct.nouveau_conn_atom = type { %struct.TYPE_13__, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DITHERING_MODE_AUTO = common dso_local global i32 0, align 4
@DITHERING_DEPTH_AUTO = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_NONE = common dso_local global i32 0, align 4
@UNDERSCAN_OFF = common dso_local global i32 0, align 4
@NV50_DISP = common dso_local global i64 0, align 8
@DRM_MODE_SCALE_FULLSCREEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_conn_reset(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.nouveau_conn_atom*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.nouveau_conn_atom* @kzalloc(i32 28, i32 %4)
  store %struct.nouveau_conn_atom* %5, %struct.nouveau_conn_atom** %3, align 8
  %6 = icmp ne %struct.nouveau_conn_atom* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %72

12:                                               ; preds = %1
  %13 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %19 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %20 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @nouveau_conn_atomic_destroy_state(%struct.drm_connector* %18, i64 %21)
  br label %23

23:                                               ; preds = %17, %12
  %24 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %25 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %25, i32 0, i32 3
  %27 = call i32 @__drm_atomic_helper_connector_reset(%struct.drm_connector* %24, i32* %26)
  %28 = load i32, i32* @DITHERING_MODE_AUTO, align 4
  %29 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %3, align 8
  %30 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @DITHERING_DEPTH_AUTO, align 4
  %33 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %3, align 8
  %34 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @DRM_MODE_SCALE_NONE, align 4
  %37 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %3, align 8
  %38 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @UNDERSCAN_OFF, align 4
  %41 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %3, align 8
  %42 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %3, align 8
  %46 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 150, i32* %47, align 4
  %48 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %3, align 8
  %49 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32 90, i32* %50, align 4
  %51 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_14__* @nouveau_display(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NV50_DISP, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %23
  %62 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %70 [
    i32 128, label %65
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* @DRM_MODE_SCALE_FULLSCREEN, align 4
  %67 = load %struct.nouveau_conn_atom*, %struct.nouveau_conn_atom** %3, align 8
  %68 = getelementptr inbounds %struct.nouveau_conn_atom, %struct.nouveau_conn_atom* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  br label %71

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %65
  br label %72

72:                                               ; preds = %11, %71, %23
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.nouveau_conn_atom* @kzalloc(i32, i32) #1

declare dso_local i32 @nouveau_conn_atomic_destroy_state(%struct.drm_connector*, i64) #1

declare dso_local i32 @__drm_atomic_helper_connector_reset(%struct.drm_connector*, i32*) #1

declare dso_local %struct.TYPE_14__* @nouveau_display(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
