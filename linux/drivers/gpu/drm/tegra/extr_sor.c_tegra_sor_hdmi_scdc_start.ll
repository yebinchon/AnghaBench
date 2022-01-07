; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_hdmi_scdc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_hdmi_scdc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_sor = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.drm_scdc }
%struct.drm_scdc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_sor*)* @tegra_sor_hdmi_scdc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_sor_hdmi_scdc_start(%struct.tegra_sor* %0) #0 {
  %2 = alloca %struct.tegra_sor*, align 8
  %3 = alloca %struct.drm_scdc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.tegra_sor* %0, %struct.tegra_sor** %2, align 8
  %5 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store %struct.drm_scdc* %10, %struct.drm_scdc** %3, align 8
  %11 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store %struct.drm_display_mode* %18, %struct.drm_display_mode** %4, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 340000
  br i1 %22, label %23, label %37

23:                                               ; preds = %1
  %24 = load %struct.drm_scdc*, %struct.drm_scdc** %3, align 8
  %25 = getelementptr inbounds %struct.drm_scdc, %struct.drm_scdc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %30 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %29, i32 0, i32 1
  %31 = call i32 @msecs_to_jiffies(i32 5000)
  %32 = call i32 @schedule_delayed_work(i32* %30, i32 %31)
  %33 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %34 = call i32 @tegra_sor_hdmi_scdc_enable(%struct.tegra_sor* %33)
  %35 = load %struct.tegra_sor*, %struct.tegra_sor** %2, align 8
  %36 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %37

37:                                               ; preds = %28, %23, %1
  ret void
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @tegra_sor_hdmi_scdc_enable(%struct.tegra_sor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
