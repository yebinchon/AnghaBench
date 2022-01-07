; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_config_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_config_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@DP_LINK_CAP_ENHANCED_FRAMING = common dso_local global i32 0, align 4
@EDP_CONFIGURATION_CTRL_ENHANCED_FRAMING = common dso_local global i32 0, align 4
@EDP_6BIT = common dso_local global i32 0, align 4
@EDP_8BIT = common dso_local global i32 0, align 4
@EDP_CONFIGURATION_CTRL_PROGRESSIVE = common dso_local global i32 0, align 4
@EDP_CONFIGURATION_CTRL_SYNC_CLK = common dso_local global i32 0, align 4
@EDP_CONFIGURATION_CTRL_STATIC_MVID = common dso_local global i32 0, align 4
@REG_EDP_CONFIGURATION_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edp_ctrl*)* @edp_config_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edp_config_ctrl(%struct.edp_ctrl* %0) #0 {
  %2 = alloca %struct.edp_ctrl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %2, align 8
  %5 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %6 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = sub nsw i64 %7, 1
  %9 = call i32 @EDP_CONFIGURATION_CTRL_LANES(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %11 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DP_LINK_CAP_ENHANCED_FRAMING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @EDP_CONFIGURATION_CTRL_ENHANCED_FRAMING, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* @EDP_6BIT, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %24 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EDP_8BIT, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @EDP_CONFIGURATION_CTRL_COLOR(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %35 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @EDP_CONFIGURATION_CTRL_PROGRESSIVE, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %29
  %43 = load i32, i32* @EDP_CONFIGURATION_CTRL_SYNC_CLK, align 4
  %44 = load i32, i32* @EDP_CONFIGURATION_CTRL_STATIC_MVID, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load %struct.edp_ctrl*, %struct.edp_ctrl** %2, align 8
  %49 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @REG_EDP_CONFIGURATION_CTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @edp_write(i64 %52, i32 %53)
  ret void
}

declare dso_local i32 @EDP_CONFIGURATION_CTRL_LANES(i64) #1

declare dso_local i32 @EDP_CONFIGURATION_CTRL_COLOR(i32) #1

declare dso_local i32 @edp_write(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
