; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_recv_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_recv_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.isert_conn* }
%struct.isert_conn = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.iser_rx_desc = type { i32, i32, %struct.iser_ctrl, %struct.iscsi_hdr }
%struct.iser_ctrl = type { i32, i32, i32, i32, i32 }
%struct.iscsi_hdr = type { i32, i32, i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@IB_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"DMA: 0x%llx, iSCSI opcode: 0x%02x, ITT: 0x%08x, flags: 0x%02x dlen: %d\0A\00", align 1
@ISER_HEADERS_LEN = common dso_local global i64 0, align 8
@ISER_RSV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"ISER_RSV: read_stag: 0x%x read_va: 0x%llx\0A\00", align 1
@ISER_WSV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"ISER_WSV: write_stag: 0x%x write_va: 0x%llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ISER ISCSI_CTRL PDU\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"iSER Hello message\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Unknown iSER hdr flags: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.ib_wc*)* @isert_recv_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_recv_done(%struct.ib_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.isert_conn*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.iser_rx_desc*, align 8
  %8 = alloca %struct.iscsi_hdr*, align 8
  %9 = alloca %struct.iser_ctrl*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %14 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %15 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.isert_conn*, %struct.isert_conn** %17, align 8
  store %struct.isert_conn* %18, %struct.isert_conn** %5, align 8
  %19 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %20 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.ib_device*, %struct.ib_device** %22, align 8
  store %struct.ib_device* %23, %struct.ib_device** %6, align 8
  %24 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %25 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.iser_rx_desc* @cqe_to_rx_desc(i32 %26)
  store %struct.iser_rx_desc* %27, %struct.iser_rx_desc** %7, align 8
  %28 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %29 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %28, i32 0, i32 3
  store %struct.iscsi_hdr* %29, %struct.iscsi_hdr** %8, align 8
  %30 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %31 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %30, i32 0, i32 2
  store %struct.iser_ctrl* %31, %struct.iser_ctrl** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %32 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %33 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IB_WC_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %2
  %41 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %42 = call i32 @isert_print_wc(%struct.ib_wc* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IB_WC_WR_FLUSH_ERR, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %50 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @iscsit_cause_connection_reinstatement(i32 %51, i32 0)
  br label %53

53:                                               ; preds = %48, %40
  br label %149

54:                                               ; preds = %2
  %55 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %56 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %58 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %59 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %62 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %63 = call i32 @ib_dma_sync_single_for_cpu(%struct.ib_device* %57, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %65 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %8, align 8
  %68 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %8, align 8
  %71 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %8, align 8
  %74 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %77 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ISER_HEADERS_LEN, align 8
  %80 = sub nsw i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 (i8*, ...) @isert_dbg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %75, i32 %81)
  %83 = load %struct.iser_ctrl*, %struct.iser_ctrl** %9, align 8
  %84 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 240
  switch i32 %86, label %129 [
    i32 129, label %87
    i32 128, label %127
  ]

87:                                               ; preds = %54
  %88 = load %struct.iser_ctrl*, %struct.iser_ctrl** %9, align 8
  %89 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ISER_RSV, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %87
  %95 = load %struct.iser_ctrl*, %struct.iser_ctrl** %9, align 8
  %96 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be32_to_cpu(i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load %struct.iser_ctrl*, %struct.iser_ctrl** %9, align 8
  %100 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @be64_to_cpu(i32 %101)
  store i64 %102, i64* %10, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i64, i64* %10, align 8
  %105 = call i32 (i8*, ...) @isert_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %103, i64 %104)
  br label %106

106:                                              ; preds = %94, %87
  %107 = load %struct.iser_ctrl*, %struct.iser_ctrl** %9, align 8
  %108 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ISER_WSV, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %106
  %114 = load %struct.iser_ctrl*, %struct.iser_ctrl** %9, align 8
  %115 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @be32_to_cpu(i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load %struct.iser_ctrl*, %struct.iser_ctrl** %9, align 8
  %119 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @be64_to_cpu(i32 %120)
  store i64 %121, i64* %11, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i64, i64* %11, align 8
  %124 = call i32 (i8*, ...) @isert_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %122, i64 %123)
  br label %125

125:                                              ; preds = %113, %106
  %126 = call i32 (i8*, ...) @isert_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %134

127:                                              ; preds = %54
  %128 = call i32 @isert_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %134

129:                                              ; preds = %54
  %130 = load %struct.iser_ctrl*, %struct.iser_ctrl** %9, align 8
  %131 = getelementptr inbounds %struct.iser_ctrl, %struct.iser_ctrl* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @isert_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %129, %127, %125
  %135 = load %struct.isert_conn*, %struct.isert_conn** %5, align 8
  %136 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i64, i64* %10, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i64, i64* %11, align 8
  %141 = call i32 @isert_rx_opcode(%struct.isert_conn* %135, %struct.iser_rx_desc* %136, i32 %137, i64 %138, i32 %139, i64 %140)
  %142 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %143 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %7, align 8
  %144 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %147 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %148 = call i32 @ib_dma_sync_single_for_device(%struct.ib_device* %142, i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %134, %53
  ret void
}

declare dso_local %struct.iser_rx_desc* @cqe_to_rx_desc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @isert_print_wc(%struct.ib_wc*, i8*) #1

declare dso_local i32 @iscsit_cause_connection_reinstatement(i32, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @isert_dbg(i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @isert_err(i8*) #1

declare dso_local i32 @isert_warn(i8*, i32) #1

declare dso_local i32 @isert_rx_opcode(%struct.isert_conn*, %struct.iser_rx_desc*, i32, i64, i32, i64) #1

declare dso_local i32 @ib_dma_sync_single_for_device(%struct.ib_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
