; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_apply_color_correction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_apply_color_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_engine = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Applying RGB to YUV color correction\0A\00", align 1
@SUN4I_BACKEND_OCCTL_REG = common dso_local global i32 0, align 4
@SUN4I_BACKEND_OCCTL_ENABLE = common dso_local global i32 0, align 4
@sunxi_rgb2yuv_coef = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_engine*)* @sun4i_backend_apply_color_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_backend_apply_color_correction(%struct.sunxi_engine* %0) #0 {
  %2 = alloca %struct.sunxi_engine*, align 8
  %3 = alloca i32, align 4
  store %struct.sunxi_engine* %0, %struct.sunxi_engine** %2, align 8
  %4 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.sunxi_engine*, %struct.sunxi_engine** %2, align 8
  %6 = getelementptr inbounds %struct.sunxi_engine, %struct.sunxi_engine* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SUN4I_BACKEND_OCCTL_REG, align 4
  %9 = load i32, i32* @SUN4I_BACKEND_OCCTL_ENABLE, align 4
  %10 = call i32 @regmap_write(i32 %7, i32 %8, i32 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 12
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load %struct.sunxi_engine*, %struct.sunxi_engine** %2, align 8
  %16 = getelementptr inbounds %struct.sunxi_engine, %struct.sunxi_engine* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @SUN4I_BACKEND_OCRCOEF_REG(i32 %18)
  %20 = load i32*, i32** @sunxi_rgb2yuv_coef, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_write(i32 %17, i32 %19, i32 %24)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %11

29:                                               ; preds = %11
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_OCRCOEF_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
