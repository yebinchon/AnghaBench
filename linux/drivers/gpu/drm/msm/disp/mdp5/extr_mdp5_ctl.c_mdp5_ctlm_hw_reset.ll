; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctlm_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctlm_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_ctl_manager = type { i32, %struct.mdp5_ctl* }
%struct.mdp5_ctl = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp5_ctlm_hw_reset(%struct.mdp5_ctl_manager* %0) #0 {
  %2 = alloca %struct.mdp5_ctl_manager*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdp5_ctl*, align 8
  store %struct.mdp5_ctl_manager* %0, %struct.mdp5_ctl_manager** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %2, align 8
  %9 = getelementptr inbounds %struct.mdp5_ctl_manager, %struct.mdp5_ctl_manager* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %2, align 8
  %14 = getelementptr inbounds %struct.mdp5_ctl_manager, %struct.mdp5_ctl_manager* %13, i32 0, i32 1
  %15 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %15, i64 %17
  store %struct.mdp5_ctl* %18, %struct.mdp5_ctl** %5, align 8
  %19 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %20 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %19, i32 0, i32 0
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %24 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %25 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @REG_MDP5_CTL_OP(i32 %26)
  %28 = call i32 @ctl_write(%struct.mdp5_ctl* %23, i32 %27, i32 0)
  %29 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %5, align 8
  %30 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %29, i32 0, i32 0
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  br label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ctl_write(%struct.mdp5_ctl*, i32, i32) #1

declare dso_local i32 @REG_MDP5_CTL_OP(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
