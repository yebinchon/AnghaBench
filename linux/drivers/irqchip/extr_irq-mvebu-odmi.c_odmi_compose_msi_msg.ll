; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-odmi.c_odmi_compose_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mvebu-odmi.c_odmi_compose_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odmi_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.irq_data = type { i32 }
%struct.msi_msg = type { i32, i32, i32 }

@odmis_count = common dso_local global i32 0, align 4
@NODMIS_PER_FRAME = common dso_local global i32 0, align 4
@odmis = common dso_local global %struct.odmi_data* null, align 8
@NODMIS_SHIFT = common dso_local global i64 0, align 8
@NODMIS_MASK = common dso_local global i32 0, align 4
@GICP_ODMIN_SET = common dso_local global i64 0, align 8
@GICP_ODMI_INT_NUM_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, %struct.msi_msg*)* @odmi_compose_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odmi_compose_msi_msg(%struct.irq_data* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca %struct.odmi_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @odmis_count, align 4
  %12 = load i32, i32* @NODMIS_PER_FRAME, align 4
  %13 = mul nsw i32 %11, %12
  %14 = icmp sge i32 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.odmi_data*, %struct.odmi_data** @odmis, align 8
  %21 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @NODMIS_SHIFT, align 8
  %25 = trunc i64 %24 to i32
  %26 = ashr i32 %23, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.odmi_data, %struct.odmi_data* %20, i64 %27
  store %struct.odmi_data* %28, %struct.odmi_data** %5, align 8
  %29 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %30 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NODMIS_MASK, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.odmi_data*, %struct.odmi_data** %5, align 8
  %35 = getelementptr inbounds %struct.odmi_data, %struct.odmi_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GICP_ODMIN_SET, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @upper_32_bits(i64 %40)
  %42 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %43 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @lower_32_bits(i64 %44)
  %46 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %47 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @GICP_ODMI_INT_NUM_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %52 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
