; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_set_vcpu_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_set_vcpu_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.its_vpe = type { i32 }
%struct.its_cmd_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i8*)* @its_vpe_set_vcpu_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_vpe_set_vcpu_affinity(%struct.irq_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.its_vpe*, align 8
  %7 = alloca %struct.its_cmd_info*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call %struct.its_vpe* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.its_vpe* %9, %struct.its_vpe** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.its_cmd_info*
  store %struct.its_cmd_info* %11, %struct.its_cmd_info** %7, align 8
  %12 = load %struct.its_cmd_info*, %struct.its_cmd_info** %7, align 8
  %13 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %24 [
    i32 128, label %15
    i32 130, label %18
    i32 129, label %21
  ]

15:                                               ; preds = %2
  %16 = load %struct.its_vpe*, %struct.its_vpe** %6, align 8
  %17 = call i32 @its_vpe_schedule(%struct.its_vpe* %16)
  store i32 0, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.its_vpe*, %struct.its_vpe** %6, align 8
  %20 = call i32 @its_vpe_deschedule(%struct.its_vpe* %19)
  store i32 0, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.its_vpe*, %struct.its_vpe** %6, align 8
  %23 = call i32 @its_vpe_invall(%struct.its_vpe* %22)
  store i32 0, i32* %3, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %21, %18, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.its_vpe* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @its_vpe_schedule(%struct.its_vpe*) #1

declare dso_local i32 @its_vpe_deschedule(%struct.its_vpe*) #1

declare dso_local i32 @its_vpe_invall(%struct.its_vpe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
