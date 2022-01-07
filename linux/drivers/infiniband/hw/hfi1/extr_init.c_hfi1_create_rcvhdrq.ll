; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_create_rcvhdrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_create_rcvhdrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hfi1_ctxtdata = type { i32, i32*, i32, i32, i32, i8*, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"attempt to allocate %d bytes for ctxt %u rcvhdrq failed\0A\00", align 1
@DMA_RTAIL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@HDRQ_SIZE_SHIFT = common dso_local global i32 0, align 4
@RCV_HDR_CNT_CNT_MASK = common dso_local global i32 0, align 4
@RCV_HDR_CNT_CNT_SHIFT = common dso_local global i32 0, align 4
@RCV_HDR_CNT = common dso_local global i32 0, align 4
@RCV_HDR_ENT_SIZE_ENT_SIZE_MASK = common dso_local global i32 0, align 4
@RCV_HDR_ENT_SIZE_ENT_SIZE_SHIFT = common dso_local global i32 0, align 4
@RCV_HDR_ENT_SIZE = common dso_local global i32 0, align 4
@DEFAULT_RCVHDRSIZE = common dso_local global i64 0, align 8
@RCV_HDR_SIZE_HDR_SIZE_MASK = common dso_local global i32 0, align 4
@RCV_HDR_SIZE_HDR_SIZE_SHIFT = common dso_local global i32 0, align 4
@RCV_HDR_SIZE = common dso_local global i32 0, align 4
@RCV_HDR_TAIL_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"attempt to allocate 1 page for ctxt %u rcvhdrqtailaddr failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_create_rcvhdrq(%struct.hfi1_devdata* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %5, align 8
  %9 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %10 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %91, label %13

13:                                               ; preds = %2
  %14 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %15 = call i32 @rcvhdrq_size(%struct.hfi1_ctxtdata* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %17 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %20 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %13
  %24 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %25 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %13
  %29 = load i32, i32* @GFP_KERNEL, align 4
  store i32 %29, i32* %8, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @GFP_USER, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %34 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %39 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %38, i32 0, i32 2
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @__GFP_COMP, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @dma_alloc_coherent(i32* %36, i32 %37, i32* %39, i32 %42)
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %46 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %48 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %32
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %55 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_err(%struct.hfi1_devdata* %52, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  br label %165

58:                                               ; preds = %32
  %59 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %60 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DMA_RTAIL, align 4
  %63 = call i64 @HFI1_CAP_KGET_MASK(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %67 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DMA_RTAIL, align 4
  %70 = call i64 @HFI1_CAP_UGET_MASK(i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %65, %58
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %74 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %79 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %78, i32 0, i32 6
  %80 = load i32, i32* %8, align 4
  %81 = call i8* @dma_alloc_coherent(i32* %76, i32 %77, i32* %79, i32 %80)
  %82 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %83 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %85 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %72
  br label %145

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89, %65
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %93 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @HDRQ_SIZE_SHIFT, align 4
  %96 = ashr i32 %94, %95
  %97 = load i32, i32* @RCV_HDR_CNT_CNT_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @RCV_HDR_CNT_CNT_SHIFT, align 4
  %100 = shl i32 %98, %99
  store i32 %100, i32* %7, align 4
  %101 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %102 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %103 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RCV_HDR_CNT, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %101, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %109 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @encode_rcv_header_entry_size(i32 %110)
  %112 = load i32, i32* @RCV_HDR_ENT_SIZE_ENT_SIZE_MASK, align 4
  %113 = and i32 %111, %112
  %114 = load i32, i32* @RCV_HDR_ENT_SIZE_ENT_SIZE_SHIFT, align 4
  %115 = shl i32 %113, %114
  store i32 %115, i32* %7, align 4
  %116 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %117 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %118 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @RCV_HDR_ENT_SIZE, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %116, i32 %119, i32 %120, i32 %121)
  %123 = load i64, i64* @DEFAULT_RCVHDRSIZE, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* @RCV_HDR_SIZE_HDR_SIZE_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @RCV_HDR_SIZE_HDR_SIZE_SHIFT, align 4
  %128 = shl i32 %126, %127
  store i32 %128, i32* %7, align 4
  %129 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %130 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %131 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RCV_HDR_SIZE, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %129, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %137 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %138 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @RCV_HDR_TAIL_ADDR, align 4
  %141 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %142 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %136, i32 %139, i32 %140, i32 %143)
  store i32 0, i32* %3, align 4
  br label %168

145:                                              ; preds = %88
  %146 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %147 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %148 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_err(%struct.hfi1_devdata* %146, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %152 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %157 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %160 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @dma_free_coherent(i32* %154, i32 %155, i32* %158, i32 %161)
  %163 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %164 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %163, i32 0, i32 1
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %145, %51
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %165, %91
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @rcvhdrq_size(%struct.hfi1_ctxtdata*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32, ...) #1

declare dso_local i64 @HFI1_CAP_KGET_MASK(i32, i32) #1

declare dso_local i64 @HFI1_CAP_UGET_MASK(i32, i32) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @encode_rcv_header_entry_size(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
