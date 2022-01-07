; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_irq.c_mdp5_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_irq.c_mdp5_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.mdp_kms = type { i32 }
%struct.mdp5_kms = type { %struct.mdp_irq, %struct.TYPE_2__* }
%struct.mdp_irq = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@mdp5_irq_error_handler = common dso_local global i32 0, align 4
@MDP5_IRQ_INTF0_UNDER_RUN = common dso_local global i32 0, align 4
@MDP5_IRQ_INTF1_UNDER_RUN = common dso_local global i32 0, align 4
@MDP5_IRQ_INTF2_UNDER_RUN = common dso_local global i32 0, align 4
@MDP5_IRQ_INTF3_UNDER_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_irq_postinstall(%struct.msm_kms* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.mdp_kms*, align 8
  %4 = alloca %struct.mdp5_kms*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mdp_irq*, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %2, align 8
  %7 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %8 = call %struct.mdp_kms* @to_mdp_kms(%struct.msm_kms* %7)
  store %struct.mdp_kms* %8, %struct.mdp_kms** %3, align 8
  %9 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %10 = call %struct.mdp5_kms* @to_mdp5_kms(%struct.mdp_kms* %9)
  store %struct.mdp5_kms* %10, %struct.mdp5_kms** %4, align 8
  %11 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %12 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %16 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %15, i32 0, i32 0
  store %struct.mdp_irq* %16, %struct.mdp_irq** %6, align 8
  %17 = load i32, i32* @mdp5_irq_error_handler, align 4
  %18 = load %struct.mdp_irq*, %struct.mdp_irq** %6, align 8
  %19 = getelementptr inbounds %struct.mdp_irq, %struct.mdp_irq* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @MDP5_IRQ_INTF0_UNDER_RUN, align 4
  %21 = load i32, i32* @MDP5_IRQ_INTF1_UNDER_RUN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MDP5_IRQ_INTF2_UNDER_RUN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MDP5_IRQ_INTF3_UNDER_RUN, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.mdp_irq*, %struct.mdp_irq** %6, align 8
  %28 = getelementptr inbounds %struct.mdp_irq, %struct.mdp_irq* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @pm_runtime_get_sync(%struct.device* %29)
  %31 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %32 = load %struct.mdp_irq*, %struct.mdp_irq** %6, align 8
  %33 = call i32 @mdp_irq_register(%struct.mdp_kms* %31, %struct.mdp_irq* %32)
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @pm_runtime_put_sync(%struct.device* %34)
  ret i32 0
}

declare dso_local %struct.mdp_kms* @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local %struct.mdp5_kms* @to_mdp5_kms(%struct.mdp_kms*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @mdp_irq_register(%struct.mdp_kms*, %struct.mdp_irq*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
