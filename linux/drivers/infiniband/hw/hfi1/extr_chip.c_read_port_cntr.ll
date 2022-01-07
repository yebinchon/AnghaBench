; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_port_cntr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_read_port_cntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cntr_entry = type { i32 }
%struct.hfi1_pportdata = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@port_cntrs = common dso_local global %struct.cntr_entry* null, align 8
@CNTR_INVALID_VL = common dso_local global i32 0, align 4
@C_RCV_HDR_OVF_FIRST = common dso_local global i32 0, align 4
@C_RCV_HDR_OVF_LAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_port_cntr(%struct.hfi1_pportdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cntr_entry*, align 8
  %9 = alloca i32*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cntr_entry*, %struct.cntr_entry** @port_cntrs, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %10, i64 %12
  store %struct.cntr_entry* %13, %struct.cntr_entry** %8, align 8
  %14 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %15 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.cntr_entry*, %struct.cntr_entry** %8, align 8
  %18 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CNTR_INVALID_VL, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %25, %3
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @C_RCV_HDR_OVF_FIRST, align 4
  %33 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %34 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %32, %37
  %39 = icmp sge i32 %31, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @C_RCV_HDR_OVF_LAST, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %54

45:                                               ; preds = %40, %30
  %46 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %47 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load %struct.cntr_entry*, %struct.cntr_entry** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @read_dev_port_cntr(%struct.TYPE_2__* %48, %struct.cntr_entry* %49, i32* %50, %struct.hfi1_pportdata* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %45, %44
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @read_dev_port_cntr(%struct.TYPE_2__*, %struct.cntr_entry*, i32*, %struct.hfi1_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
