; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_early_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_early_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_minor* }
%struct.drm_minor = type { i32 }
%struct.tegra_output = type { i32 }
%struct.tegra_hdmi = type { i32* }

@debugfs_files = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @tegra_hdmi_early_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_hdmi_early_unregister(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.tegra_output*, align 8
  %4 = alloca %struct.drm_minor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_hdmi*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = call %struct.tegra_output* @connector_to_output(%struct.drm_connector* %7)
  store %struct.tegra_output* %8, %struct.tegra_output** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.drm_minor*, %struct.drm_minor** %12, align 8
  store %struct.drm_minor* %13, %struct.drm_minor** %4, align 8
  %14 = load i32, i32* @debugfs_files, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.tegra_output*, %struct.tegra_output** %3, align 8
  %17 = call %struct.tegra_hdmi* @to_hdmi(%struct.tegra_output* %16)
  store %struct.tegra_hdmi* %17, %struct.tegra_hdmi** %6, align 8
  %18 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %6, align 8
  %19 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %23 = call i32 @drm_debugfs_remove_files(i32* %20, i32 %21, %struct.drm_minor* %22)
  %24 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %6, align 8
  %29 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  ret void
}

declare dso_local %struct.tegra_output* @connector_to_output(%struct.drm_connector*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.tegra_hdmi* @to_hdmi(%struct.tegra_output*) #1

declare dso_local i32 @drm_debugfs_remove_files(i32*, i32, %struct.drm_minor*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
