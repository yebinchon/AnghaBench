; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dpaux.c_drm_dp_aux_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dpaux.c_drm_dp_aux_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.tegra_dpaux = type { i32*, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@connector_status_disconnected = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_aux_detach(%struct.drm_dp_aux* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_dp_aux*, align 8
  %4 = alloca %struct.tegra_dpaux*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %3, align 8
  %8 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %9 = call %struct.tegra_dpaux* @to_dpaux(%struct.drm_dp_aux* %8)
  store %struct.tegra_dpaux* %9, %struct.tegra_dpaux** %4, align 8
  %10 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @disable_irq(i32 %12)
  %14 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @regulator_disable(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %45

22:                                               ; preds = %1
  %23 = load i64, i64* @jiffies, align 8
  %24 = call i64 @msecs_to_jiffies(i32 250)
  %25 = add i64 %23, %24
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %40, %22
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @time_before(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %33 = call i32 @drm_dp_aux_detect(%struct.drm_dp_aux* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @connector_status_disconnected, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.tegra_dpaux*, %struct.tegra_dpaux** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_dpaux, %struct.tegra_dpaux* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  store i32 0, i32* %2, align 4
  br label %45

40:                                               ; preds = %31
  %41 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %26

42:                                               ; preds = %26
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %37, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.tegra_dpaux* @to_dpaux(%struct.drm_dp_aux*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @drm_dp_aux_detect(%struct.drm_dp_aux*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
