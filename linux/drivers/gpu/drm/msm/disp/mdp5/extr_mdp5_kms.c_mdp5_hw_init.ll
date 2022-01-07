; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.mdp5_kms = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@REG_MDP5_DISP_INTF_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_kms*)* @mdp5_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_hw_init(%struct.msm_kms* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %2, align 8
  %6 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %7 = call i32 @to_mdp_kms(%struct.msm_kms* %6)
  %8 = call %struct.mdp5_kms* @to_mdp5_kms(i32 %7)
  store %struct.mdp5_kms* %8, %struct.mdp5_kms** %3, align 8
  %9 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %10 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @pm_runtime_get_sync(%struct.device* %13)
  %15 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %16 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %20 = load i32, i32* @REG_MDP5_DISP_INTF_SEL, align 4
  %21 = call i32 @mdp5_write(%struct.mdp5_kms* %19, i32 %20, i32 0)
  %22 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %23 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %22, i32 0, i32 1
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %27 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mdp5_ctlm_hw_reset(i32 %28)
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @pm_runtime_put_sync(%struct.device* %30)
  ret i32 0
}

declare dso_local %struct.mdp5_kms* @to_mdp5_kms(i32) #1

declare dso_local i32 @to_mdp_kms(%struct.msm_kms*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdp5_ctlm_hw_reset(i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
