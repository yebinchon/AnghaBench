; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_enable_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_enable_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dsi_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"dsi_vc_enable_hs(%d, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, i32, i32)* @dsi_vc_enable_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_vc_enable_hs(%struct.omap_dss_device* %0, i32 %1, i32 %2) #0 {
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
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @DSSDBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %14 = call i32 @dsi_bus_is_locked(%struct.dsi_data* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dsi_vc_enable(%struct.dsi_data* %19, i32 %20, i32 0)
  %22 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %23 = call i32 @dsi_if_enable(%struct.dsi_data* %22, i32 0)
  %24 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @DSI_VC_CTRL(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @REG_FLD_MOD(%struct.dsi_data* %24, i32 %26, i32 %27, i32 9, i32 9)
  %29 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dsi_vc_enable(%struct.dsi_data* %29, i32 %30, i32 1)
  %32 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %33 = call i32 @dsi_if_enable(%struct.dsi_data* %32, i32 1)
  %34 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %35 = call i32 @dsi_force_tx_stop_mode_io(%struct.dsi_data* %34)
  %36 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %37 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dsi_vc_send_null(%struct.dsi_data* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %41, %3
  ret void
}

declare dso_local %struct.dsi_data* @to_dsi_data(%struct.omap_dss_device*) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.dsi_data*) #1

declare dso_local i32 @dsi_vc_enable(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @dsi_if_enable(%struct.dsi_data*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @dsi_force_tx_stop_mode_io(%struct.dsi_data*) #1

declare dso_local i32 @dsi_vc_send_null(%struct.dsi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
