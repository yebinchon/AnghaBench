; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_port_cntr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_write_port_cntr.c"
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
define dso_local i32 @write_port_cntr(%struct.hfi1_pportdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfi1_pportdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cntr_entry*, align 8
  %11 = alloca i32*, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.cntr_entry*, %struct.cntr_entry** @port_cntrs, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %12, i64 %14
  store %struct.cntr_entry* %15, %struct.cntr_entry** %10, align 8
  %16 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %17 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.cntr_entry*, %struct.cntr_entry** %10, align 8
  %20 = getelementptr inbounds %struct.cntr_entry, %struct.cntr_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32* %23, i32** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @CNTR_INVALID_VL, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32* %31, i32** %11, align 8
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @C_RCV_HDR_OVF_FIRST, align 4
  %35 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %36 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %34, %39
  %41 = icmp sge i32 %33, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @C_RCV_HDR_OVF_LAST, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %57

47:                                               ; preds = %42, %32
  %48 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %49 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load %struct.cntr_entry*, %struct.cntr_entry** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @write_dev_port_cntr(%struct.TYPE_2__* %50, %struct.cntr_entry* %51, i32* %52, %struct.hfi1_pportdata* %53, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %47, %46
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @write_dev_port_cntr(%struct.TYPE_2__*, %struct.cntr_entry*, i32*, %struct.hfi1_pportdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
