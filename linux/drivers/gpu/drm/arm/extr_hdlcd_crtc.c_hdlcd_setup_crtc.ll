; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_crtc.c_hdlcd_setup_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_crtc.c_hdlcd_setup_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.hdlcd_drm_private* }
%struct.hdlcd_drm_private = type { i32 }
%struct.drm_plane = type { i32 }

@hdlcd_crtc_funcs = common dso_local global i32 0, align 4
@hdlcd_crtc_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdlcd_setup_crtc(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.hdlcd_drm_private*, align 8
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %8, align 8
  store %struct.hdlcd_drm_private* %9, %struct.hdlcd_drm_private** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call %struct.drm_plane* @hdlcd_plane_init(%struct.drm_device* %10)
  store %struct.drm_plane* %11, %struct.drm_plane** %5, align 8
  %12 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %13 = call i64 @IS_ERR(%struct.drm_plane* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %17 = call i32 @PTR_ERR(%struct.drm_plane* %16)
  store i32 %17, i32* %2, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %4, align 8
  %21 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %20, i32 0, i32 0
  %22 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %23 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %19, i32* %21, %struct.drm_plane* %22, i32* null, i32* @hdlcd_crtc_funcs, i32* null)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %4, align 8
  %30 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %29, i32 0, i32 0
  %31 = call i32 @drm_crtc_helper_add(i32* %30, i32* @hdlcd_crtc_helper_funcs)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %26, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.drm_plane* @hdlcd_plane_init(%struct.drm_device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, i32*, %struct.drm_plane*, i32*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
