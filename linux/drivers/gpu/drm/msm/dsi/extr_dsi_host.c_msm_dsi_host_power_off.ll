; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_msm_dsi_host_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.msm_dsi_host = type { i32, i32, %struct.TYPE_4__*, i64, %struct.msm_dsi_cfg_handler* }
%struct.TYPE_4__ = type { i32 }
%struct.msm_dsi_cfg_handler = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.msm_dsi_host*)* }

@.str = private unnamed_addr constant [21 x i8] c"dsi host already off\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_dsi_host_power_off(%struct.mipi_dsi_host* %0) #0 {
  %2 = alloca %struct.mipi_dsi_host*, align 8
  %3 = alloca %struct.msm_dsi_host*, align 8
  %4 = alloca %struct.msm_dsi_cfg_handler*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %2, align 8
  %5 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %2, align 8
  %6 = call %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host* %5)
  store %struct.msm_dsi_host* %6, %struct.msm_dsi_host** %3, align 8
  %7 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %8 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %7, i32 0, i32 4
  %9 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %8, align 8
  store %struct.msm_dsi_cfg_handler* %9, %struct.msm_dsi_cfg_handler** %4, align 8
  %10 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %11 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %14 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %21 = call i32 @dsi_ctrl_config(%struct.msm_dsi_host* %20, i32 0, i32* null)
  %22 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %23 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %28 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @gpiod_set_value(i64 %29, i32 0)
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %33 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @pinctrl_pm_select_sleep_state(i32* %35)
  %37 = load %struct.msm_dsi_cfg_handler*, %struct.msm_dsi_cfg_handler** %4, align 8
  %38 = getelementptr inbounds %struct.msm_dsi_cfg_handler, %struct.msm_dsi_cfg_handler* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.msm_dsi_host*)*, i32 (%struct.msm_dsi_host*)** %40, align 8
  %42 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %43 = call i32 %41(%struct.msm_dsi_host* %42)
  %44 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %45 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @pm_runtime_put_autosuspend(i32* %47)
  %49 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %50 = call i32 @dsi_host_regulator_disable(%struct.msm_dsi_host* %49)
  %51 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %52 = call i32 @msm_dsi_sfpb_config(%struct.msm_dsi_host* %51, i32 0)
  %53 = call i32 @DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %55 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %56

56:                                               ; preds = %31, %17
  %57 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %3, align 8
  %58 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  ret i32 0
}

declare dso_local %struct.msm_dsi_host* @to_msm_dsi_host(%struct.mipi_dsi_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @dsi_ctrl_config(%struct.msm_dsi_host*, i32, i32*) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @pinctrl_pm_select_sleep_state(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @dsi_host_regulator_disable(%struct.msm_dsi_host*) #1

declare dso_local i32 @msm_dsi_sfpb_config(%struct.msm_dsi_host*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
