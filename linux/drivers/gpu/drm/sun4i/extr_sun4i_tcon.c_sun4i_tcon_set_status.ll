; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32 }
%struct.drm_encoder = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Unknown encoder type, doing nothing...\0A\00", align 1
@SUN4I_TCON_GCTL_REG = common dso_local global i32 0, align 4
@SUN4I_TCON_GCTL_TCON_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun4i_tcon_set_status(%struct.sun4i_tcon* %0, %struct.drm_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.sun4i_tcon*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %15 [
    i32 131, label %12
    i32 132, label %13
    i32 130, label %13
    i32 129, label %14
    i32 128, label %14
  ]

12:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %3, %3, %12
  store i32 0, i32* %8, align 4
  br label %17

14:                                               ; preds = %3, %3
  store i32 1, i32* %8, align 4
  br label %17

15:                                               ; preds = %3
  %16 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %55

17:                                               ; preds = %14, %13
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %25 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %26 = call i32 @sun4i_tcon_lvds_set_status(%struct.sun4i_tcon* %24, %struct.drm_encoder* %25, i32 0)
  br label %27

27:                                               ; preds = %23, %20, %17
  %28 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %29 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SUN4I_TCON_GCTL_REG, align 4
  %32 = load i32, i32* @SUN4I_TCON_GCTL_TCON_ENABLE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @SUN4I_TCON_GCTL_TCON_ENABLE, align 4
  br label %38

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %32, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %49 = call i32 @sun4i_tcon_lvds_set_status(%struct.sun4i_tcon* %47, %struct.drm_encoder* %48, i32 1)
  br label %50

50:                                               ; preds = %46, %43, %38
  %51 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @sun4i_tcon_channel_set_status(%struct.sun4i_tcon* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %15
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @sun4i_tcon_lvds_set_status(%struct.sun4i_tcon*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @sun4i_tcon_channel_set_status(%struct.sun4i_tcon*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
