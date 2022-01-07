; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_layer_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_backend.c_sun4i_backend_update_layer_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_backend = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Invalid format\0A\00", align 1
@SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN = common dso_local global i32 0, align 4
@SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_backend_update_layer_frontend(%struct.sun4i_backend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun4i_backend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sun4i_backend* %0, %struct.sun4i_backend** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @sun4i_backend_drm_format_to_layer(i32 %10, i32* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.sun4i_backend*, %struct.sun4i_backend** %5, align 8
  %19 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @SUN4I_BACKEND_ATTCTL_REG0(i32 %22)
  %24 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN, align 4
  %25 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG0_LAY_VDOEN, align 4
  %26 = call i32 @regmap_update_bits(i32 %21, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.sun4i_backend*, %struct.sun4i_backend** %5, align 8
  %28 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @SUN4I_BACKEND_ATTCTL_REG1(i32 %31)
  %33 = load i32, i32* @SUN4I_BACKEND_ATTCTL_REG1_LAY_FBFMT, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @regmap_update_bits(i32 %30, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %17, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @sun4i_backend_drm_format_to_layer(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN4I_BACKEND_ATTCTL_REG0(i32) #1

declare dso_local i32 @SUN4I_BACKEND_ATTCTL_REG1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
