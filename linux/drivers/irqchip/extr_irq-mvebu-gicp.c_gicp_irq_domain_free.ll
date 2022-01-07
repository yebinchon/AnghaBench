; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-gicp.c_gicp_irq_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-gicp.c_gicp_irq_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.mvebu_gicp* }
%struct.mvebu_gicp = type { i64, i32, i32, i32 }
%struct.irq_data = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid hwirq %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @gicp_irq_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gicp_irq_domain_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvebu_gicp*, align 8
  %8 = alloca %struct.irq_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %10 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %9, i32 0, i32 0
  %11 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %10, align 8
  store %struct.mvebu_gicp* %11, %struct.mvebu_gicp** %7, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %12, i32 %13)
  store %struct.irq_data* %14, %struct.irq_data** %8, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %7, align 8
  %19 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %7, align 8
  %24 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %27 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %48

30:                                               ; preds = %3
  %31 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @irq_domain_free_irqs_parent(%struct.irq_domain* %31, i32 %32, i32 %33)
  %35 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %7, align 8
  %36 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %35, i32 0, i32 1
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %39 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %7, align 8
  %42 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__clear_bit(i64 %40, i32 %43)
  %45 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %7, align 8
  %46 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  br label %48

48:                                               ; preds = %30, %22
  ret void
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @irq_domain_free_irqs_parent(%struct.irq_domain*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__clear_bit(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
