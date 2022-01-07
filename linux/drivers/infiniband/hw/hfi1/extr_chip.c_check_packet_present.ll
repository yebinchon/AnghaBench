; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_check_packet_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_check_packet_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i64, i64, i32, i32, i32 }

@RCV_HDR_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ctxtdata*)* @check_packet_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_packet_present(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  %6 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %15 = call i32 @get_rhf_addr(%struct.hfi1_ctxtdata* %14)
  %16 = call i32 @rhf_to_cpu(i32 %15)
  %17 = call i64 @rhf_rcv_seq(i32 %16)
  %18 = icmp eq i64 %13, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  br label %28

20:                                               ; preds = %1
  %21 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %22 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %25 = call i64 @get_rcvhdrtail(%struct.hfi1_ctxtdata* %24)
  %26 = icmp ne i64 %23, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %20, %10
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %47

32:                                               ; preds = %28
  %33 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %34 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %37 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RCV_HDR_TAIL, align 4
  %40 = call i64 @read_uctxt_csr(i32 %35, i32 %38, i32 %39)
  store i64 %40, i64* %4, align 8
  %41 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %42 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %32, %31
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @rhf_rcv_seq(i32) #1

declare dso_local i32 @rhf_to_cpu(i32) #1

declare dso_local i32 @get_rhf_addr(%struct.hfi1_ctxtdata*) #1

declare dso_local i64 @get_rcvhdrtail(%struct.hfi1_ctxtdata*) #1

declare dso_local i64 @read_uctxt_csr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
