; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_rw.c_rdma_rw_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_rw_ctx = type { i32 }
%struct.ib_qp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.scatterlist = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_rw_ctx_init(%struct.rdma_rw_ctx* %0, %struct.ib_qp* %1, i32 %2, %struct.scatterlist* %3, i64 %4, i64 %5, i32 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.rdma_rw_ctx*, align 8
  %12 = alloca %struct.ib_qp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ib_device*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.rdma_rw_ctx* %0, %struct.rdma_rw_ctx** %11, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %23 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %24 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ib_device*, %struct.ib_device** %26, align 8
  store %struct.ib_device* %27, %struct.ib_device** %20, align 8
  %28 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %29 = call i32 @sg_page(%struct.scatterlist* %28)
  %30 = call i64 @is_pci_p2pdma_page(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %9
  %33 = load %struct.ib_device*, %struct.ib_device** %20, align 8
  %34 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load i32, i32* %19, align 4
  %39 = call i32 @pci_p2pdma_map_sg(i32 %35, %struct.scatterlist* %36, i64 %37, i32 %38)
  store i32 %39, i32* %21, align 4
  br label %46

40:                                               ; preds = %9
  %41 = load %struct.ib_device*, %struct.ib_device** %20, align 8
  %42 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @ib_dma_map_sg(%struct.ib_device* %41, %struct.scatterlist* %42, i64 %43, i32 %44)
  store i32 %45, i32* %21, align 4
  br label %46

46:                                               ; preds = %40, %32
  %47 = load i32, i32* %21, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %135

52:                                               ; preds = %46
  %53 = load i32, i32* %21, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %15, align 8
  br label %55

55:                                               ; preds = %62, %52
  %56 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %57 = call i64 @sg_dma_len(%struct.scatterlist* %56)
  store i64 %57, i64* %22, align 8
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %22, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %70

62:                                               ; preds = %55
  %63 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %64 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %63)
  store %struct.scatterlist* %64, %struct.scatterlist** %14, align 8
  %65 = load i64, i64* %22, align 8
  %66 = load i64, i64* %16, align 8
  %67 = sub nsw i64 %66, %65
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %15, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %15, align 8
  br label %55

70:                                               ; preds = %61
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %21, align 4
  %73 = load i64, i64* %15, align 8
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i64 @WARN_ON_ONCE(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %128

79:                                               ; preds = %70
  %80 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %81 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i64, i64* %15, align 8
  %86 = call i64 @rdma_rw_io_needs_mr(i32 %82, i32 %83, i32 %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %79
  %89 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %90 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load i32, i32* %17, align 4
  %96 = load i64, i64* %18, align 8
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @rdma_rw_init_mr_wrs(%struct.rdma_rw_ctx* %89, %struct.ib_qp* %90, i32 %91, %struct.scatterlist* %92, i64 %93, i64 %94, i32 %95, i64 %96, i32 %97)
  store i32 %98, i32* %21, align 4
  br label %122

99:                                               ; preds = %79
  %100 = load i64, i64* %15, align 8
  %101 = icmp sgt i64 %100, 1
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %104 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %105 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load i64, i64* %18, align 8
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @rdma_rw_init_map_wrs(%struct.rdma_rw_ctx* %103, %struct.ib_qp* %104, %struct.scatterlist* %105, i64 %106, i64 %107, i32 %108, i64 %109, i32 %110)
  store i32 %111, i32* %21, align 4
  br label %121

112:                                              ; preds = %99
  %113 = load %struct.rdma_rw_ctx*, %struct.rdma_rw_ctx** %11, align 8
  %114 = load %struct.ib_qp*, %struct.ib_qp** %12, align 8
  %115 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i64, i64* %18, align 8
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @rdma_rw_init_single_wr(%struct.rdma_rw_ctx* %113, %struct.ib_qp* %114, %struct.scatterlist* %115, i64 %116, i32 %117, i64 %118, i32 %119)
  store i32 %120, i32* %21, align 4
  br label %121

121:                                              ; preds = %112, %102
  br label %122

122:                                              ; preds = %121, %88
  %123 = load i32, i32* %21, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  br label %128

126:                                              ; preds = %122
  %127 = load i32, i32* %21, align 4
  store i32 %127, i32* %10, align 4
  br label %135

128:                                              ; preds = %125, %78
  %129 = load %struct.ib_device*, %struct.ib_device** %20, align 8
  %130 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %131 = load i64, i64* %15, align 8
  %132 = load i32, i32* %19, align 4
  %133 = call i32 @ib_dma_unmap_sg(%struct.ib_device* %129, %struct.scatterlist* %130, i64 %131, i32 %132)
  %134 = load i32, i32* %21, align 4
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %128, %126, %49
  %136 = load i32, i32* %10, align 4
  ret i32 %136
}

declare dso_local i64 @is_pci_p2pdma_page(i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @pci_p2pdma_map_sg(i32, %struct.scatterlist*, i64, i32) #1

declare dso_local i32 @ib_dma_map_sg(%struct.ib_device*, %struct.scatterlist*, i64, i32) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @rdma_rw_io_needs_mr(i32, i32, i32, i64) #1

declare dso_local i32 @rdma_rw_init_mr_wrs(%struct.rdma_rw_ctx*, %struct.ib_qp*, i32, %struct.scatterlist*, i64, i64, i32, i64, i32) #1

declare dso_local i32 @rdma_rw_init_map_wrs(%struct.rdma_rw_ctx*, %struct.ib_qp*, %struct.scatterlist*, i64, i64, i32, i64, i32) #1

declare dso_local i32 @rdma_rw_init_single_wr(%struct.rdma_rw_ctx*, %struct.ib_qp*, %struct.scatterlist*, i64, i32, i64, i32) #1

declare dso_local i32 @ib_dma_unmap_sg(%struct.ib_device*, %struct.scatterlist*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
