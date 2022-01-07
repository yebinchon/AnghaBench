; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ingenic_drm = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ingenic_drm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_drm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ingenic_drm*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ingenic_drm* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ingenic_drm* %5, %struct.ingenic_drm** %3, align 8
  %6 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %7 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %12 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @clk_disable_unprepare(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %17 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @clk_disable_unprepare(i64 %18)
  %20 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %21 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %20, i32 0, i32 0
  %22 = call i32 @drm_dev_unregister(i32* %21)
  %23 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %24 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %23, i32 0, i32 0
  %25 = call i32 @drm_atomic_helper_shutdown(i32* %24)
  ret i32 0
}

declare dso_local %struct.ingenic_drm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @drm_dev_unregister(i32*) #1

declare dso_local i32 @drm_atomic_helper_shutdown(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
