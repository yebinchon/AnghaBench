; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_mbox_msi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_mbox_msi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.flexrm_mbox = type { %struct.flexrm_ring* }
%struct.flexrm_ring = type { i64 }

@RING_MSI_ADDR_LS = common dso_local global i64 0, align 8
@RING_MSI_ADDR_MS = common dso_local global i64 0, align 8
@RING_MSI_DATA_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_desc*, %struct.msi_msg*)* @flexrm_mbox_msi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexrm_mbox_msi_write(%struct.msi_desc* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.msi_desc*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.flexrm_mbox*, align 8
  %7 = alloca %struct.flexrm_ring*, align 8
  store %struct.msi_desc* %0, %struct.msi_desc** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %8 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %9 = call %struct.device* @msi_desc_to_dev(%struct.msi_desc* %8)
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.flexrm_mbox* @dev_get_drvdata(%struct.device* %10)
  store %struct.flexrm_mbox* %11, %struct.flexrm_mbox** %6, align 8
  %12 = load %struct.flexrm_mbox*, %struct.flexrm_mbox** %6, align 8
  %13 = getelementptr inbounds %struct.flexrm_mbox, %struct.flexrm_mbox* %12, i32 0, i32 0
  %14 = load %struct.flexrm_ring*, %struct.flexrm_ring** %13, align 8
  %15 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %16 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %14, i64 %18
  store %struct.flexrm_ring* %19, %struct.flexrm_ring** %7, align 8
  %20 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %21 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.flexrm_ring*, %struct.flexrm_ring** %7, align 8
  %24 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RING_MSI_ADDR_LS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i32 %22, i64 %27)
  %29 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %30 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.flexrm_ring*, %struct.flexrm_ring** %7, align 8
  %33 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RING_MSI_ADDR_MS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel_relaxed(i32 %31, i64 %36)
  %38 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %39 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.flexrm_ring*, %struct.flexrm_ring** %7, align 8
  %42 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RING_MSI_DATA_VALUE, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel_relaxed(i32 %40, i64 %45)
  ret void
}

declare dso_local %struct.device* @msi_desc_to_dev(%struct.msi_desc*) #1

declare dso_local %struct.flexrm_mbox* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
