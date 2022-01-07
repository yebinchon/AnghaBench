; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Unknown encoder type, doing nothing...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun4i_tcon_mode_set(%struct.sun4i_tcon* %0, %struct.drm_encoder* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.sun4i_tcon*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %35 [
    i32 132, label %10
    i32 131, label %15
    i32 130, label %20
    i32 128, label %28
    i32 129, label %28
  ]

10:                                               ; preds = %3
  %11 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %14 = call i32 @sun4i_tcon0_mode_set_cpu(%struct.sun4i_tcon* %11, %struct.drm_encoder* %12, %struct.drm_display_mode* %13)
  br label %37

15:                                               ; preds = %3
  %16 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %19 = call i32 @sun4i_tcon0_mode_set_lvds(%struct.sun4i_tcon* %16, %struct.drm_encoder* %17, %struct.drm_display_mode* %18)
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %22 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %24 = call i32 @sun4i_tcon0_mode_set_rgb(%struct.sun4i_tcon* %21, %struct.drm_encoder* %22, %struct.drm_display_mode* %23)
  %25 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %27 = call i32 @sun4i_tcon_set_mux(%struct.sun4i_tcon* %25, i32 0, %struct.drm_encoder* %26)
  br label %37

28:                                               ; preds = %3, %3
  %29 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %31 = call i32 @sun4i_tcon1_mode_set(%struct.sun4i_tcon* %29, %struct.drm_display_mode* %30)
  %32 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %34 = call i32 @sun4i_tcon_set_mux(%struct.sun4i_tcon* %32, i32 1, %struct.drm_encoder* %33)
  br label %37

35:                                               ; preds = %3
  %36 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28, %20, %15, %10
  ret void
}

declare dso_local i32 @sun4i_tcon0_mode_set_cpu(%struct.sun4i_tcon*, %struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @sun4i_tcon0_mode_set_lvds(%struct.sun4i_tcon*, %struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @sun4i_tcon0_mode_set_rgb(%struct.sun4i_tcon*, %struct.drm_encoder*, %struct.drm_display_mode*) #1

declare dso_local i32 @sun4i_tcon_set_mux(%struct.sun4i_tcon*, i32, %struct.drm_encoder*) #1

declare dso_local i32 @sun4i_tcon1_mode_set(%struct.sun4i_tcon*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
