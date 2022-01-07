; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc.c_meson_venc_hdmi_supported_vic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc.c_meson_venc_hdmi_supported_vic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_hdmi_venc_vic_mode = type { i32, i64 }

@meson_hdmi_venc_vic_modes = common dso_local global %struct.meson_hdmi_venc_vic_mode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_venc_hdmi_supported_vic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.meson_hdmi_venc_vic_mode*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** @meson_hdmi_venc_vic_modes, align 8
  store %struct.meson_hdmi_venc_vic_mode* %5, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  br label %6

6:                                                ; preds = %25, %1
  %7 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  %8 = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, %struct.meson_hdmi_venc_vic_mode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  %13 = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, %struct.meson_hdmi_venc_vic_mode* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ false, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  %20 = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, %struct.meson_hdmi_venc_vic_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  %27 = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, %struct.meson_hdmi_venc_vic_mode* %26, i32 1
  store %struct.meson_hdmi_venc_vic_mode* %27, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  br label %6

28:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
