; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dpaux.c_drm_dp_aux_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dpaux.c_drm_dp_aux_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.tegra_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tegra_dpaux = type { i32, i32, %struct.tegra_output* }

@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@connector_status_connected = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_aux_attach(%struct.drm_dp_aux* %0, %struct.tegra_output* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca %struct.tegra_output*, align 8
  %6 = alloca %struct.tegra_dpaux*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store %struct.tegra_output* %1, %struct.tegra_output** %5, align 8
  %10 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %11 = call %struct.tegra_dpaux* @to_dpaux(%struct.drm_dp_aux* %10)
  store %struct.tegra_dpaux* %11, %struct.tegra_dpaux** %6, align 8
  %12 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %13 = load %struct.tegra_output*, %struct.tegra_output** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.tegra_output*, %struct.tegra_output** %5, align 8
  %17 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %6, align 8
  %18 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %17, i32 0, i32 2
  store %struct.tegra_output* %16, %struct.tegra_output** %18, align 8
  %19 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %6, align 8
  %20 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regulator_enable(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %2
  %28 = load i64, i64* @jiffies, align 8
  %29 = call i64 @msecs_to_jiffies(i32 250)
  %30 = add i64 %28, %29
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %47, %27
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @time_before(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %38 = call i32 @drm_dp_aux_detect(%struct.drm_dp_aux* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @connector_status_connected, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %6, align 8
  %44 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @enable_irq(i32 %45)
  store i32 0, i32* %3, align 4
  br label %52

47:                                               ; preds = %36
  %48 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %31

49:                                               ; preds = %31
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %42, %25
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.tegra_dpaux* @to_dpaux(%struct.drm_dp_aux*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @drm_dp_aux_detect(%struct.drm_dp_aux*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
