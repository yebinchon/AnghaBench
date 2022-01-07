; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_set_armed_to_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_set_armed_to_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.work_struct }
%struct.work_struct = type { i32 }
%struct.hfi1_packet = type { i32, i32, i32 }
%struct.hfi1_devdata = type { i32 }
%struct.ib_header = type { i32 }
%struct.hfi1_16b_header = type { i32 }

@SC15_PACKET = common dso_local global i64 0, align 8
@RHF_RCV_TYPE_IB = common dso_local global i64 0, align 8
@RHF_RCV_TYPE_BYPASS = common dso_local global i64 0, align 8
@IB_PORT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected link state %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ctxtdata*, %struct.hfi1_packet*, %struct.hfi1_devdata*)* @set_armed_to_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_armed_to_active(%struct.hfi1_ctxtdata* %0, %struct.hfi1_packet* %1, %struct.hfi1_devdata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  %6 = alloca %struct.hfi1_packet*, align 8
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca %struct.work_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ib_header*, align 8
  %12 = alloca %struct.hfi1_16b_header*, align 8
  %13 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %5, align 8
  store %struct.hfi1_packet* %1, %struct.hfi1_packet** %6, align 8
  store %struct.hfi1_devdata* %2, %struct.hfi1_devdata** %7, align 8
  %14 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %15 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store %struct.work_struct* %17, %struct.work_struct** %8, align 8
  %18 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %19 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @rhf_rcv_type(i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* @SC15_PACKET, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @RHF_RCV_TYPE_IB, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %3
  %27 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %28 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %31 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.ib_header* @hfi1_get_msgheader(i32 %29, i32 %32)
  store %struct.ib_header* %33, %struct.ib_header** %11, align 8
  %34 = load %struct.ib_header*, %struct.ib_header** %11, align 8
  %35 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %36 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @hfi1_9B_get_sc5(%struct.ib_header* %34, i32 %37)
  store i64 %38, i64* %10, align 8
  br label %54

39:                                               ; preds = %3
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @RHF_RCV_TYPE_BYPASS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %45 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hfi1_packet*, %struct.hfi1_packet** %6, align 8
  %48 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.hfi1_16b_header* @hfi1_get_16B_header(i32 %46, i32 %49)
  store %struct.hfi1_16b_header* %50, %struct.hfi1_16b_header** %12, align 8
  %51 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %12, align 8
  %52 = call i64 @hfi1_16B_get_sc(%struct.hfi1_16b_header* %51)
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %43, %39
  br label %54

54:                                               ; preds = %53, %26
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @SC15_PACKET, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %60 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 @driver_lstate(%struct.TYPE_2__* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @IB_PORT_ACTIVE, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @opa_lstate_name(i32 %68)
  %70 = call i32 @dd_dev_info(%struct.hfi1_devdata* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 0, i32* %4, align 4
  br label %80

71:                                               ; preds = %58
  %72 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %73 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.work_struct*, %struct.work_struct** %8, align 8
  %78 = call i32 @queue_work(i32 %76, %struct.work_struct* %77)
  store i32 1, i32* %4, align 4
  br label %80

79:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %71, %66
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @rhf_rcv_type(i32) #1

declare dso_local %struct.ib_header* @hfi1_get_msgheader(i32, i32) #1

declare dso_local i64 @hfi1_9B_get_sc5(%struct.ib_header*, i32) #1

declare dso_local %struct.hfi1_16b_header* @hfi1_get_16B_header(i32, i32) #1

declare dso_local i64 @hfi1_16B_get_sc(%struct.hfi1_16b_header*) #1

declare dso_local i32 @driver_lstate(%struct.TYPE_2__*) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @opa_lstate_name(i32) #1

declare dso_local i32 @queue_work(i32, %struct.work_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
