; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_dev_mgr.c_adf_get_vf_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_dev_mgr.c_adf_get_vf_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf_accel_dev*)* @adf_get_vf_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_get_vf_id(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca %struct.adf_accel_dev*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %2, align 8
  %3 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %4 = call %struct.TYPE_2__* @accel_to_pci_dev(%struct.adf_accel_dev* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @PCI_SLOT(i32 %6)
  %8 = sub nsw i32 %7, 1
  %9 = mul nsw i32 7, %8
  %10 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %11 = call %struct.TYPE_2__* @accel_to_pci_dev(%struct.adf_accel_dev* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PCI_FUNC(i32 %13)
  %15 = add nsw i32 %9, %14
  %16 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %2, align 8
  %17 = call %struct.TYPE_2__* @accel_to_pci_dev(%struct.adf_accel_dev* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PCI_SLOT(i32 %19)
  %21 = sub nsw i32 %20, 1
  %22 = add nsw i32 %15, %21
  ret i32 %22
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local %struct.TYPE_2__* @accel_to_pci_dev(%struct.adf_accel_dev*) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
