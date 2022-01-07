; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_irq_preinstall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_irq_preinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32 }
%struct.dpu_kms = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_kms*)* @dpu_irq_preinstall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_irq_preinstall(%struct.msm_kms* %0) #0 {
  %2 = alloca %struct.msm_kms*, align 8
  %3 = alloca %struct.dpu_kms*, align 8
  store %struct.msm_kms* %0, %struct.msm_kms** %2, align 8
  %4 = load %struct.msm_kms*, %struct.msm_kms** %2, align 8
  %5 = call %struct.dpu_kms* @to_dpu_kms(%struct.msm_kms* %4)
  store %struct.dpu_kms* %5, %struct.dpu_kms** %3, align 8
  %6 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %7 = call i32 @dpu_core_irq_preinstall(%struct.dpu_kms* %6)
  ret void
}

declare dso_local %struct.dpu_kms* @to_dpu_kms(%struct.msm_kms*) #1

declare dso_local i32 @dpu_core_irq_preinstall(%struct.dpu_kms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
