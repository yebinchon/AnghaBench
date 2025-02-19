; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_set_irqchip_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_set_irqchip_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.its_device = type { i32 }

@IRQCHIP_STATE_PENDING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32, i32)* @its_irq_set_irqchip_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_irq_set_irqchip_state(%struct.irq_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.its_device*, align 8
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %11 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.its_device* %11, %struct.its_device** %8, align 8
  %12 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %13 = call i32 @its_get_event_id(%struct.irq_data* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IRQCHIP_STATE_PENDING, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.its_device*, %struct.its_device** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @its_send_int(%struct.its_device* %24, i32 %25)
  br label %31

27:                                               ; preds = %20
  %28 = load %struct.its_device*, %struct.its_device** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @its_send_clear(%struct.its_device* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @its_get_event_id(%struct.irq_data*) #1

declare dso_local i32 @its_send_int(%struct.its_device*, i32) #1

declare dso_local i32 @its_send_clear(%struct.its_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
