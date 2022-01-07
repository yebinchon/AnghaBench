; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omap_modeset_init_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omap_modeset_init_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [7 x i8] c"zorder\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @omap_modeset_init_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_modeset_init_properties(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.omap_drm_private*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  store %struct.omap_drm_private* %8, %struct.omap_drm_private** %4, align 8
  %9 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %10 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %15 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 %13(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sub i32 %19, 1
  %21 = call i32 @drm_property_create_range(%struct.drm_device* %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %20)
  %22 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %23 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %25 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
