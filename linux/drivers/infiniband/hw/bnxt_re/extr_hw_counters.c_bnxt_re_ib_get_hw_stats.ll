; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_hw_counters.c_bnxt_re_ib_get_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_hw_counters.c_bnxt_re_ib_get_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_hw_stats = type { i8** }
%struct.bnxt_re_dev = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ctx_hw_stats* }
%struct.ctx_hw_stats = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BNXT_RE_ACTIVE_QP = common dso_local global i64 0, align 8
@BNXT_RE_ACTIVE_SRQ = common dso_local global i64 0, align 8
@BNXT_RE_ACTIVE_CQ = common dso_local global i64 0, align 8
@BNXT_RE_ACTIVE_MR = common dso_local global i64 0, align 8
@BNXT_RE_ACTIVE_MW = common dso_local global i64 0, align 8
@BNXT_RE_RECOVERABLE_ERRORS = common dso_local global i64 0, align 8
@BNXT_RE_RX_DROPS = common dso_local global i64 0, align 8
@BNXT_RE_RX_DISCARDS = common dso_local global i64 0, align 8
@BNXT_RE_RX_PKTS = common dso_local global i64 0, align 8
@BNXT_RE_RX_BYTES = common dso_local global i64 0, align 8
@BNXT_RE_TX_PKTS = common dso_local global i64 0, align 8
@BNXT_RE_TX_BYTES = common dso_local global i64 0, align 8
@BNXT_RE_FLAG_ISSUE_ROCE_STATS = common dso_local global i32 0, align 4
@BNXT_RE_TO_RETRANSMITS = common dso_local global i64 0, align 8
@BNXT_RE_SEQ_ERR_NAKS_RCVD = common dso_local global i64 0, align 8
@BNXT_RE_MAX_RETRY_EXCEEDED = common dso_local global i64 0, align 8
@BNXT_RE_RNR_NAKS_RCVD = common dso_local global i64 0, align 8
@BNXT_RE_MISSING_RESP = common dso_local global i64 0, align 8
@BNXT_RE_UNRECOVERABLE_ERR = common dso_local global i64 0, align 8
@BNXT_RE_BAD_RESP_ERR = common dso_local global i64 0, align 8
@BNXT_RE_LOCAL_QP_OP_ERR = common dso_local global i64 0, align 8
@BNXT_RE_LOCAL_PROTECTION_ERR = common dso_local global i64 0, align 8
@BNXT_RE_MEM_MGMT_OP_ERR = common dso_local global i64 0, align 8
@BNXT_RE_REMOTE_INVALID_REQ_ERR = common dso_local global i64 0, align 8
@BNXT_RE_REMOTE_ACCESS_ERR = common dso_local global i64 0, align 8
@BNXT_RE_REMOTE_OP_ERR = common dso_local global i64 0, align 8
@BNXT_RE_DUP_REQ = common dso_local global i64 0, align 8
@BNXT_RE_RES_EXCEED_MAX = common dso_local global i64 0, align 8
@BNXT_RE_RES_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@BNXT_RE_RES_EXCEEDS_WQE = common dso_local global i64 0, align 8
@BNXT_RE_RES_OPCODE_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_RX_INVALID_RKEY = common dso_local global i64 0, align 8
@BNXT_RE_RES_RX_DOMAIN_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_RX_NO_PERM = common dso_local global i64 0, align 8
@BNXT_RE_RES_RX_RANGE_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_TX_INVALID_RKEY = common dso_local global i64 0, align 8
@BNXT_RE_RES_TX_DOMAIN_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_TX_NO_PERM = common dso_local global i64 0, align 8
@BNXT_RE_RES_TX_RANGE_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_IRRQ_OFLOW = common dso_local global i64 0, align 8
@BNXT_RE_RES_UNSUP_OPCODE = common dso_local global i64 0, align 8
@BNXT_RE_RES_UNALIGNED_ATOMIC = common dso_local global i64 0, align 8
@BNXT_RE_RES_REM_INV_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_MEM_ERROR = common dso_local global i64 0, align 8
@BNXT_RE_RES_SRQ_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_CMP_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_INVALID_DUP_RKEY = common dso_local global i64 0, align 8
@BNXT_RE_RES_WQE_FORMAT_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_CQ_LOAD_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_SRQ_LOAD_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_TX_PCI_ERR = common dso_local global i64 0, align 8
@BNXT_RE_RES_RX_PCI_ERR = common dso_local global i64 0, align 8
@BNXT_RE_OUT_OF_SEQ_ERR = common dso_local global i64 0, align 8
@bnxt_re_stat_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_re_ib_get_hw_stats(%struct.ib_device* %0, %struct.rdma_hw_stats* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.rdma_hw_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnxt_re_dev*, align 8
  %11 = alloca %struct.ctx_hw_stats*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %struct.rdma_hw_stats* %1, %struct.rdma_hw_stats** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = call %struct.bnxt_re_dev* @to_bnxt_re_dev(%struct.ib_device* %13, %struct.ib_device* %14)
  store %struct.bnxt_re_dev* %15, %struct.bnxt_re_dev** %10, align 8
  %16 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %17 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %19, align 8
  store %struct.ctx_hw_stats* %20, %struct.ctx_hw_stats** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %25 = icmp ne %struct.rdma_hw_stats* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %519

29:                                               ; preds = %23
  %30 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %31 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %30, i32 0, i32 7
  %32 = call i8* @atomic_read(i32* %31)
  %33 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %34 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* @BNXT_RE_ACTIVE_QP, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8* %32, i8** %37, align 8
  %38 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %39 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %38, i32 0, i32 6
  %40 = call i8* @atomic_read(i32* %39)
  %41 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %42 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* @BNXT_RE_ACTIVE_SRQ, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  store i8* %40, i8** %45, align 8
  %46 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %47 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %46, i32 0, i32 5
  %48 = call i8* @atomic_read(i32* %47)
  %49 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %50 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* @BNXT_RE_ACTIVE_CQ, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8* %48, i8** %53, align 8
  %54 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %55 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %54, i32 0, i32 4
  %56 = call i8* @atomic_read(i32* %55)
  %57 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %58 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* @BNXT_RE_ACTIVE_MR, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  store i8* %56, i8** %61, align 8
  %62 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %63 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %62, i32 0, i32 3
  %64 = call i8* @atomic_read(i32* %63)
  %65 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %66 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load i64, i64* @BNXT_RE_ACTIVE_MW, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  store i8* %64, i8** %69, align 8
  %70 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %11, align 8
  %71 = icmp ne %struct.ctx_hw_stats* %70, null
  br i1 %71, label %72, label %136

72:                                               ; preds = %29
  %73 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %11, align 8
  %74 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le64_to_cpu(i32 %75)
  %77 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %78 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = load i64, i64* @BNXT_RE_RECOVERABLE_ERRORS, align 8
  %81 = getelementptr inbounds i8*, i8** %79, i64 %80
  store i8* %76, i8** %81, align 8
  %82 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %11, align 8
  %83 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @le64_to_cpu(i32 %84)
  %86 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %87 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load i64, i64* @BNXT_RE_RX_DROPS, align 8
  %90 = getelementptr inbounds i8*, i8** %88, i64 %89
  store i8* %85, i8** %90, align 8
  %91 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %11, align 8
  %92 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le64_to_cpu(i32 %93)
  %95 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %96 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = load i64, i64* @BNXT_RE_RX_DISCARDS, align 8
  %99 = getelementptr inbounds i8*, i8** %97, i64 %98
  store i8* %94, i8** %99, align 8
  %100 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %11, align 8
  %101 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @le64_to_cpu(i32 %102)
  %104 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %105 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = load i64, i64* @BNXT_RE_RX_PKTS, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  store i8* %103, i8** %108, align 8
  %109 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %11, align 8
  %110 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @le64_to_cpu(i32 %111)
  %113 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %114 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = load i64, i64* @BNXT_RE_RX_BYTES, align 8
  %117 = getelementptr inbounds i8*, i8** %115, i64 %116
  store i8* %112, i8** %117, align 8
  %118 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %11, align 8
  %119 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @le64_to_cpu(i32 %120)
  %122 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %123 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = load i64, i64* @BNXT_RE_TX_PKTS, align 8
  %126 = getelementptr inbounds i8*, i8** %124, i64 %125
  store i8* %121, i8** %126, align 8
  %127 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %11, align 8
  %128 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le64_to_cpu(i32 %129)
  %131 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %132 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %131, i32 0, i32 0
  %133 = load i8**, i8*** %132, align 8
  %134 = load i64, i64* @BNXT_RE_TX_BYTES, align 8
  %135 = getelementptr inbounds i8*, i8** %133, i64 %134
  store i8* %130, i8** %135, align 8
  br label %136

136:                                              ; preds = %72, %29
  %137 = load i32, i32* @BNXT_RE_FLAG_ISSUE_ROCE_STATS, align 4
  %138 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %139 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %138, i32 0, i32 1
  %140 = call i64 @test_bit(i32 %137, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %516

142:                                              ; preds = %136
  %143 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %144 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %143, i32 0, i32 2
  %145 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %146 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %145, i32 0, i32 0
  %147 = call i32 @bnxt_qplib_get_roce_stats(i32* %144, %struct.TYPE_6__* %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %142
  %151 = load i32, i32* @BNXT_RE_FLAG_ISSUE_ROCE_STATS, align 4
  %152 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %153 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %152, i32 0, i32 1
  %154 = call i32 @clear_bit(i32 %151, i32* %153)
  br label %155

155:                                              ; preds = %150, %142
  %156 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %157 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 39
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %161 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %160, i32 0, i32 0
  %162 = load i8**, i8*** %161, align 8
  %163 = load i64, i64* @BNXT_RE_TO_RETRANSMITS, align 8
  %164 = getelementptr inbounds i8*, i8** %162, i64 %163
  store i8* %159, i8** %164, align 8
  %165 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %166 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 38
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %170 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %169, i32 0, i32 0
  %171 = load i8**, i8*** %170, align 8
  %172 = load i64, i64* @BNXT_RE_SEQ_ERR_NAKS_RCVD, align 8
  %173 = getelementptr inbounds i8*, i8** %171, i64 %172
  store i8* %168, i8** %173, align 8
  %174 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %175 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 37
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %179 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %178, i32 0, i32 0
  %180 = load i8**, i8*** %179, align 8
  %181 = load i64, i64* @BNXT_RE_MAX_RETRY_EXCEEDED, align 8
  %182 = getelementptr inbounds i8*, i8** %180, i64 %181
  store i8* %177, i8** %182, align 8
  %183 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %184 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 36
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %188 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %187, i32 0, i32 0
  %189 = load i8**, i8*** %188, align 8
  %190 = load i64, i64* @BNXT_RE_RNR_NAKS_RCVD, align 8
  %191 = getelementptr inbounds i8*, i8** %189, i64 %190
  store i8* %186, i8** %191, align 8
  %192 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %193 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 35
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %197 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %196, i32 0, i32 0
  %198 = load i8**, i8*** %197, align 8
  %199 = load i64, i64* @BNXT_RE_MISSING_RESP, align 8
  %200 = getelementptr inbounds i8*, i8** %198, i64 %199
  store i8* %195, i8** %200, align 8
  %201 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %202 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 34
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %206 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %205, i32 0, i32 0
  %207 = load i8**, i8*** %206, align 8
  %208 = load i64, i64* @BNXT_RE_UNRECOVERABLE_ERR, align 8
  %209 = getelementptr inbounds i8*, i8** %207, i64 %208
  store i8* %204, i8** %209, align 8
  %210 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %211 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 33
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %215 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %214, i32 0, i32 0
  %216 = load i8**, i8*** %215, align 8
  %217 = load i64, i64* @BNXT_RE_BAD_RESP_ERR, align 8
  %218 = getelementptr inbounds i8*, i8** %216, i64 %217
  store i8* %213, i8** %218, align 8
  %219 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %220 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 32
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %224 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %223, i32 0, i32 0
  %225 = load i8**, i8*** %224, align 8
  %226 = load i64, i64* @BNXT_RE_LOCAL_QP_OP_ERR, align 8
  %227 = getelementptr inbounds i8*, i8** %225, i64 %226
  store i8* %222, i8** %227, align 8
  %228 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %229 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 31
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %233 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %232, i32 0, i32 0
  %234 = load i8**, i8*** %233, align 8
  %235 = load i64, i64* @BNXT_RE_LOCAL_PROTECTION_ERR, align 8
  %236 = getelementptr inbounds i8*, i8** %234, i64 %235
  store i8* %231, i8** %236, align 8
  %237 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %238 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 30
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %242 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %241, i32 0, i32 0
  %243 = load i8**, i8*** %242, align 8
  %244 = load i64, i64* @BNXT_RE_MEM_MGMT_OP_ERR, align 8
  %245 = getelementptr inbounds i8*, i8** %243, i64 %244
  store i8* %240, i8** %245, align 8
  %246 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %247 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 29
  %249 = load i8*, i8** %248, align 8
  %250 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %251 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %250, i32 0, i32 0
  %252 = load i8**, i8*** %251, align 8
  %253 = load i64, i64* @BNXT_RE_REMOTE_INVALID_REQ_ERR, align 8
  %254 = getelementptr inbounds i8*, i8** %252, i64 %253
  store i8* %249, i8** %254, align 8
  %255 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %256 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 28
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %260 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %259, i32 0, i32 0
  %261 = load i8**, i8*** %260, align 8
  %262 = load i64, i64* @BNXT_RE_REMOTE_ACCESS_ERR, align 8
  %263 = getelementptr inbounds i8*, i8** %261, i64 %262
  store i8* %258, i8** %263, align 8
  %264 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %265 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 27
  %267 = load i8*, i8** %266, align 8
  %268 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %269 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %268, i32 0, i32 0
  %270 = load i8**, i8*** %269, align 8
  %271 = load i64, i64* @BNXT_RE_REMOTE_OP_ERR, align 8
  %272 = getelementptr inbounds i8*, i8** %270, i64 %271
  store i8* %267, i8** %272, align 8
  %273 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %274 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 26
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %278 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %277, i32 0, i32 0
  %279 = load i8**, i8*** %278, align 8
  %280 = load i64, i64* @BNXT_RE_DUP_REQ, align 8
  %281 = getelementptr inbounds i8*, i8** %279, i64 %280
  store i8* %276, i8** %281, align 8
  %282 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %283 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 25
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %287 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %286, i32 0, i32 0
  %288 = load i8**, i8*** %287, align 8
  %289 = load i64, i64* @BNXT_RE_RES_EXCEED_MAX, align 8
  %290 = getelementptr inbounds i8*, i8** %288, i64 %289
  store i8* %285, i8** %290, align 8
  %291 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %292 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 24
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %296 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %295, i32 0, i32 0
  %297 = load i8**, i8*** %296, align 8
  %298 = load i64, i64* @BNXT_RE_RES_LENGTH_MISMATCH, align 8
  %299 = getelementptr inbounds i8*, i8** %297, i64 %298
  store i8* %294, i8** %299, align 8
  %300 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %301 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 23
  %303 = load i8*, i8** %302, align 8
  %304 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %305 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %304, i32 0, i32 0
  %306 = load i8**, i8*** %305, align 8
  %307 = load i64, i64* @BNXT_RE_RES_EXCEEDS_WQE, align 8
  %308 = getelementptr inbounds i8*, i8** %306, i64 %307
  store i8* %303, i8** %308, align 8
  %309 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %310 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 22
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %314 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %313, i32 0, i32 0
  %315 = load i8**, i8*** %314, align 8
  %316 = load i64, i64* @BNXT_RE_RES_OPCODE_ERR, align 8
  %317 = getelementptr inbounds i8*, i8** %315, i64 %316
  store i8* %312, i8** %317, align 8
  %318 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %319 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 21
  %321 = load i8*, i8** %320, align 8
  %322 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %323 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %322, i32 0, i32 0
  %324 = load i8**, i8*** %323, align 8
  %325 = load i64, i64* @BNXT_RE_RES_RX_INVALID_RKEY, align 8
  %326 = getelementptr inbounds i8*, i8** %324, i64 %325
  store i8* %321, i8** %326, align 8
  %327 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %328 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 20
  %330 = load i8*, i8** %329, align 8
  %331 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %332 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %331, i32 0, i32 0
  %333 = load i8**, i8*** %332, align 8
  %334 = load i64, i64* @BNXT_RE_RES_RX_DOMAIN_ERR, align 8
  %335 = getelementptr inbounds i8*, i8** %333, i64 %334
  store i8* %330, i8** %335, align 8
  %336 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %337 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 19
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %341 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %340, i32 0, i32 0
  %342 = load i8**, i8*** %341, align 8
  %343 = load i64, i64* @BNXT_RE_RES_RX_NO_PERM, align 8
  %344 = getelementptr inbounds i8*, i8** %342, i64 %343
  store i8* %339, i8** %344, align 8
  %345 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %346 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 18
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %350 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %349, i32 0, i32 0
  %351 = load i8**, i8*** %350, align 8
  %352 = load i64, i64* @BNXT_RE_RES_RX_RANGE_ERR, align 8
  %353 = getelementptr inbounds i8*, i8** %351, i64 %352
  store i8* %348, i8** %353, align 8
  %354 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %355 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 17
  %357 = load i8*, i8** %356, align 8
  %358 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %359 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %358, i32 0, i32 0
  %360 = load i8**, i8*** %359, align 8
  %361 = load i64, i64* @BNXT_RE_RES_TX_INVALID_RKEY, align 8
  %362 = getelementptr inbounds i8*, i8** %360, i64 %361
  store i8* %357, i8** %362, align 8
  %363 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %364 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 16
  %366 = load i8*, i8** %365, align 8
  %367 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %368 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %367, i32 0, i32 0
  %369 = load i8**, i8*** %368, align 8
  %370 = load i64, i64* @BNXT_RE_RES_TX_DOMAIN_ERR, align 8
  %371 = getelementptr inbounds i8*, i8** %369, i64 %370
  store i8* %366, i8** %371, align 8
  %372 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %373 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 15
  %375 = load i8*, i8** %374, align 8
  %376 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %377 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %376, i32 0, i32 0
  %378 = load i8**, i8*** %377, align 8
  %379 = load i64, i64* @BNXT_RE_RES_TX_NO_PERM, align 8
  %380 = getelementptr inbounds i8*, i8** %378, i64 %379
  store i8* %375, i8** %380, align 8
  %381 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %382 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 14
  %384 = load i8*, i8** %383, align 8
  %385 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %386 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %385, i32 0, i32 0
  %387 = load i8**, i8*** %386, align 8
  %388 = load i64, i64* @BNXT_RE_RES_TX_RANGE_ERR, align 8
  %389 = getelementptr inbounds i8*, i8** %387, i64 %388
  store i8* %384, i8** %389, align 8
  %390 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %391 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 13
  %393 = load i8*, i8** %392, align 8
  %394 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %395 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %394, i32 0, i32 0
  %396 = load i8**, i8*** %395, align 8
  %397 = load i64, i64* @BNXT_RE_RES_IRRQ_OFLOW, align 8
  %398 = getelementptr inbounds i8*, i8** %396, i64 %397
  store i8* %393, i8** %398, align 8
  %399 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %400 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 12
  %402 = load i8*, i8** %401, align 8
  %403 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %404 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %403, i32 0, i32 0
  %405 = load i8**, i8*** %404, align 8
  %406 = load i64, i64* @BNXT_RE_RES_UNSUP_OPCODE, align 8
  %407 = getelementptr inbounds i8*, i8** %405, i64 %406
  store i8* %402, i8** %407, align 8
  %408 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %409 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 11
  %411 = load i8*, i8** %410, align 8
  %412 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %413 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %412, i32 0, i32 0
  %414 = load i8**, i8*** %413, align 8
  %415 = load i64, i64* @BNXT_RE_RES_UNALIGNED_ATOMIC, align 8
  %416 = getelementptr inbounds i8*, i8** %414, i64 %415
  store i8* %411, i8** %416, align 8
  %417 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %418 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %418, i32 0, i32 10
  %420 = load i8*, i8** %419, align 8
  %421 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %422 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %421, i32 0, i32 0
  %423 = load i8**, i8*** %422, align 8
  %424 = load i64, i64* @BNXT_RE_RES_REM_INV_ERR, align 8
  %425 = getelementptr inbounds i8*, i8** %423, i64 %424
  store i8* %420, i8** %425, align 8
  %426 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %427 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 9
  %429 = load i8*, i8** %428, align 8
  %430 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %431 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %430, i32 0, i32 0
  %432 = load i8**, i8*** %431, align 8
  %433 = load i64, i64* @BNXT_RE_RES_MEM_ERROR, align 8
  %434 = getelementptr inbounds i8*, i8** %432, i64 %433
  store i8* %429, i8** %434, align 8
  %435 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %436 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %436, i32 0, i32 8
  %438 = load i8*, i8** %437, align 8
  %439 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %440 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %439, i32 0, i32 0
  %441 = load i8**, i8*** %440, align 8
  %442 = load i64, i64* @BNXT_RE_RES_SRQ_ERR, align 8
  %443 = getelementptr inbounds i8*, i8** %441, i64 %442
  store i8* %438, i8** %443, align 8
  %444 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %445 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 7
  %447 = load i8*, i8** %446, align 8
  %448 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %449 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %448, i32 0, i32 0
  %450 = load i8**, i8*** %449, align 8
  %451 = load i64, i64* @BNXT_RE_RES_CMP_ERR, align 8
  %452 = getelementptr inbounds i8*, i8** %450, i64 %451
  store i8* %447, i8** %452, align 8
  %453 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %454 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i32 0, i32 6
  %456 = load i8*, i8** %455, align 8
  %457 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %458 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %457, i32 0, i32 0
  %459 = load i8**, i8*** %458, align 8
  %460 = load i64, i64* @BNXT_RE_RES_INVALID_DUP_RKEY, align 8
  %461 = getelementptr inbounds i8*, i8** %459, i64 %460
  store i8* %456, i8** %461, align 8
  %462 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %463 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 5
  %465 = load i8*, i8** %464, align 8
  %466 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %467 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %466, i32 0, i32 0
  %468 = load i8**, i8*** %467, align 8
  %469 = load i64, i64* @BNXT_RE_RES_WQE_FORMAT_ERR, align 8
  %470 = getelementptr inbounds i8*, i8** %468, i64 %469
  store i8* %465, i8** %470, align 8
  %471 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %472 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 4
  %474 = load i8*, i8** %473, align 8
  %475 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %476 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %475, i32 0, i32 0
  %477 = load i8**, i8*** %476, align 8
  %478 = load i64, i64* @BNXT_RE_RES_CQ_LOAD_ERR, align 8
  %479 = getelementptr inbounds i8*, i8** %477, i64 %478
  store i8* %474, i8** %479, align 8
  %480 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %481 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 3
  %483 = load i8*, i8** %482, align 8
  %484 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %485 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %484, i32 0, i32 0
  %486 = load i8**, i8*** %485, align 8
  %487 = load i64, i64* @BNXT_RE_RES_SRQ_LOAD_ERR, align 8
  %488 = getelementptr inbounds i8*, i8** %486, i64 %487
  store i8* %483, i8** %488, align 8
  %489 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %490 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 2
  %492 = load i8*, i8** %491, align 8
  %493 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %494 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %493, i32 0, i32 0
  %495 = load i8**, i8*** %494, align 8
  %496 = load i64, i64* @BNXT_RE_RES_TX_PCI_ERR, align 8
  %497 = getelementptr inbounds i8*, i8** %495, i64 %496
  store i8* %492, i8** %497, align 8
  %498 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %499 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 1
  %501 = load i8*, i8** %500, align 8
  %502 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %503 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %502, i32 0, i32 0
  %504 = load i8**, i8*** %503, align 8
  %505 = load i64, i64* @BNXT_RE_RES_RX_PCI_ERR, align 8
  %506 = getelementptr inbounds i8*, i8** %504, i64 %505
  store i8* %501, i8** %506, align 8
  %507 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  %508 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %508, i32 0, i32 0
  %510 = load i8*, i8** %509, align 8
  %511 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %512 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %511, i32 0, i32 0
  %513 = load i8**, i8*** %512, align 8
  %514 = load i64, i64* @BNXT_RE_OUT_OF_SEQ_ERR, align 8
  %515 = getelementptr inbounds i8*, i8** %513, i64 %514
  store i8* %510, i8** %515, align 8
  br label %516

516:                                              ; preds = %155, %136
  %517 = load i32, i32* @bnxt_re_stat_name, align 4
  %518 = call i32 @ARRAY_SIZE(i32 %517)
  store i32 %518, i32* %5, align 4
  br label %519

519:                                              ; preds = %516, %26
  %520 = load i32, i32* %5, align 4
  ret i32 %520
}

declare dso_local %struct.bnxt_re_dev* @to_bnxt_re_dev(%struct.ib_device*, %struct.ib_device*) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bnxt_qplib_get_roce_stats(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
