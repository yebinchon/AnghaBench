; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_base.c_omapdss_device_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_base.c_omapdss_device_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_dss_device* @omapdss_device_get(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %4 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %5 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @try_module_get(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %2, align 8
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %12 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @get_device(i32 %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %18 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @module_put(i32 %19)
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %2, align 8
  br label %23

21:                                               ; preds = %10
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  store %struct.omap_dss_device* %22, %struct.omap_dss_device** %2, align 8
  br label %23

23:                                               ; preds = %21, %16, %9
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  ret %struct.omap_dss_device* %24
}

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32* @get_device(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
