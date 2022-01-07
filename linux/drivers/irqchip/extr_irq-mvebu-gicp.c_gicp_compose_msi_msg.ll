; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-gicp.c_gicp_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-gicp.c_gicp_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, %struct.mvebu_gicp* }
%struct.mvebu_gicp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.msi_msg = type { i8*, i8*, i32 }

@GICP_SETSPI_NSR_OFFSET = common dso_local global i64 0, align 8
@GICP_CLRSPI_NSR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @gicp_compose_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gicp_compose_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.mvebu_gicp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 1
  %10 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %9, align 8
  store %struct.mvebu_gicp* %10, %struct.mvebu_gicp** %5, align 8
  %11 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %5, align 8
  %12 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GICP_SETSPI_NSR_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.mvebu_gicp*, %struct.mvebu_gicp** %5, align 8
  %19 = getelementptr inbounds %struct.mvebu_gicp, %struct.mvebu_gicp* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GICP_CLRSPI_NSR_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %26 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %29 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %28, i64 0
  %30 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i8* @lower_32_bits(i64 %31)
  %33 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %34 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %33, i64 0
  %35 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %34, i32 0, i32 1
  store i8* %32, i8** %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i8* @upper_32_bits(i64 %36)
  %38 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %39 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %38, i64 0
  %40 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %42 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %45 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %44, i64 1
  %46 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i8* @lower_32_bits(i64 %47)
  %49 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %50 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %49, i64 1
  %51 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i8* @upper_32_bits(i64 %52)
  %54 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %55 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %54, i64 1
  %56 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  ret void
}

declare dso_local i8* @lower_32_bits(i64) #1

declare dso_local i8* @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
