; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_fw_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_fw_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_ipi_mbox = type { i64, %struct.zynqmp_ipi_pdata* }
%struct.zynqmp_ipi_pdata = type { i64, i64 }
%struct.arm_smccc_res = type { i32 }

@USE_SMC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_ipi_mbox*, i64, i64, %struct.arm_smccc_res*)* @zynqmp_ipi_fw_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_ipi_fw_call(%struct.zynqmp_ipi_mbox* %0, i64 %1, i64 %2, %struct.arm_smccc_res* %3) #0 {
  %5 = alloca %struct.zynqmp_ipi_mbox*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.arm_smccc_res*, align 8
  %9 = alloca %struct.zynqmp_ipi_pdata*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.zynqmp_ipi_mbox* %0, %struct.zynqmp_ipi_mbox** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.arm_smccc_res* %3, %struct.arm_smccc_res** %8, align 8
  %12 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %5, align 8
  %13 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %12, i32 0, i32 1
  %14 = load %struct.zynqmp_ipi_pdata*, %struct.zynqmp_ipi_pdata** %13, align 8
  store %struct.zynqmp_ipi_pdata* %14, %struct.zynqmp_ipi_pdata** %9, align 8
  %15 = load %struct.zynqmp_ipi_pdata*, %struct.zynqmp_ipi_pdata** %9, align 8
  %16 = getelementptr inbounds %struct.zynqmp_ipi_pdata, %struct.zynqmp_ipi_pdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.zynqmp_ipi_mbox*, %struct.zynqmp_ipi_mbox** %5, align 8
  %19 = getelementptr inbounds %struct.zynqmp_ipi_mbox, %struct.zynqmp_ipi_mbox* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.zynqmp_ipi_pdata*, %struct.zynqmp_ipi_pdata** %9, align 8
  %22 = getelementptr inbounds %struct.zynqmp_ipi_pdata, %struct.zynqmp_ipi_pdata* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USE_SMC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %8, align 8
  %32 = call i32 @arm_smccc_smc(i64 %27, i64 %28, i64 %29, i64 %30, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %31)
  br label %40

33:                                               ; preds = %4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.arm_smccc_res*, %struct.arm_smccc_res** %8, align 8
  %39 = call i32 @arm_smccc_hvc(i64 %34, i64 %35, i64 %36, i64 %37, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %38)
  br label %40

40:                                               ; preds = %33, %26
  ret void
}

declare dso_local i32 @arm_smccc_smc(i64, i64, i64, i64, i32, i32, i32, i32, %struct.arm_smccc_res*) #1

declare dso_local i32 @arm_smccc_hvc(i64, i64, i64, i64, i32, i32, i32, i32, %struct.arm_smccc_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
