; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_unregister_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_unregister_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_device*)* @cpt_unregister_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpt_unregister_interrupts(%struct.cpt_device* %0) #0 {
  %2 = alloca %struct.cpt_device*, align 8
  store %struct.cpt_device* %0, %struct.cpt_device** %2, align 8
  %3 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %4 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @CPT_PF_INT_VEC_E_MBOXX(i32 0)
  %7 = call i32 @pci_irq_vector(i32 %5, i32 %6)
  %8 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %9 = call i32 @free_irq(i32 %7, %struct.cpt_device* %8)
  %10 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %11 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_disable_msix(i32 %12)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.cpt_device*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @CPT_PF_INT_VEC_E_MBOXX(i32) #1

declare dso_local i32 @pci_disable_msix(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
