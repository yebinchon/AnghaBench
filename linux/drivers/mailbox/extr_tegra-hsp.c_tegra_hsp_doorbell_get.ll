; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_doorbell_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_doorbell_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hsp_doorbell = type { i32 }
%struct.tegra_hsp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_hsp_doorbell* (%struct.tegra_hsp*, i32)* @tegra_hsp_doorbell_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_hsp_doorbell* @tegra_hsp_doorbell_get(%struct.tegra_hsp* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_hsp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_hsp_doorbell*, align 8
  %6 = alloca i64, align 8
  store %struct.tegra_hsp* %0, %struct.tegra_hsp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.tegra_hsp_doorbell* @__tegra_hsp_doorbell_get(%struct.tegra_hsp* %11, i32 %12)
  store %struct.tegra_hsp_doorbell* %13, %struct.tegra_hsp_doorbell** %5, align 8
  %14 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load %struct.tegra_hsp_doorbell*, %struct.tegra_hsp_doorbell** %5, align 8
  ret %struct.tegra_hsp_doorbell* %18
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tegra_hsp_doorbell* @__tegra_hsp_doorbell_get(%struct.tegra_hsp*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
