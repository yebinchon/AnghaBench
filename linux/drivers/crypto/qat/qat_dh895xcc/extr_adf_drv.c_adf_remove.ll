; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_dh895xcc/extr_adf_drv.c_adf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_dh895xcc/extr_adf_drv.c_adf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.adf_accel_dev = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"QAT: Driver removal failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @adf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adf_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.adf_accel_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.adf_accel_dev* @adf_devmgr_pci_to_accel_dev(%struct.pci_dev* %4)
  store %struct.adf_accel_dev* %5, %struct.adf_accel_dev** %3, align 8
  %6 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %7 = icmp ne %struct.adf_accel_dev* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %12 = call i32 @adf_dev_stop(%struct.adf_accel_dev* %11)
  %13 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %14 = call i32 @adf_dev_shutdown(%struct.adf_accel_dev* %13)
  %15 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %16 = call i32 @adf_disable_aer(%struct.adf_accel_dev* %15)
  %17 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %18 = call i32 @adf_cleanup_accel(%struct.adf_accel_dev* %17)
  %19 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %20 = call i32 @adf_cleanup_pci_dev(%struct.adf_accel_dev* %19)
  %21 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %22 = call i32 @kfree(%struct.adf_accel_dev* %21)
  br label %23

23:                                               ; preds = %10, %8
  ret void
}

declare dso_local %struct.adf_accel_dev* @adf_devmgr_pci_to_accel_dev(%struct.pci_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @adf_dev_stop(%struct.adf_accel_dev*) #1

declare dso_local i32 @adf_dev_shutdown(%struct.adf_accel_dev*) #1

declare dso_local i32 @adf_disable_aer(%struct.adf_accel_dev*) #1

declare dso_local i32 @adf_cleanup_accel(%struct.adf_accel_dev*) #1

declare dso_local i32 @adf_cleanup_pci_dev(%struct.adf_accel_dev*) #1

declare dso_local i32 @kfree(%struct.adf_accel_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
