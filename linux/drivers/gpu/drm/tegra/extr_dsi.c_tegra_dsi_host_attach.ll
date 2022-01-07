; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_host_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_host_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tegra_dsi = type { %struct.tegra_output, i32, i32, i64, i32, i32, i32 }
%struct.tegra_output = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"attaching dual-channel device %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to set up ganged mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @tegra_dsi_host_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_host_attach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.tegra_dsi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_output*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %5, align 8
  %9 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %10 = call %struct.tegra_dsi* @host_to_tegra(%struct.mipi_dsi_host* %9)
  store %struct.tegra_dsi* %10, %struct.tegra_dsi** %6, align 8
  %11 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %12 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %15 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %20 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %22 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %27 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %2
  %31 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %32 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %35 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %34, i32 0, i32 0
  %36 = call i32 @dev_name(%struct.TYPE_4__* %35)
  %37 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %39 = call i32 @tegra_dsi_ganged_setup(%struct.tegra_dsi* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %44 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %98

49:                                               ; preds = %30
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %52 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %97, label %55

55:                                               ; preds = %50
  %56 = load %struct.tegra_dsi*, %struct.tegra_dsi** %6, align 8
  %57 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %56, i32 0, i32 0
  store %struct.tegra_output* %57, %struct.tegra_output** %8, align 8
  %58 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %59 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @of_drm_find_panel(i32 %61)
  %63 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %64 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %66 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @IS_ERR(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %72 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %70, %55
  %74 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %75 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %80 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %86 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %89 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %88, i32 0, i32 0
  %90 = call i32 @drm_panel_attach(i32* %87, %struct.TYPE_3__* %89)
  %91 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %92 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @drm_helper_hpd_irq_event(i64 %94)
  br label %96

96:                                               ; preds = %84, %78, %73
  br label %97

97:                                               ; preds = %96, %50
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %42
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.tegra_dsi* @host_to_tegra(%struct.mipi_dsi_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @tegra_dsi_ganged_setup(%struct.tegra_dsi*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32* @of_drm_find_panel(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @drm_panel_attach(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @drm_helper_hpd_irq_event(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
