; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_dsi_mgr_phy_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_manager.c_dsi_mgr_phy_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi = type { i32, i32 }

@DSI_CLOCK_MASTER = common dso_local global i32 0, align 4
@DSI_CLOCK_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dsi_mgr_phy_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_mgr_phy_disable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_dsi*, align 8
  %4 = alloca %struct.msm_dsi*, align 8
  %5 = alloca %struct.msm_dsi*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %6)
  store %struct.msm_dsi* %7, %struct.msm_dsi** %3, align 8
  %8 = load i32, i32* @DSI_CLOCK_MASTER, align 4
  %9 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %8)
  store %struct.msm_dsi* %9, %struct.msm_dsi** %4, align 8
  %10 = load i32, i32* @DSI_CLOCK_SLAVE, align 4
  %11 = call %struct.msm_dsi* @dsi_mgr_get_dsi(i32 %10)
  store %struct.msm_dsi* %11, %struct.msm_dsi** %5, align 8
  %12 = load %struct.msm_dsi*, %struct.msm_dsi** %3, align 8
  %13 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = call i64 (...) @IS_DUAL_DSI()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %1
  %17 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %18 = icmp ne %struct.msm_dsi* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load %struct.msm_dsi*, %struct.msm_dsi** %5, align 8
  %21 = icmp ne %struct.msm_dsi* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %24 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = load %struct.msm_dsi*, %struct.msm_dsi** %5, align 8
  %29 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = load %struct.msm_dsi*, %struct.msm_dsi** %5, align 8
  %34 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @msm_dsi_phy_disable(i32 %35)
  %37 = load %struct.msm_dsi*, %struct.msm_dsi** %4, align 8
  %38 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @msm_dsi_phy_disable(i32 %39)
  br label %41

41:                                               ; preds = %32, %27, %22
  br label %47

42:                                               ; preds = %19, %16, %1
  %43 = load %struct.msm_dsi*, %struct.msm_dsi** %3, align 8
  %44 = getelementptr inbounds %struct.msm_dsi, %struct.msm_dsi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @msm_dsi_phy_disable(i32 %45)
  br label %47

47:                                               ; preds = %42, %41
  ret void
}

declare dso_local %struct.msm_dsi* @dsi_mgr_get_dsi(i32) #1

declare dso_local i64 @IS_DUAL_DSI(...) #1

declare dso_local i32 @msm_dsi_phy_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
