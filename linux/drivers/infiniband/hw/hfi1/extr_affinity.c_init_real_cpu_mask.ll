; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_affinity.c_init_real_cpu_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_affinity.c_init_real_cpu_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@node_affinity = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@cpu_online_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_real_cpu_mask() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @cpumask_clear(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_affinity, i32 0, i32 0))
  %6 = load i32, i32* @cpu_online_mask, align 4
  %7 = call i32 @cpumask_copy(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_affinity, i32 0, i32 0), i32 %6)
  %8 = call i32 @cpumask_weight(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_affinity, i32 0, i32 0))
  store i32 %8, i32* %1, align 4
  %9 = call i32 @cpumask_first(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_affinity, i32 0, i32 0))
  %10 = call i32* @topology_sibling_cpumask(i32 %9)
  %11 = call i32 @cpumask_weight(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = call i32 @cpumask_first(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_affinity, i32 0, i32 0))
  store i32 %12, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %22, %0
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sdiv i32 %15, %16
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @cpumask_next(i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_affinity, i32 0, i32 0))
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %13

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %35, %25
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @cpumask_clear_cpu(i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_affinity, i32 0, i32 0))
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @cpumask_next(i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_affinity, i32 0, i32 0))
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %26

38:                                               ; preds = %26
  ret void
}

declare dso_local i32 @cpumask_clear(i32*) #1

declare dso_local i32 @cpumask_copy(i32*, i32) #1

declare dso_local i32 @cpumask_weight(i32*) #1

declare dso_local i32* @topology_sibling_cpumask(i32) #1

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local i32 @cpumask_next(i32, i32*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
