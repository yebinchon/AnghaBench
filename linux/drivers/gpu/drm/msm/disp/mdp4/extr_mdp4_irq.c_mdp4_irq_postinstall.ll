; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_irq.c_mdp4_irq_postinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_irq.c_mdp4_irq_postinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.mdp_kms = type { i32 }
%struct.mdp4_kms = type { %struct.mdp_irq }
%struct.mdp_irq = type { i32, i32 }

@mdp4_irq_error_handler = common dso_local global i32 0, align 4
@MDP4_IRQ_PRIMARY_INTF_UDERRUN = common dso_local global i32 0, align 4
@MDP4_IRQ_EXTERNAL_INTF_UDERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp4_irq_postinstall(%struct.msm_kms* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.mdp_kms*, align 8
  %4 = alloca %struct.mdp4_kms*, align 8
  %5 = alloca %struct.mdp_irq*, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %2, align 8
  %6 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %7 = call %struct.mdp_kms* @to_mdp_kms(%struct.msm_kms* %6)
  store %struct.mdp_kms* %7, %struct.mdp_kms** %3, align 8
  %8 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %9 = call %struct.mdp4_kms* @to_mdp4_kms(%struct.mdp_kms* %8)
  store %struct.mdp4_kms* %9, %struct.mdp4_kms** %4, align 8
  %10 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %11 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %10, i32 0, i32 0
  store %struct.mdp_irq* %11, %struct.mdp_irq** %5, align 8
  %12 = load i32, i32* @mdp4_irq_error_handler, align 4
  %13 = load %struct.mdp_irq*, %struct.mdp_irq** %5, align 8
  %14 = getelementptr inbounds %struct.mdp_irq, %struct.mdp_irq* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @MDP4_IRQ_PRIMARY_INTF_UDERRUN, align 4
  %16 = load i32, i32* @MDP4_IRQ_EXTERNAL_INTF_UDERRUN, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.mdp_irq*, %struct.mdp_irq** %5, align 8
  %19 = getelementptr inbounds %struct.mdp_irq, %struct.mdp_irq* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %21 = load %struct.mdp_irq*, %struct.mdp_irq** %5, align 8
  %22 = call i32 @mdp_irq_register(%struct.mdp_kms* %20, %struct.mdp_irq* %21)
  ret i32 0
}

declare dso_local %struct.mdp_kms* @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local %struct.mdp4_kms* @to_mdp4_kms(%struct.mdp_kms*) #1

declare dso_local i32 @mdp_irq_register(%struct.mdp_kms*, %struct.mdp_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
