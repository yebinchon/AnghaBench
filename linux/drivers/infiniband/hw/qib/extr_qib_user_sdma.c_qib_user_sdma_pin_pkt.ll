; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_pin_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_pin_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qib_user_sdma_queue = type { i32 }
%struct.qib_user_sdma_pkt = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.iovec = type { i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, %struct.iovec*, i64)* @qib_user_sdma_pin_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_user_sdma_pin_pkt(%struct.qib_devdata* %0, %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_pkt* %2, %struct.iovec* %3, i64 %4) #0 {
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca %struct.qib_user_sdma_queue*, align 8
  %8 = alloca %struct.qib_user_sdma_pkt*, align 8
  %9 = alloca %struct.iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %6, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %7, align 8
  store %struct.qib_user_sdma_pkt* %2, %struct.qib_user_sdma_pkt** %8, align 8
  store %struct.iovec* %3, %struct.iovec** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %44, %5
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load %struct.iovec*, %struct.iovec** %9, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %20, i64 %21
  %23 = call i32 @qib_user_sdma_num_pages(%struct.iovec* %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.iovec*, %struct.iovec** %9, align 8
  %25 = load i64, i64* %12, align 8
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i64 %25
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %30 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %7, align 8
  %31 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load %struct.iovec*, %struct.iovec** %9, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i64 %34
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @qib_user_sdma_pin_pages(%struct.qib_devdata* %29, %struct.qib_user_sdma_queue* %30, %struct.qib_user_sdma_pkt* %31, i64 %32, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %19
  br label %48

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %12, align 8
  br label %15

47:                                               ; preds = %15
  br label %105

48:                                               ; preds = %42
  store i64 1, i64* %12, align 8
  br label %49

49:                                               ; preds = %64, %48
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %52 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %7, align 8
  %61 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @qib_user_sdma_free_pkt_frag(i32* %59, %struct.qib_user_sdma_queue* %60, %struct.qib_user_sdma_pkt* %61, i64 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %12, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %12, align 8
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %69 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %67
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %81 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %87 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DMA_TO_DEVICE, align 4
  %93 = call i32 @dma_unmap_single(i32* %79, i64 %85, i32 %91, i32 %92)
  %94 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %95 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %8, align 8
  %100 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %75, %67
  br label %105

105:                                              ; preds = %104, %47
  %106 = load i32, i32* %11, align 4
  ret i32 %106
}

declare dso_local i32 @qib_user_sdma_num_pages(%struct.iovec*) #1

declare dso_local i32 @qib_user_sdma_pin_pages(%struct.qib_devdata*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, i64, i32, i32) #1

declare dso_local i32 @qib_user_sdma_free_pkt_frag(i32*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
