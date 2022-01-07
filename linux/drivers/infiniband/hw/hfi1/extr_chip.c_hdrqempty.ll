; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hdrqempty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hdrqempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, i32, i64 }

@RCV_HDR_HEAD = common dso_local global i32 0, align 4
@RCV_HDR_HEAD_HEAD_SMASK = common dso_local global i32 0, align 4
@RCV_HDR_HEAD_HEAD_SHIFT = common dso_local global i32 0, align 4
@RCV_HDR_TAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdrqempty(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca %struct.hfi1_ctxtdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %2, align 8
  %5 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %9 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RCV_HDR_HEAD, align 4
  %12 = call i32 @read_uctxt_csr(i32 %7, i32 %10, i32 %11)
  %13 = load i32, i32* @RCV_HDR_HEAD_HEAD_SMASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @RCV_HDR_HEAD_HEAD_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %18 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %23 = call i32 @get_rcvhdrtail(%struct.hfi1_ctxtdata* %22)
  store i32 %23, i32* %4, align 4
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %26 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %29 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RCV_HDR_TAIL, align 4
  %32 = call i32 @read_uctxt_csr(i32 %27, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %24, %21
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @read_uctxt_csr(i32, i32, i32) #1

declare dso_local i32 @get_rcvhdrtail(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
