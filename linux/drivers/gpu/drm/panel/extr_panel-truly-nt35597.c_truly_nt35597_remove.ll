; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32 }
%struct.truly_nt35597 = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @truly_nt35597_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truly_nt35597_remove(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca %struct.mipi_dsi_device*, align 8
  %3 = alloca %struct.truly_nt35597*, align 8
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %2, align 8
  %4 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %5 = call %struct.truly_nt35597* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device* %4)
  store %struct.truly_nt35597* %5, %struct.truly_nt35597** %3, align 8
  %6 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %7 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %14 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @mipi_dsi_detach(i64 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %21 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %28 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @mipi_dsi_detach(i64 %31)
  %33 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %34 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @mipi_dsi_device_unregister(i64 %37)
  br label %39

39:                                               ; preds = %26, %19
  %40 = load %struct.truly_nt35597*, %struct.truly_nt35597** %3, align 8
  %41 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %40, i32 0, i32 0
  %42 = call i32 @drm_panel_remove(i32* %41)
  ret i32 0
}

declare dso_local %struct.truly_nt35597* @mipi_dsi_get_drvdata(%struct.mipi_dsi_device*) #1

declare dso_local i32 @mipi_dsi_detach(i64) #1

declare dso_local i32 @mipi_dsi_device_unregister(i64) #1

declare dso_local i32 @drm_panel_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
