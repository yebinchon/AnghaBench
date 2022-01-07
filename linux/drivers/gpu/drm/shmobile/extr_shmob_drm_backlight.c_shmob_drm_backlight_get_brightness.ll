; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_backlight.c_shmob_drm_backlight_get_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_backlight.c_shmob_drm_backlight_get_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.shmob_drm_connector = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.shmob_drm_device* }
%struct.shmob_drm_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.shmob_drm_backlight_data }
%struct.shmob_drm_backlight_data = type { i32 (...)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @shmob_drm_backlight_get_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmob_drm_backlight_get_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.shmob_drm_connector*, align 8
  %4 = alloca %struct.shmob_drm_device*, align 8
  %5 = alloca %struct.shmob_drm_backlight_data*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %6 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %7 = call %struct.shmob_drm_connector* @bl_get_data(%struct.backlight_device* %6)
  store %struct.shmob_drm_connector* %7, %struct.shmob_drm_connector** %3, align 8
  %8 = load %struct.shmob_drm_connector*, %struct.shmob_drm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.shmob_drm_connector, %struct.shmob_drm_connector* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %12, align 8
  store %struct.shmob_drm_device* %13, %struct.shmob_drm_device** %4, align 8
  %14 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.shmob_drm_backlight_data* %17, %struct.shmob_drm_backlight_data** %5, align 8
  %18 = load %struct.shmob_drm_backlight_data*, %struct.shmob_drm_backlight_data** %5, align 8
  %19 = getelementptr inbounds %struct.shmob_drm_backlight_data, %struct.shmob_drm_backlight_data* %18, i32 0, i32 0
  %20 = load i32 (...)*, i32 (...)** %19, align 8
  %21 = call i32 (...) %20()
  ret i32 %21
}

declare dso_local %struct.shmob_drm_connector* @bl_get_data(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
