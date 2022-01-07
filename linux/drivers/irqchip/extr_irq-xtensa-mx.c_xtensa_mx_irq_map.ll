; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-xtensa-mx.c_xtensa_mx_irq_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-xtensa-mx.c_xtensa_mx_irq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.irq_chip* }
%struct.irq_chip = type { i32 }

@HW_IRQ_IPI_COUNT = common dso_local global i64 0, align 8
@handle_percpu_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ipi\00", align 1
@IRQ_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i64)* @xtensa_mx_irq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtensa_mx_irq_map(%struct.irq_domain* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.irq_chip*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @HW_IRQ_IPI_COUNT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %14 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %13, i32 0, i32 0
  %15 = load %struct.irq_chip*, %struct.irq_chip** %14, align 8
  store %struct.irq_chip* %15, %struct.irq_chip** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %18 = load i32, i32* @handle_percpu_irq, align 4
  %19 = call i32 @irq_set_chip_and_handler_name(i32 %16, %struct.irq_chip* %17, i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IRQ_LEVEL, align 4
  %22 = call i32 @irq_set_status_flags(i32 %20, i32 %21)
  store i32 0, i32* %4, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @irq_to_desc(i32 %24)
  %26 = call i32 @irq_desc_get_irq_data(i32 %25)
  %27 = call i32 @irqd_set_single_target(i32 %26)
  %28 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @xtensa_irq_map(%struct.irq_domain* %28, i32 %29, i64 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %23, %12
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @irq_set_chip_and_handler_name(i32, %struct.irq_chip*, i32, i8*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @irqd_set_single_target(i32) #1

declare dso_local i32 @irq_desc_get_irq_data(i32) #1

declare dso_local i32 @irq_to_desc(i32) #1

declare dso_local i32 @xtensa_irq_map(%struct.irq_domain*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
