; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_reset_blend_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_ctl.c_mdp5_ctl_reset_blend_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_ctl = type { i32, i32, %struct.mdp5_ctl_manager* }
%struct.mdp5_ctl_manager = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp5_ctl*)* @mdp5_ctl_reset_blend_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_ctl_reset_blend_regs(%struct.mdp5_ctl* %0) #0 {
  %2 = alloca %struct.mdp5_ctl*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mdp5_ctl_manager*, align 8
  %5 = alloca i32, align 4
  store %struct.mdp5_ctl* %0, %struct.mdp5_ctl** %2, align 8
  %6 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %2, align 8
  %7 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %6, i32 0, i32 2
  %8 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %7, align 8
  store %struct.mdp5_ctl_manager* %8, %struct.mdp5_ctl_manager** %4, align 8
  %9 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %2, align 8
  %10 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %9, i32 0, i32 0
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %34, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %4, align 8
  %16 = getelementptr inbounds %struct.mdp5_ctl_manager, %struct.mdp5_ctl_manager* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %2, align 8
  %21 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %2, align 8
  %22 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @REG_MDP5_CTL_LAYER_REG(i32 %23, i32 %24)
  %26 = call i32 @ctl_write(%struct.mdp5_ctl* %20, i32 %25, i32 0)
  %27 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %2, align 8
  %28 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %2, align 8
  %29 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @REG_MDP5_CTL_LAYER_EXT_REG(i32 %30, i32 %31)
  %33 = call i32 @ctl_write(%struct.mdp5_ctl* %27, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %2, align 8
  %39 = getelementptr inbounds %struct.mdp5_ctl, %struct.mdp5_ctl* %38, i32 0, i32 0
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ctl_write(%struct.mdp5_ctl*, i32, i32) #1

declare dso_local i32 @REG_MDP5_CTL_LAYER_REG(i32, i32) #1

declare dso_local i32 @REG_MDP5_CTL_LAYER_EXT_REG(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
