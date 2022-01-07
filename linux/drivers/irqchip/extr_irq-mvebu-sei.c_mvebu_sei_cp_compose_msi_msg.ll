; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_cp_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-sei.c_mvebu_sei_cp_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64, %struct.mvebu_sei* }
%struct.mvebu_sei = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.msi_msg = type { i32, i32, i64 }

@GICP_SET_SEI_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @mvebu_sei_cp_compose_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_sei_cp_compose_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.mvebu_sei*, align 8
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 1
  %9 = load %struct.mvebu_sei*, %struct.mvebu_sei** %8, align 8
  store %struct.mvebu_sei* %9, %struct.mvebu_sei** %5, align 8
  %10 = load %struct.mvebu_sei*, %struct.mvebu_sei** %5, align 8
  %11 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GICP_SET_SEI_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %6, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mvebu_sei*, %struct.mvebu_sei** %5, align 8
  %21 = getelementptr inbounds %struct.mvebu_sei, %struct.mvebu_sei* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %19, %25
  %27 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %28 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @lower_32_bits(i64 %29)
  %31 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %32 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @upper_32_bits(i64 %33)
  %35 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %36 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  ret void
}

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
