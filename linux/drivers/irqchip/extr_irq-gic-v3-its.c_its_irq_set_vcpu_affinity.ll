; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_set_vcpu_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_set_vcpu_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.its_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.its_cmd_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i8*)* @its_irq_set_vcpu_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_irq_set_vcpu_affinity(%struct.irq_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.its_device*, align 8
  %7 = alloca %struct.its_cmd_info*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.its_device* %9, %struct.its_device** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.its_cmd_info*
  store %struct.its_cmd_info* %11, %struct.its_cmd_info** %7, align 8
  %12 = load %struct.its_device*, %struct.its_device** %6, align 8
  %13 = getelementptr inbounds %struct.its_device, %struct.its_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.its_cmd_info*, %struct.its_cmd_info** %7, align 8
  %23 = icmp ne %struct.its_cmd_info* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %26 = call i32 @its_vlpi_unmap(%struct.irq_data* %25)
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %21
  %28 = load %struct.its_cmd_info*, %struct.its_cmd_info** %7, align 8
  %29 = getelementptr inbounds %struct.its_cmd_info, %struct.its_cmd_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %43 [
    i32 130, label %31
    i32 131, label %35
    i32 128, label %39
    i32 129, label %39
  ]

31:                                               ; preds = %27
  %32 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %33 = load %struct.its_cmd_info*, %struct.its_cmd_info** %7, align 8
  %34 = call i32 @its_vlpi_map(%struct.irq_data* %32, %struct.its_cmd_info* %33)
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %27
  %36 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %37 = load %struct.its_cmd_info*, %struct.its_cmd_info** %7, align 8
  %38 = call i32 @its_vlpi_get(%struct.irq_data* %36, %struct.its_cmd_info* %37)
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %27, %27
  %40 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %41 = load %struct.its_cmd_info*, %struct.its_cmd_info** %7, align 8
  %42 = call i32 @its_vlpi_prop_update(%struct.irq_data* %40, %struct.its_cmd_info* %41)
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %27
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %39, %35, %31, %24, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @its_vlpi_unmap(%struct.irq_data*) #1

declare dso_local i32 @its_vlpi_map(%struct.irq_data*, %struct.its_cmd_info*) #1

declare dso_local i32 @its_vlpi_get(%struct.irq_data*, %struct.its_cmd_info*) #1

declare dso_local i32 @its_vlpi_prop_update(%struct.irq_data*, %struct.its_cmd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
