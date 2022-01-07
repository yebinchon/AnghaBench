; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cpt_vf = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid CPT-VF device\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"PF not responding to DOWN msg\00", align 1
@CPT_VF_INT_VEC_E_DONE = common dso_local global i32 0, align 4
@CPT_VF_INT_VEC_E_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cptvf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cptvf_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.cpt_vf*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.cpt_vf* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.cpt_vf* %5, %struct.cpt_vf** %3, align 8
  %6 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %7 = icmp ne %struct.cpt_vf* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = call i32 @dev_err(i32* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %14 = call i64 @cptvf_send_vf_down(%struct.cpt_vf* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %50

20:                                               ; preds = %12
  %21 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %22 = load i32, i32* @CPT_VF_INT_VEC_E_DONE, align 4
  %23 = call i32 @cptvf_free_irq_affinity(%struct.cpt_vf* %21, i32 %22)
  %24 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %25 = load i32, i32* @CPT_VF_INT_VEC_E_MISC, align 4
  %26 = call i32 @cptvf_free_irq_affinity(%struct.cpt_vf* %24, i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = load i32, i32* @CPT_VF_INT_VEC_E_DONE, align 4
  %29 = call i32 @pci_irq_vector(%struct.pci_dev* %27, i32 %28)
  %30 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.cpt_vf* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = load i32, i32* @CPT_VF_INT_VEC_E_MISC, align 4
  %34 = call i32 @pci_irq_vector(%struct.pci_dev* %32, i32 %33)
  %35 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.cpt_vf* %35)
  %37 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %38 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_free_irq_vectors(i32 %39)
  %41 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %42 = call i32 @cptvf_sw_cleanup(%struct.cpt_vf* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i32 @pci_set_drvdata(%struct.pci_dev* %43, i32* null)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %46 = call i32 @pci_release_regions(%struct.pci_dev* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_disable_device(%struct.pci_dev* %47)
  %49 = call i32 (...) @cvm_crypto_exit()
  br label %50

50:                                               ; preds = %8, %20, %16
  ret void
}

declare dso_local %struct.cpt_vf* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @cptvf_send_vf_down(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_free_irq_affinity(%struct.cpt_vf*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.cpt_vf*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

declare dso_local i32 @cptvf_sw_cleanup(%struct.cpt_vf*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @cvm_crypto_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
