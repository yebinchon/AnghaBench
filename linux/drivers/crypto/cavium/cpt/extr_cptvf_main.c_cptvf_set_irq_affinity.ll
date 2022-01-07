; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_set_irq_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_set_irq_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32, i32*, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Allocation failed for affinity_mask for VF %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_vf*, i32)* @cptvf_set_irq_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cptvf_set_irq_affinity(%struct.cpt_vf* %0, i32 %1) #0 {
  %3 = alloca %struct.cpt_vf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.cpt_vf* %0, %struct.cpt_vf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %8 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %7, i32 0, i32 3
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %11 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @zalloc_cpumask_var(i32* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %23 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %56

26:                                               ; preds = %2
  %27 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %28 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (...) @num_online_cpus()
  %31 = srem i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %34 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cpumask_local_spread(i32 %32, i32 %35)
  %37 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %38 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpumask_set_cpu(i32 %36, i32 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @pci_irq_vector(%struct.pci_dev* %45, i32 %46)
  %48 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %49 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @irq_set_affinity_hint(i32 %47, i32 %54)
  br label %56

56:                                               ; preds = %26, %19
  ret void
}

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
