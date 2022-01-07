; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_create_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_hal.c_cxio_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxio_rdev = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32 (%struct.TYPE_6__*, i32, %struct.rdma_cq_setup*)* }
%struct.rdma_cq_setup = type { i64, i32, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.t3_cq = type { i64, i64, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@T3A = common dso_local global i64 0, align 8
@RDMA_CQ_SETUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxio_create_cq(%struct.cxio_rdev* %0, %struct.t3_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxio_rdev*, align 8
  %6 = alloca %struct.t3_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rdma_cq_setup, align 8
  %9 = alloca i32, align 4
  store %struct.cxio_rdev* %0, %struct.cxio_rdev** %5, align 8
  store %struct.t3_cq* %1, %struct.t3_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %11 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = shl i64 1, %12
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load %struct.cxio_rdev*, %struct.cxio_rdev** %5, align 8
  %19 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @cxio_hal_get_cqid(i32 %20)
  %22 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %23 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %25 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %116

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @kzalloc(i32 %35, i32 %36)
  %38 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %39 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %41 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %116

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.cxio_rdev*, %struct.cxio_rdev** %5, align 8
  %50 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %56 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %55, i32 0, i32 1
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @dma_alloc_coherent(i32* %53, i32 %54, i64* %56, i32 %57)
  %59 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %60 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %62 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %48
  %66 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %67 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @kfree(i32 %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %116

72:                                               ; preds = %48
  %73 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %74 = load i32, i32* @mapping, align 4
  %75 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %76 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @dma_unmap_addr_set(%struct.t3_cq* %73, i32 %74, i64 %77)
  %79 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %80 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %8, i32 0, i32 5
  store i64 %81, i64* %82, align 8
  %83 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %84 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %8, i32 0, i32 4
  store i64 %85, i64* %86, align 8
  %87 = load %struct.t3_cq*, %struct.t3_cq** %6, align 8
  %88 = getelementptr inbounds %struct.t3_cq, %struct.t3_cq* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = shl i64 1, %89
  %91 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %8, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %8, i32 0, i32 1
  store i32 65535, i32* %92, align 8
  %93 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %8, i32 0, i32 2
  store i32 1, i32* %93, align 4
  %94 = load %struct.cxio_rdev*, %struct.cxio_rdev** %5, align 8
  %95 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @T3A, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %72
  %102 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %8, i32 0, i32 3
  store i32 0, i32* %102, align 8
  br label %105

103:                                              ; preds = %72
  %104 = getelementptr inbounds %struct.rdma_cq_setup, %struct.rdma_cq_setup* %8, i32 0, i32 3
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %103, %101
  %106 = load %struct.cxio_rdev*, %struct.cxio_rdev** %5, align 8
  %107 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32 (%struct.TYPE_6__*, i32, %struct.rdma_cq_setup*)*, i32 (%struct.TYPE_6__*, i32, %struct.rdma_cq_setup*)** %109, align 8
  %111 = load %struct.cxio_rdev*, %struct.cxio_rdev** %5, align 8
  %112 = getelementptr inbounds %struct.cxio_rdev, %struct.cxio_rdev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* @RDMA_CQ_SETUP, align 4
  %115 = call i32 %110(%struct.TYPE_6__* %113, i32 %114, %struct.rdma_cq_setup* %8)
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %105, %65, %44, %28
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @cxio_hal_get_cqid(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.t3_cq*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
