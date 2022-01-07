; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_cmd_xfer_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_msm_dsi_manager_cmd_xfer_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi = type { %struct.mipi_dsi_host* }
%struct.mipi_dsi_host = type { i32 }

@DSI_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_dsi_manager_cmd_xfer_trigger(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_dsi*, align 8
  %9 = alloca %struct.msm_dsi*, align 8
  %10 = alloca %struct.mipi_dsi_host*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %11)
  store %struct.msm_dsi* %12, %struct.msm_dsi** %8, align 8
  %13 = load i32, i32* @DSI_0, align 4
  %14 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %13)
  store %struct.msm_dsi* %14, %struct.msm_dsi** %9, align 8
  %15 = load %struct.msm_dsi*, %struct.msm_dsi** %8, align 8
  %16 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %15, i32 0, i32 0
  %17 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %16, align 8
  store %struct.mipi_dsi_host* %17, %struct.mipi_dsi_host** %10, align 8
  %18 = call i64 (...) @IS_SYNC_NEEDED()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DSI_0, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %43

25:                                               ; preds = %20, %3
  %26 = call i64 (...) @IS_SYNC_NEEDED()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.msm_dsi*, %struct.msm_dsi** %9, align 8
  %30 = icmp ne %struct.msm_dsi* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.msm_dsi*, %struct.msm_dsi** %9, align 8
  %33 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %32, i32 0, i32 0
  %34 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @msm_dsi_host_cmd_xfer_commit(%struct.mipi_dsi_host* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %28, %25
  %39 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @msm_dsi_host_cmd_xfer_commit(%struct.mipi_dsi_host* %39, i32 %40, i32 %41)
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.msm_dsi* @dsi_mgr_get_dsi(i32) #1

declare dso_local i64 @IS_SYNC_NEEDED(...) #1

declare dso_local i32 @msm_dsi_host_cmd_xfer_commit(%struct.mipi_dsi_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
