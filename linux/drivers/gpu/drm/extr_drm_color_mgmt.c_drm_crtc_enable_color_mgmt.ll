; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_color_mgmt.c_drm_crtc_enable_color_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_color_mgmt.c_drm_crtc_enable_color_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, %struct.drm_device* }
%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_crtc_enable_color_mgmt(%struct.drm_crtc* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_mode_config*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 1
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %9, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  store %struct.drm_mode_config* %15, %struct.drm_mode_config** %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %22 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @drm_object_attach_property(i32* %20, i32 %23, i64 0)
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 0
  %27 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %28 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @drm_object_attach_property(i32* %26, i32 %29, i64 %30)
  br label %32

32:                                               ; preds = %18, %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 0
  %38 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %39 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drm_object_attach_property(i32* %37, i32 %40, i64 0)
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 0
  %48 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %49 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @drm_object_attach_property(i32* %47, i32 %50, i64 0)
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %53 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %52, i32 0, i32 0
  %54 = load %struct.drm_mode_config*, %struct.drm_mode_config** %10, align 8
  %55 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @drm_object_attach_property(i32* %53, i32 %56, i64 %57)
  br label %59

59:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @drm_object_attach_property(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
