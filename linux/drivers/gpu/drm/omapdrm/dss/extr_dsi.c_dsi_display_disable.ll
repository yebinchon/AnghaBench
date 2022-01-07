; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_display_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_display_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dsi_data = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"dsi_display_disable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, i32, i32)* @dsi_display_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_display_disable(%struct.omap_dss_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsi_data*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %9 = call %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device* %8)
  store %struct.dsi_data* %9, %struct.dsi_data** %7, align 8
  %10 = call i32 @DSSDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %12 = call i32 @dsi_bus_is_locked(%struct.dsi_data* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %18 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %21 = call i32 @dsi_sync_vc(%struct.dsi_data* %20, i32 0)
  %22 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %23 = call i32 @dsi_sync_vc(%struct.dsi_data* %22, i32 1)
  %24 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %25 = call i32 @dsi_sync_vc(%struct.dsi_data* %24, i32 2)
  %26 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %27 = call i32 @dsi_sync_vc(%struct.dsi_data* %26, i32 3)
  %28 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dsi_display_uninit_dsi(%struct.dsi_data* %28, i32 %29, i32 %30)
  %32 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %33 = call i32 @dsi_runtime_put(%struct.dsi_data* %32)
  %34 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %35 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  ret void
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.dsi_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsi_sync_vc(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_display_uninit_dsi(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @dsi_runtime_put(%struct.dsi_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
