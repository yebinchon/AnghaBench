; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_topology.c_kfd_cpumask_to_apic_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_topology.c_kfd_cpumask_to_apic_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@cpu_none_mask = common dso_local global %struct.cpumask* null, align 8
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpumask*)* @kfd_cpumask_to_apic_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_cpumask_to_apic_id(%struct.cpumask* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpumask*, align 8
  %4 = alloca i32, align 4
  store %struct.cpumask* %0, %struct.cpumask** %3, align 8
  %5 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %6 = icmp ne %struct.cpumask* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %9 = load %struct.cpumask*, %struct.cpumask** @cpu_none_mask, align 8
  %10 = icmp eq %struct.cpumask* %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store i32 -1, i32* %2, align 4
  br label %21

12:                                               ; preds = %7
  %13 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %14 = call i32 @cpumask_first(%struct.cpumask* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @nr_cpu_ids, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %18, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
