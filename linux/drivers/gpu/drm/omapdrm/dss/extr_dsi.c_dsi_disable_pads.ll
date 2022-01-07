; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_disable_pads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_disable_pads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DSI_MODEL_OMAP4 = common dso_local global i64 0, align 8
@DSI_MODEL_OMAP5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_data*)* @dsi_disable_pads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_disable_pads(%struct.dsi_data* %0) #0 {
  %2 = alloca %struct.dsi_data*, align 8
  store %struct.dsi_data* %0, %struct.dsi_data** %2, align 8
  %3 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %4 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DSI_MODEL_OMAP4, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %12 = call i32 @dsi_omap4_mux_pads(%struct.dsi_data* %11, i32 0)
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DSI_MODEL_OMAP5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.dsi_data*, %struct.dsi_data** %2, align 8
  %23 = call i32 @dsi_omap5_mux_pads(%struct.dsi_data* %22, i32 0)
  br label %24

24:                                               ; preds = %21, %13
  br label %25

25:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @dsi_omap4_mux_pads(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_omap5_mux_pads(%struct.dsi_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
