; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_output.c_tegra_output_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_output.c_tegra_output_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.tegra_output = type { i32, i32, i64 }

@connector_status_unknown = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_output_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_output*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.tegra_output* @connector_to_output(%struct.drm_connector* %7)
  store %struct.tegra_output* %8, %struct.tegra_output** %5, align 8
  %9 = load i32, i32* @connector_status_unknown, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.tegra_output*, %struct.tegra_output** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.tegra_output*, %struct.tegra_output** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @gpiod_get_value(i64 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %21, i32* %6, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @connector_status_connected, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.tegra_output*, %struct.tegra_output** %5, align 8
  %27 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %31, i32* %6, align 4
  br label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @connector_status_connected, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %24
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @connector_status_connected, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.tegra_output*, %struct.tegra_output** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cec_notifier_phys_addr_invalidate(i32 %42)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.tegra_output* @connector_to_output(%struct.drm_connector*) #1

declare dso_local i64 @gpiod_get_value(i64) #1

declare dso_local i32 @cec_notifier_phys_addr_invalidate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
