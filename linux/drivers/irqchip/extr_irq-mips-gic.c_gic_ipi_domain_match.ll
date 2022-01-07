; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-gic.c_gic_ipi_domain_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mips-gic.c_gic_ipi_domain_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32, i32 }
%struct.device_node = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gic_ipi_domain_match(%struct.irq_domain* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %32 [
    i32 128, label %10
  ]

10:                                               ; preds = %3
  %11 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %21 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.device_node* @to_of_node(i32 %22)
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = icmp eq %struct.device_node* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %10
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i1 [ false, %19 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.device_node* @to_of_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
