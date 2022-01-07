; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_affinity.c_node_affinity_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_affinity.c_node_affinity_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_device_id = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.pci_dev = type { i32 }

@hfi1_pci_tbl = common dso_local global %struct.pci_device_id* null, align 8
@node_affinity = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cpu_online_mask = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hfi1_per_node_cntr = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"HFI: Invalid PCI NUMA node. Performance may be affected\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"HFI: System BIOS may need to be upgraded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @node_affinity_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_device_id*, %struct.pci_device_id** @hfi1_pci_tbl, align 8
  store %struct.pci_device_id* %5, %struct.pci_device_id** %4, align 8
  %6 = call i32 @cpumask_clear(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_affinity, i32 0, i32 3, i32 2))
  %7 = load i32, i32* @cpu_online_mask, align 4
  %8 = call i32 @cpumask_copy(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_affinity, i32 0, i32 3, i32 0), i32 %7)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_affinity, i32 0, i32 3, i32 1), align 8
  %9 = call i32 @cpumask_first(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_affinity, i32 0, i32 3, i32 0))
  %10 = call i32 @topology_sibling_cpumask(i32 %9)
  %11 = call i32 @cpumask_weight(i32 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_affinity, i32 0, i32 4), align 8
  %12 = call i32 (...) @num_possible_nodes()
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_affinity, i32 0, i32 0), align 8
  %13 = call i32 (...) @num_online_nodes()
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_affinity, i32 0, i32 2), align 8
  %14 = call i32 (...) @num_online_cpus()
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_affinity, i32 0, i32 1), align 4
  %15 = call i32 (...) @init_real_cpu_mask()
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_affinity, i32 0, i32 0), align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kcalloc(i32 %16, i32 4, i32 %17)
  store i32* %18, i32** @hfi1_per_node_cntr, align 8
  %19 = load i32*, i32** @hfi1_per_node_cntr, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %0
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %1, align 4
  br label %76

24:                                               ; preds = %0
  br label %25

25:                                               ; preds = %56, %24
  %26 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %27 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  store %struct.pci_dev* null, %struct.pci_dev** %3, align 8
  br label %31

31:                                               ; preds = %49, %30
  %32 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %33 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %36 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = call %struct.pci_dev* @pci_get_device(i64 %34, i32 %37, %struct.pci_dev* %38)
  store %struct.pci_dev* %39, %struct.pci_dev** %3, align 8
  %40 = icmp ne %struct.pci_dev* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %31
  %42 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pcibus_to_node(i32 %44)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %60

49:                                               ; preds = %41
  %50 = load i32*, i32** @hfi1_per_node_cntr, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %31

56:                                               ; preds = %31
  %57 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %58 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %57, i32 1
  store %struct.pci_device_id* %58, %struct.pci_device_id** %4, align 8
  br label %25

59:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %76

60:                                               ; preds = %48
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %72, %60
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @node_affinity, i32 0, i32 0), align 8
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32*, i32** @hfi1_per_node_cntr, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %63

75:                                               ; preds = %63
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %75, %59, %21
  %77 = load i32, i32* %1, align 4
  ret i32 %77
}

declare dso_local i32 @cpumask_clear(i32*) #1

declare dso_local i32 @cpumask_copy(i32*, i32) #1

declare dso_local i32 @cpumask_weight(i32) #1

declare dso_local i32 @topology_sibling_cpumask(i32) #1

declare dso_local i32 @cpumask_first(i32*) #1

declare dso_local i32 @num_possible_nodes(...) #1

declare dso_local i32 @num_online_nodes(...) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @init_real_cpu_mask(...) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i64, i32, %struct.pci_dev*) #1

declare dso_local i32 @pcibus_to_node(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
