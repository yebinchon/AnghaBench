; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_host_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_host_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { i32 }
%struct.mcde_dsi = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @mcde_dsi_host_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcde_dsi_host_detach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca %struct.mipi_dsi_host*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.mcde_dsi*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %3, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %4, align 8
  %6 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %3, align 8
  %7 = call %struct.mcde_dsi* @host_to_mcde_dsi(%struct.mipi_dsi_host* %6)
  store %struct.mcde_dsi* %7, %struct.mcde_dsi** %5, align 8
  %8 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %9 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %11 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.mcde_dsi*, %struct.mcde_dsi** %5, align 8
  %16 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %14, %2
  ret i32 0
}

declare dso_local %struct.mcde_dsi* @host_to_mcde_dsi(%struct.mipi_dsi_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
