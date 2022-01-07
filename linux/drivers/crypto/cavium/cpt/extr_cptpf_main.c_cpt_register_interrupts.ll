; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_register_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_register_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@CPT_PF_MSIX_VECTORS = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Request for #%d msix vectors failed\0A\00", align 1
@cpt_mbx0_intr_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"CPT Mbox0\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Request irq failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_device*)* @cpt_register_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpt_register_interrupts(%struct.cpt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpt_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.cpt_device* %0, %struct.cpt_device** %3, align 8
  %6 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %7 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %11 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* @CPT_PF_MSIX_VECTORS, align 4
  %14 = load i32, i32* @CPT_PF_MSIX_VECTORS, align 4
  %15 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %16 = call i32 @pci_alloc_irq_vectors(%struct.TYPE_4__* %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %21 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* @CPT_PF_MSIX_VECTORS, align 4
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %1
  %28 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %29 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 @CPT_PF_INT_VEC_E_MBOXX(i32 0)
  %32 = call i32 @pci_irq_vector(%struct.TYPE_4__* %30, i32 %31)
  %33 = load i32, i32* @cpt_mbx0_intr_handler, align 4
  %34 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %35 = call i32 @request_irq(i32 %32, i32 %33, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.cpt_device* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %42

39:                                               ; preds = %27
  %40 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %41 = call i32 @cpt_enable_mbox_interrupts(%struct.cpt_device* %40)
  store i32 0, i32* %2, align 4
  br label %50

42:                                               ; preds = %38
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.cpt_device*, %struct.cpt_device** %3, align 8
  %46 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @pci_disable_msix(%struct.TYPE_4__* %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %39, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @pci_alloc_irq_vectors(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.cpt_device*) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @CPT_PF_INT_VEC_E_MBOXX(i32) #1

declare dso_local i32 @cpt_enable_mbox_interrupts(%struct.cpt_device*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
