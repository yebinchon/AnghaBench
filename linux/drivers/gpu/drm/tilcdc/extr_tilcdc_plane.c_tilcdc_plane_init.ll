; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_plane.c_tilcdc_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_plane.c_tilcdc_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.tilcdc_drm_private* }
%struct.tilcdc_drm_private = type { i32, i32 }
%struct.drm_plane = type { i32 }

@tilcdc_plane_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to initialize plane: %d\0A\00", align 1
@plane_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tilcdc_plane_init(%struct.drm_device* %0, %struct.drm_plane* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca %struct.tilcdc_drm_private*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %9, align 8
  store %struct.tilcdc_drm_private* %10, %struct.tilcdc_drm_private** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %13 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %6, align 8
  %14 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %6, align 8
  %17 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @drm_plane_init(%struct.drm_device* %11, %struct.drm_plane* %12, i32 1, i32* @tilcdc_plane_funcs, i32 %15, i32 %18, i32 1)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %31 = call i32 @drm_plane_helper_add(%struct.drm_plane* %30, i32* @plane_helper_funcs)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @drm_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
