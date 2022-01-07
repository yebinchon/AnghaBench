; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_seqfile_dump_rcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_seqfile_dump_rcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hfi1_ctxtdata = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.hfi1_packet = type { %struct.TYPE_6__*, %struct.ib_header* }
%struct.TYPE_6__ = type { i32* }
%struct.ib_header = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.ps_mdata = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Rcd %u: RcvHdr cnt %u entsize %u %s head %llu tail %llu\0A\00", align 1
@DMA_RTAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dma_rtail\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"nodma_rtail\00", align 1
@RCV_HDR_HEAD = common dso_local global i32 0, align 4
@RCV_HDR_HEAD_HEAD_MASK = common dso_local global i32 0, align 4
@RCV_HDR_TAIL = common dso_local global i32 0, align 4
@RHF_RCV_TYPE_IB = common dso_local global i64 0, align 8
@HFI1_LRH_BTH = common dso_local global i32 0, align 4
@HFI1_LRH_GRH = common dso_local global i32 0, align 4
@RVT_QPN_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"\09Ent %u: opcode 0x%x, qpn 0x%x, psn 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seqfile_dump_rcd(%struct.seq_file* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca %struct.hfi1_packet, align 8
  %6 = alloca %struct.ps_mdata, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ib_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %4, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %17 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %20 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %23 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %27 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DMA_RTAIL, align 4
  %30 = call i64 @HFI1_CAP_KGET_MASK(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %36 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %39 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @RCV_HDR_HEAD, align 4
  %42 = call i32 @read_uctxt_csr(i32 %37, i32 %40, i32 %41)
  %43 = load i32, i32* @RCV_HDR_HEAD_HEAD_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %46 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %49 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RCV_HDR_TAIL, align 4
  %52 = call i32 @read_uctxt_csr(i32 %47, i32 %50, i32 %51)
  %53 = call i32 (%struct.seq_file*, i8*, i32, i32, i64, i64, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i64 %25, i64 %34, i32 %44, i32 %52)
  %54 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %55 = call i32 @init_packet(%struct.hfi1_ctxtdata* %54, %struct.hfi1_packet* %5)
  %56 = call i32 @init_ps_mdata(%struct.ps_mdata* %6, %struct.hfi1_packet* %5)
  br label %57

57:                                               ; preds = %2, %159
  %58 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %59 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %67 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @rhf_to_cpu(i32* %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @rhf_rcv_type(i32 %73)
  store i64 %74, i64* %10, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %77 = call i64 @ps_done(%struct.ps_mdata* %6, i32 %75, %struct.hfi1_ctxtdata* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %57
  br label %162

80:                                               ; preds = %57
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %83 = call i64 @ps_skip(%struct.ps_mdata* %6, i32 %81, %struct.hfi1_ctxtdata* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %159

86:                                               ; preds = %80
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @RHF_RCV_TYPE_IB, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %159

91:                                               ; preds = %86
  %92 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call %struct.ib_header* @hfi1_get_msgheader(%struct.hfi1_ctxtdata* %92, i32* %93)
  %95 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 1
  store %struct.ib_header* %94, %struct.ib_header** %95, align 8
  %96 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 1
  %97 = load %struct.ib_header*, %struct.ib_header** %96, align 8
  store %struct.ib_header* %97, %struct.ib_header** %8, align 8
  %98 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %99 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @be16_to_cpu(i32 %102)
  %104 = and i32 %103, 3
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @HFI1_LRH_BTH, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %91
  %109 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %110 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 0
  store %struct.TYPE_6__* %111, %struct.TYPE_6__** %112, align 8
  br label %125

113:                                              ; preds = %91
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @HFI1_LRH_GRH, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load %struct.ib_header*, %struct.ib_header** %8, align 8
  %119 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 0
  store %struct.TYPE_6__* %121, %struct.TYPE_6__** %122, align 8
  br label %124

123:                                              ; preds = %113
  br label %159

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %108
  %126 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @be32_to_cpu(i32 %131)
  %133 = ashr i32 %132, 24
  store i32 %133, i32* %12, align 4
  %134 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @be32_to_cpu(i32 %139)
  %141 = load i32, i32* @RVT_QPN_MASK, align 4
  %142 = and i32 %140, %141
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %11, align 8
  %144 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @be32_to_cpu(i32 %149)
  %151 = call i64 @mask_psn(i32 %150)
  store i64 %151, i64* %13, align 8
  %152 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %153 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %6, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* %13, align 8
  %158 = call i32 (%struct.seq_file*, i8*, i32, i32, i64, i64, ...) @seq_printf(%struct.seq_file* %152, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %154, i32 %155, i64 %156, i64 %157)
  br label %159

159:                                              ; preds = %125, %123, %90, %85
  %160 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %161 = call i32 @update_ps_mdata(%struct.ps_mdata* %6, %struct.hfi1_ctxtdata* %160)
  br label %57

162:                                              ; preds = %79
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i64, i64, ...) #1

declare dso_local i64 @HFI1_CAP_KGET_MASK(i32, i32) #1

declare dso_local i32 @read_uctxt_csr(i32, i32, i32) #1

declare dso_local i32 @init_packet(%struct.hfi1_ctxtdata*, %struct.hfi1_packet*) #1

declare dso_local i32 @init_ps_mdata(%struct.ps_mdata*, %struct.hfi1_packet*) #1

declare dso_local i32 @rhf_to_cpu(i32*) #1

declare dso_local i64 @rhf_rcv_type(i32) #1

declare dso_local i64 @ps_done(%struct.ps_mdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local i64 @ps_skip(%struct.ps_mdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local %struct.ib_header* @hfi1_get_msgheader(%struct.hfi1_ctxtdata*, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @mask_psn(i32) #1

declare dso_local i32 @update_ps_mdata(%struct.ps_mdata*, %struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
