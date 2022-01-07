; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_bringup_serdes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_bringup_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i64, i32, i64*, i64, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i64 }

@EXTENDED_PSN = common dso_local global i32 0, align 4
@RCV_CTRL_RCV_EXTENDED_PSN_ENABLE_SMASK = common dso_local global i32 0, align 4
@HFI1_PORT_GUID_INDEX = common dso_local global i64 0, align 8
@OPA_LINKINIT_REASON_LINKUP = common dso_local global i32 0, align 4
@loopback = common dso_local global i64 0, align 8
@PORT_TYPE_QSFP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bringup_serdes(%struct.hfi1_pportdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %3, align 8
  %7 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %7, i32 0, i32 4
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  store %struct.hfi1_devdata* %9, %struct.hfi1_devdata** %4, align 8
  %10 = load i32, i32* @EXTENDED_PSN, align 4
  %11 = call i64 @HFI1_CAP_IS_KSET(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %15 = load i32, i32* @RCV_CTRL_RCV_EXTENDED_PSN_ENABLE_SMASK, align 4
  %16 = call i32 @add_rcvctrl(%struct.hfi1_devdata* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %19 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @HFI1_PORT_GUID_INDEX, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %17
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %28 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %33 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %36 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = sub nsw i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %31, %26
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %43 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @HFI1_PORT_GUID_INDEX, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %41, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %17
  %48 = load i32, i32* @OPA_LINKINIT_REASON_LINKUP, align 4
  %49 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %50 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %52 = call i32 @init_lcb(%struct.hfi1_devdata* %51)
  %53 = load i64, i64* @loopback, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %57 = call i32 @init_loopback(%struct.hfi1_devdata* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %81

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %65 = call i32 @get_port_type(%struct.hfi1_pportdata* %64)
  %66 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %67 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PORT_TYPE_QSFP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %73 = call i32 @set_qsfp_int_n(%struct.hfi1_pportdata* %72, i32 0)
  %74 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %75 = call i32 @wait_for_qsfp_init(%struct.hfi1_pportdata* %74)
  %76 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %77 = call i32 @set_qsfp_int_n(%struct.hfi1_pportdata* %76, i32 1)
  br label %78

78:                                               ; preds = %71, %63
  %79 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %80 = call i32 @try_start_link(%struct.hfi1_pportdata* %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %60
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i64 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local i32 @add_rcvctrl(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @init_lcb(%struct.hfi1_devdata*) #1

declare dso_local i32 @init_loopback(%struct.hfi1_devdata*) #1

declare dso_local i32 @get_port_type(%struct.hfi1_pportdata*) #1

declare dso_local i32 @set_qsfp_int_n(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @wait_for_qsfp_init(%struct.hfi1_pportdata*) #1

declare dso_local i32 @try_start_link(%struct.hfi1_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
