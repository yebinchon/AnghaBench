; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_get_pixel_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_get_pixel_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @sun4i_tcon_get_pixel_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_tcon_get_pixel_depth(%struct.drm_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_info*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %7 = call %struct.drm_connector* @sun4i_tcon_get_connector(%struct.drm_encoder* %6)
  store %struct.drm_connector* %7, %struct.drm_connector** %4, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = icmp ne %struct.drm_connector* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  store %struct.drm_display_info* %15, %struct.drm_display_info** %5, align 8
  %16 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %17 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %34

23:                                               ; preds = %13
  %24 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %25 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %31 [
    i32 130, label %29
    i32 129, label %30
    i32 128, label %30
  ]

29:                                               ; preds = %23
  store i32 18, i32* %2, align 4
  br label %34

30:                                               ; preds = %23, %23
  store i32 24, i32* %2, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %30, %29, %20, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.drm_connector* @sun4i_tcon_get_connector(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
