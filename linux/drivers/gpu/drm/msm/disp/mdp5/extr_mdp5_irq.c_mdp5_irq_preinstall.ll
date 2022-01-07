; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_irq.c_mdp5_irq_preinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_irq.c_mdp5_irq_preinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.mdp5_kms = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@REG_MDP5_INTR_CLEAR = common dso_local global i32 0, align 4
@REG_MDP5_INTR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp5_irq_preinstall(%struct.msm_kms* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %2, align 8
  %5 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %6 = call i32 @to_mdp_kms(%struct.msm_kms* %5)
  %7 = call %struct.mdp5_kms* @to_mdp5_kms(i32 %6)
  store %struct.mdp5_kms* %7, %struct.mdp5_kms** %3, align 8
  %8 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %9 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @pm_runtime_get_sync(%struct.device* %12)
  %14 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %15 = load i32, i32* @REG_MDP5_INTR_CLEAR, align 4
  %16 = call i32 @mdp5_write(%struct.mdp5_kms* %14, i32 %15, i32 -1)
  %17 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %18 = load i32, i32* @REG_MDP5_INTR_EN, align 4
  %19 = call i32 @mdp5_write(%struct.mdp5_kms* %17, i32 %18, i32 0)
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @pm_runtime_put_sync(%struct.device* %20)
  ret void
}

declare dso_local %struct.mdp5_kms* @to_mdp5_kms(i32) #1

declare dso_local i32 @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
