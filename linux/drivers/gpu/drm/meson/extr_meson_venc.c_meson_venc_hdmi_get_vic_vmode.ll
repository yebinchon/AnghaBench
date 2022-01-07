; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc.c_meson_venc_hdmi_get_vic_vmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_venc.c_meson_venc_hdmi_get_vic_vmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_hdmi_venc_vic_mode = type { i32, %union.meson_hdmi_venc_mode* }
%union.meson_hdmi_venc_mode = type { i32 }

@meson_hdmi_venc_vic_modes = common dso_local global %struct.meson_hdmi_venc_vic_mode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.meson_hdmi_venc_mode* (i32)* @meson_venc_hdmi_get_vic_vmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.meson_hdmi_venc_mode* @meson_venc_hdmi_get_vic_vmode(i32 %0) #0 {
  %2 = alloca %union.meson_hdmi_venc_mode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.meson_hdmi_venc_vic_mode*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** @meson_hdmi_venc_vic_modes, align 8
  store %struct.meson_hdmi_venc_vic_mode* %5, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  br label %6

6:                                                ; preds = %28, %1
  %7 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  %8 = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, %struct.meson_hdmi_venc_vic_mode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  %13 = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, %struct.meson_hdmi_venc_vic_mode* %12, i32 0, i32 1
  %14 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %13, align 8
  %15 = icmp ne %union.meson_hdmi_venc_mode* %14, null
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ false, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %31

18:                                               ; preds = %16
  %19 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  %20 = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, %struct.meson_hdmi_venc_vic_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  %26 = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, %struct.meson_hdmi_venc_vic_mode* %25, i32 0, i32 1
  %27 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %26, align 8
  store %union.meson_hdmi_venc_mode* %27, %union.meson_hdmi_venc_mode** %2, align 8
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.meson_hdmi_venc_vic_mode*, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  %30 = getelementptr inbounds %struct.meson_hdmi_venc_vic_mode, %struct.meson_hdmi_venc_vic_mode* %29, i32 1
  store %struct.meson_hdmi_venc_vic_mode* %30, %struct.meson_hdmi_venc_vic_mode** %4, align 8
  br label %6

31:                                               ; preds = %16
  store %union.meson_hdmi_venc_mode* null, %union.meson_hdmi_venc_mode** %2, align 8
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %union.meson_hdmi_venc_mode*, %union.meson_hdmi_venc_mode** %2, align 8
  ret %union.meson_hdmi_venc_mode* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
