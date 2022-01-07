; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_free_mboxes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_free_mboxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_ipi_pdata = type { i32, %struct.zynqmp_ipi_mbox* }
%struct.zynqmp_ipi_mbox = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_ipi_pdata*)* @zynqmp_ipi_free_mboxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_ipi_free_mboxes(%struct.zynqmp_ipi_pdata* %0) #0 {
  %2 = alloca %struct.zynqmp_ipi_pdata*, align 8
  %3 = alloca %struct.zynqmp_ipi_mbox*, align 8
  %4 = alloca i32, align 4
  store %struct.zynqmp_ipi_pdata* %0, %struct.zynqmp_ipi_pdata** %2, align 8
  %5 = load %struct.zynqmp_ipi_pdata*, %struct.zynqmp_ipi_pdata** %2, align 8
  %6 = getelementptr inbounds %struct.zynqmp_ipi_pdata, %struct.zynqmp_ipi_pdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load %struct.zynqmp_ipi_pdata*, %struct.zynqmp_ipi_pdata** %2, align 8
  %13 = getelementptr inbounds %struct.zynqmp_ipi_pdata, %struct.zynqmp_ipi_pdata* %12, i32 0, i32 1
  %14 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %14, i64 %16
  store %struct.zynqmp_ipi_mbox* %17, %struct.zynqmp_ipi_mbox** %3, align 8
  %18 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %3, align 8
  %19 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %11
  %24 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %3, align 8
  %25 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %24, i32 0, i32 1
  %26 = call i32 @mbox_controller_unregister(i32* %25)
  %27 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %3, align 8
  %28 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %27, i32 0, i32 0
  %29 = call i32 @device_unregister(%struct.TYPE_2__* %28)
  br label %30

30:                                               ; preds = %23, %11
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %8

34:                                               ; preds = %8
  ret void
}

declare dso_local i32 @mbox_controller_unregister(i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
