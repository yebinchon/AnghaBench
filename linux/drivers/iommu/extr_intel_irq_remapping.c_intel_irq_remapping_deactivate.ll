; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_irq_remapping_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_intel_irq_remapping_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_data = type { %struct.intel_ir_data* }
%struct.intel_ir_data = type { i32 }
%struct.irte = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_domain*, %struct.irq_data*)* @intel_irq_remapping_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_irq_remapping_deactivate(%struct.irq_domain* %0, %struct.irq_data* %1) #0 {
  %3 = alloca %struct.irq_domain*, align 8
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca %struct.intel_ir_data*, align 8
  %6 = alloca %struct.irte, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %3, align 8
  store %struct.irq_data* %1, %struct.irq_data** %4, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load %struct.intel_ir_data*, %struct.intel_ir_data** %8, align 8
  store %struct.intel_ir_data* %9, %struct.intel_ir_data** %5, align 8
  %10 = call i32 @memset(%struct.irte* %6, i32 0, i32 4)
  %11 = load %struct.intel_ir_data*, %struct.intel_ir_data** %5, align 8
  %12 = getelementptr inbounds %struct.intel_ir_data, %struct.intel_ir_data* %11, i32 0, i32 0
  %13 = call i32 @modify_irte(i32* %12, %struct.irte* %6)
  ret void
}

declare dso_local i32 @memset(%struct.irte*, i32, i32) #1

declare dso_local i32 @modify_irte(i32*, %struct.irte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
