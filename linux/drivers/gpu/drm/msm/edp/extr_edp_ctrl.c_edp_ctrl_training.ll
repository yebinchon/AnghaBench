; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_ctrl_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_ctrl.c_edp_ctrl_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_ctrl = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EDP_TRAIN_RECONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edp_ctrl*)* @edp_ctrl_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edp_ctrl_training(%struct.edp_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.edp_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.edp_ctrl* %0, %struct.edp_ctrl** %3, align 8
  %5 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %6 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %19, %12
  %14 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %15 = call i32 @edp_do_link_train(%struct.edp_ctrl* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EDP_TRAIN_RECONFIG, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %21 = call i32 @edp_ctrl_irq_enable(%struct.edp_ctrl* %20, i32 0)
  %22 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %23 = call i32 @edp_ctrl_link_enable(%struct.edp_ctrl* %22, i32 0)
  %24 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @msm_edp_phy_ctrl(i32 %26, i32 0)
  %28 = call i32 (...) @wmb()
  %29 = call i32 @usleep_range(i32 500, i32 1000)
  %30 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %31 = getelementptr inbounds %struct.edp_ctrl, %struct.edp_ctrl* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @msm_edp_phy_ctrl(i32 %32, i32 1)
  %34 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %35 = call i32 @edp_ctrl_link_enable(%struct.edp_ctrl* %34, i32 1)
  %36 = load %struct.edp_ctrl*, %struct.edp_ctrl** %3, align 8
  %37 = call i32 @edp_ctrl_irq_enable(%struct.edp_ctrl* %36, i32 1)
  br label %13

38:                                               ; preds = %13
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @edp_do_link_train(%struct.edp_ctrl*) #1

declare dso_local i32 @edp_ctrl_irq_enable(%struct.edp_ctrl*, i32) #1

declare dso_local i32 @edp_ctrl_link_enable(%struct.edp_ctrl*, i32) #1

declare dso_local i32 @msm_edp_phy_ctrl(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
