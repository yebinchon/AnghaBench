; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_cp_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_cp_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.mvebu_sei* }
%struct.mvebu_sei = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.irq_data = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid hwirq %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, i32, i32)* @mvebu_sei_cp_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_sei_cp_domain_free(%struct.irq_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvebu_sei*, align 8
  %8 = alloca %struct.irq_data*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %10 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %9, i32 0, i32 0
  %11 = load %struct.mvebu_sei*, %struct.mvebu_sei** %10, align 8
  store %struct.mvebu_sei* %11, %struct.mvebu_sei** %7, align 8
  %12 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain* %12, i32 %13)
  store %struct.irq_data* %14, %struct.irq_data** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %28, label %17

17:                                               ; preds = %3
  %18 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mvebu_sei*, %struct.mvebu_sei** %7, align 8
  %22 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %20, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %17, %3
  %29 = load %struct.mvebu_sei*, %struct.mvebu_sei** %7, align 8
  %30 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %33 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %45

36:                                               ; preds = %17
  %37 = load %struct.mvebu_sei*, %struct.mvebu_sei** %7, align 8
  %38 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %39 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @mvebu_sei_cp_release_irq(%struct.mvebu_sei* %37, i64 %40)
  %42 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @irq_domain_free_irqs_parent(%struct.irq_domain* %42, i32 %43, i32 1)
  br label %45

45:                                               ; preds = %36, %28
  ret void
}

declare dso_local %struct.irq_data* @irq_domain_get_irq_data(%struct.irq_domain*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @mvebu_sei_cp_release_irq(%struct.mvebu_sei*, i64) #1

declare dso_local i32 @irq_domain_free_irqs_parent(%struct.irq_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
