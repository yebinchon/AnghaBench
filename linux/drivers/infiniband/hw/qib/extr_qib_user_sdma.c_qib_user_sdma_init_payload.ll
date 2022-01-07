; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_init_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_init_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }
%struct.qib_user_sdma_queue = type { i32 }
%struct.qib_user_sdma_pkt = type { i64, i64, i32 }
%struct.iovec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, %struct.iovec*, i64, i32)* @qib_user_sdma_init_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_user_sdma_init_payload(%struct.qib_devdata* %0, %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_pkt* %2, %struct.iovec* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca %struct.qib_user_sdma_queue*, align 8
  %9 = alloca %struct.qib_user_sdma_pkt*, align 8
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %7, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %8, align 8
  store %struct.qib_user_sdma_pkt* %2, %struct.qib_user_sdma_pkt** %9, align 8
  store %struct.iovec* %3, %struct.iovec** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %9, align 8
  %15 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %9, align 8
  %18 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %9, align 8
  %24 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = icmp sge i32 %22, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %30 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %31 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %9, align 8
  %32 = load %struct.iovec*, %struct.iovec** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @qib_user_sdma_coalesce(%struct.qib_devdata* %29, %struct.qib_user_sdma_queue* %30, %struct.qib_user_sdma_pkt* %31, %struct.iovec* %32, i64 %33)
  store i32 %34, i32* %13, align 4
  br label %42

35:                                               ; preds = %21, %6
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %37 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %8, align 8
  %38 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %9, align 8
  %39 = load %struct.iovec*, %struct.iovec** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32 @qib_user_sdma_pin_pkt(%struct.qib_devdata* %36, %struct.qib_user_sdma_queue* %37, %struct.qib_user_sdma_pkt* %38, %struct.iovec* %39, i64 %40)
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %13, align 4
  ret i32 %43
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @qib_user_sdma_coalesce(%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, %struct.iovec*, i64) #1

declare dso_local i32 @qib_user_sdma_pin_pkt(%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, %struct.iovec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
