; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_qp_prepare_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_qp_prepare_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.siw_iwarp_tx = type { i64*, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_19__, i64, %struct.siw_wqe }
%struct.TYPE_19__ = type { %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_20__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_30__ }
%struct.TYPE_29__ = type { i8* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i8*, i8* }
%struct.TYPE_25__ = type { i8*, i8* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_22__ = type { i64, i32, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_30__ = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32 }
%struct.siw_wqe = type { i32, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i32 }

@iwarp_pktinfo = common dso_local global %struct.TYPE_21__* null, align 8
@RDMAP_RDMA_READ_REQ = common dso_local global i64 0, align 8
@RDMAP_UNTAGGED_QN_RDMA_READ = common dso_local global i64 0, align 8
@SIW_WQE_SOLICITED = common dso_local global i32 0, align 4
@RDMAP_SEND_SE = common dso_local global i64 0, align 8
@RDMAP_SEND = common dso_local global i64 0, align 8
@RDMAP_UNTAGGED_QN_SEND = common dso_local global i64 0, align 8
@RDMAP_SEND_SE_INVAL = common dso_local global i64 0, align 8
@RDMAP_SEND_INVAL = common dso_local global i64 0, align 8
@RDMAP_RDMA_WRITE = common dso_local global i64 0, align 8
@RDMAP_RDMA_READ_RESP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"stale wqe type %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MAX_HDR_INLINE = common dso_local global i32 0, align 4
@MPA_HDR_SIZE = common dso_local global i32 0, align 4
@DDP_FLAG_TAGGED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MPA_CRC_SIZE = common dso_local global i32 0, align 4
@PKT_COMPLETE = common dso_local global i32 0, align 4
@SENDPAGE_THRESH = common dso_local global i64 0, align 8
@SIW_WQE_SIGNALLED = common dso_local global i32 0, align 4
@PKT_FRAGMENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_iwarp_tx*)* @siw_qp_prepare_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_qp_prepare_tx(%struct.siw_iwarp_tx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siw_iwarp_tx*, align 8
  %4 = alloca %struct.siw_wqe*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.siw_iwarp_tx* %0, %struct.siw_iwarp_tx** %3, align 8
  %7 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %8 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %7, i32 0, i32 10
  store %struct.siw_wqe* %8, %struct.siw_wqe** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %10 = call i32 @tx_type(%struct.siw_wqe* %9)
  switch i32 %10, label %306 [
    i32 133, label %11
    i32 132, label %11
    i32 130, label %107
    i32 129, label %167
    i32 128, label %232
    i32 131, label %269
  ]

11:                                               ; preds = %1, %1
  %12 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %13 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** @iwarp_pktinfo, align 8
  %16 = load i64, i64* @RDMAP_RDMA_READ_REQ, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = call i32 @memcpy(%struct.TYPE_20__* %14, i32* %18, i32 4)
  %20 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %21 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %20, i32 0, i32 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 8
  store i32 0, i32* %23, align 8
  %24 = load i64, i64* @RDMAP_UNTAGGED_QN_RDMA_READ, align 8
  %25 = call i8* @htonl(i64 %24)
  %26 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %27 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 10
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 7
  store i8* %25, i8** %29, align 8
  %30 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %31 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @RDMAP_UNTAGGED_QN_RDMA_READ, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = call i8* @htonl(i64 %36)
  %38 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %39 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 10
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 6
  store i8* %37, i8** %41, align 8
  %42 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %43 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 10
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 5
  store i32 0, i32* %45, align 8
  %46 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %47 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i8* @htonl(i64 %52)
  %54 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %55 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 10
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 4
  store i8* %53, i8** %57, align 8
  %58 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %59 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @cpu_to_be64(i32 %64)
  %66 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %67 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 10
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 3
  store i8* %65, i8** %69, align 8
  %70 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %71 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @htonl(i64 %73)
  %75 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %76 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 10
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 2
  store i8* %74, i8** %78, align 8
  %79 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %80 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @cpu_to_be64(i32 %82)
  %84 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %85 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 10
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 1
  store i8* %83, i8** %87, align 8
  %88 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %89 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i8* @htonl(i64 %94)
  %96 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %97 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 10
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  %100 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %101 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %100, i32 0, i32 1
  store i32 4, i32* %101, align 8
  %102 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %103 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 9
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = bitcast i32* %105 to i8*
  store i8* %106, i8** %5, align 8
  br label %314

107:                                              ; preds = %1
  %108 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %109 = call i32 @tx_flags(%struct.siw_wqe* %108)
  %110 = load i32, i32* @SIW_WQE_SOLICITED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %115 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** @iwarp_pktinfo, align 8
  %118 = load i64, i64* @RDMAP_SEND_SE, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = call i32 @memcpy(%struct.TYPE_20__* %116, i32* %120, i32 4)
  br label %131

122:                                              ; preds = %107
  %123 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %124 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** @iwarp_pktinfo, align 8
  %127 = load i64, i64* @RDMAP_SEND, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = call i32 @memcpy(%struct.TYPE_20__* %125, i32* %129, i32 4)
  br label %131

131:                                              ; preds = %122, %113
  %132 = load i64, i64* @RDMAP_UNTAGGED_QN_SEND, align 8
  %133 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %134 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  store i64 %132, i64* %136, align 8
  %137 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %138 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* @RDMAP_UNTAGGED_QN_SEND, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %141, align 8
  %144 = call i8* @htonl(i64 %143)
  %145 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %146 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %145, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 2
  store i8* %144, i8** %148, align 8
  %149 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %150 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %149, i32 0, i32 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  store i32 0, i32* %152, align 8
  %153 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %154 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %153, i32 0, i32 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  store i8* null, i8** %156, align 8
  %157 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %158 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %157, i32 0, i32 1
  store i32 4, i32* %158, align 8
  %159 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %160 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %159, i32 0, i32 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = bitcast i32* %162 to i8*
  store i8* %163, i8** %5, align 8
  %164 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %165 = load i8*, i8** %5, align 8
  %166 = call i32 @siw_try_1seg(%struct.siw_iwarp_tx* %164, i8* %165)
  store i32 %166, i32* %6, align 4
  br label %314

167:                                              ; preds = %1
  %168 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %169 = call i32 @tx_flags(%struct.siw_wqe* %168)
  %170 = load i32, i32* @SIW_WQE_SOLICITED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %167
  %174 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %175 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %174, i32 0, i32 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** @iwarp_pktinfo, align 8
  %178 = load i64, i64* @RDMAP_SEND_SE_INVAL, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = call i32 @memcpy(%struct.TYPE_20__* %176, i32* %180, i32 4)
  br label %191

182:                                              ; preds = %167
  %183 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %184 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** @iwarp_pktinfo, align 8
  %187 = load i64, i64* @RDMAP_SEND_INVAL, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 0
  %190 = call i32 @memcpy(%struct.TYPE_20__* %185, i32* %189, i32 4)
  br label %191

191:                                              ; preds = %182, %173
  %192 = load i64, i64* @RDMAP_UNTAGGED_QN_SEND, align 8
  %193 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %194 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %193, i32 0, i32 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 0
  store i64 %192, i64* %196, align 8
  %197 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %198 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load i64, i64* @RDMAP_UNTAGGED_QN_SEND, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %201, align 8
  %204 = call i8* @htonl(i64 %203)
  %205 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %206 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %205, i32 0, i32 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 2
  store i8* %204, i8** %208, align 8
  %209 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %210 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %209, i32 0, i32 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 1
  store i32 0, i32* %212, align 8
  %213 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %214 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i8* @cpu_to_be32(i64 %216)
  %218 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %219 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %218, i32 0, i32 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  store i8* %217, i8** %221, align 8
  %222 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %223 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %222, i32 0, i32 1
  store i32 4, i32* %223, align 8
  %224 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %225 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %224, i32 0, i32 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 6
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = bitcast i32* %227 to i8*
  store i8* %228, i8** %5, align 8
  %229 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %230 = load i8*, i8** %5, align 8
  %231 = call i32 @siw_try_1seg(%struct.siw_iwarp_tx* %229, i8* %230)
  store i32 %231, i32* %6, align 4
  br label %314

232:                                              ; preds = %1
  %233 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %234 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %233, i32 0, i32 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** @iwarp_pktinfo, align 8
  %237 = load i64, i64* @RDMAP_RDMA_WRITE, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  %240 = call i32 @memcpy(%struct.TYPE_20__* %235, i32* %239, i32 4)
  %241 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %242 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = call i8* @htonl(i64 %244)
  %246 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %247 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %246, i32 0, i32 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 1
  store i8* %245, i8** %249, align 8
  %250 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %251 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call i8* @cpu_to_be64(i32 %253)
  %255 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %256 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %255, i32 0, i32 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 5
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 0
  store i8* %254, i8** %258, align 8
  %259 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %260 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %259, i32 0, i32 1
  store i32 4, i32* %260, align 8
  %261 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %262 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %261, i32 0, i32 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 0
  %265 = bitcast i32* %264 to i8*
  store i8* %265, i8** %5, align 8
  %266 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %267 = load i8*, i8** %5, align 8
  %268 = call i32 @siw_try_1seg(%struct.siw_iwarp_tx* %266, i8* %267)
  store i32 %268, i32* %6, align 4
  br label %314

269:                                              ; preds = %1
  %270 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %271 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %270, i32 0, i32 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** @iwarp_pktinfo, align 8
  %274 = load i64, i64* @RDMAP_RDMA_READ_RESP, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 0
  %277 = call i32 @memcpy(%struct.TYPE_20__* %272, i32* %276, i32 4)
  %278 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %279 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = call i8* @cpu_to_be32(i64 %281)
  %283 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %284 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %283, i32 0, i32 8
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 1
  store i8* %282, i8** %286, align 8
  %287 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %288 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = call i8* @cpu_to_be64(i32 %290)
  %292 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %293 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %292, i32 0, i32 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 4
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 0
  store i8* %291, i8** %295, align 8
  %296 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %297 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %296, i32 0, i32 1
  store i32 4, i32* %297, align 8
  %298 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %299 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %298, i32 0, i32 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %300, i32 0, i32 0
  %302 = bitcast i32* %301 to i8*
  store i8* %302, i8** %5, align 8
  %303 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %304 = load i8*, i8** %5, align 8
  %305 = call i32 @siw_try_1seg(%struct.siw_iwarp_tx* %303, i8* %304)
  store i32 %305, i32* %6, align 4
  br label %314

306:                                              ; preds = %1
  %307 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %308 = call i32 @tx_qp(%struct.siw_iwarp_tx* %307)
  %309 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %310 = call i32 @tx_type(%struct.siw_wqe* %309)
  %311 = call i32 @siw_dbg_qp(i32 %308, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %310)
  %312 = load i32, i32* @EOPNOTSUPP, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %2, align 4
  br label %461

314:                                              ; preds = %269, %232, %191, %131, %11
  %315 = load i32, i32* %6, align 4
  %316 = icmp slt i32 %315, 0
  %317 = zext i1 %316 to i32
  %318 = call i64 @unlikely(i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %314
  %321 = load i32, i32* %6, align 4
  store i32 %321, i32* %2, align 4
  br label %461

322:                                              ; preds = %314
  %323 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %324 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %323, i32 0, i32 9
  store i64 0, i64* %324, align 8
  %325 = load i32, i32* %6, align 4
  %326 = load i32, i32* @MAX_HDR_INLINE, align 4
  %327 = icmp sle i32 %325, %326
  br i1 %327, label %328, label %425

328:                                              ; preds = %322
  %329 = load i32, i32* %6, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %385

331:                                              ; preds = %328
  %332 = load i32, i32* %6, align 4
  %333 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %334 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %333, i32 0, i32 0
  store i32 %332, i32* %334, align 8
  %335 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %336 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* %6, align 4
  %339 = add nsw i32 %337, %338
  %340 = load i32, i32* @MPA_HDR_SIZE, align 4
  %341 = sub nsw i32 %339, %340
  %342 = call i32 @htons(i32 %341)
  %343 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %344 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %343, i32 0, i32 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 1
  store i32 %342, i32* %346, align 4
  %347 = load i32, i32* %6, align 4
  %348 = sub nsw i32 0, %347
  %349 = and i32 %348, 3
  %350 = load i32, i32* %6, align 4
  %351 = add nsw i32 %350, %349
  store i32 %351, i32* %6, align 4
  %352 = load i32, i32* %6, align 4
  %353 = load i8*, i8** %5, align 8
  %354 = sext i32 %352 to i64
  %355 = getelementptr inbounds i8, i8* %353, i64 %354
  store i8* %355, i8** %5, align 8
  %356 = load i32, i32* %6, align 4
  %357 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %358 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 8
  %360 = add nsw i32 %359, %356
  store i32 %360, i32* %358, align 8
  %361 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %362 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %361, i32 0, i32 8
  %363 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @DDP_FLAG_TAGGED, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %331
  %370 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %371 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %370, i32 0, i32 8
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %372, i32 0, i32 0
  store i64 0, i64* %373, align 8
  br label %384

374:                                              ; preds = %331
  %375 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %376 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = call i8* @cpu_to_be64(i32 %378)
  %380 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %381 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %380, i32 0, i32 8
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %382, i32 0, i32 0
  store i8* %379, i8** %383, align 8
  br label %384

384:                                              ; preds = %374, %369
  br label %385

385:                                              ; preds = %384, %328
  %386 = load i8*, i8** %5, align 8
  %387 = bitcast i8* %386 to i64*
  store i64 0, i64* %387, align 8
  %388 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %389 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %388, i32 0, i32 7
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %418

392:                                              ; preds = %385
  %393 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %394 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %393, i32 0, i32 7
  %395 = load i64, i64* %394, align 8
  %396 = call i32 @crypto_shash_init(i64 %395)
  %397 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %398 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %397, i32 0, i32 7
  %399 = load i64, i64* %398, align 8
  %400 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %401 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %400, i32 0, i32 8
  %402 = bitcast %struct.TYPE_19__* %401 to i32*
  %403 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %404 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 8
  %406 = call i64 @crypto_shash_update(i64 %399, i32* %402, i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %392
  %409 = load i32, i32* @EINVAL, align 4
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %2, align 4
  br label %461

411:                                              ; preds = %392
  %412 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %413 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %412, i32 0, i32 7
  %414 = load i64, i64* %413, align 8
  %415 = load i8*, i8** %5, align 8
  %416 = bitcast i8* %415 to i32*
  %417 = call i32 @crypto_shash_final(i64 %414, i32* %416)
  br label %418

418:                                              ; preds = %411, %385
  %419 = load i32, i32* @MPA_CRC_SIZE, align 4
  %420 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %421 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, %419
  store i32 %423, i32* %421, align 8
  %424 = load i32, i32* @PKT_COMPLETE, align 4
  store i32 %424, i32* %2, align 4
  br label %461

425:                                              ; preds = %322
  %426 = load i32, i32* @MPA_CRC_SIZE, align 4
  %427 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %428 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = add nsw i32 %429, %426
  store i32 %430, i32* %428, align 8
  %431 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %432 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %431, i32 0, i32 6
  store i64 0, i64* %432, align 8
  %433 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %434 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %433, i32 0, i32 5
  store i64 0, i64* %434, align 8
  %435 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %436 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %435, i32 0, i32 4
  store i64 0, i64* %436, align 8
  %437 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %438 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %437, i32 0, i32 3
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %456

441:                                              ; preds = %425
  %442 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %443 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @SENDPAGE_THRESH, align 8
  %446 = icmp sge i64 %444, %445
  br i1 %446, label %447, label %456

447:                                              ; preds = %441
  %448 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %449 = call i32 @tx_flags(%struct.siw_wqe* %448)
  %450 = load i32, i32* @SIW_WQE_SIGNALLED, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %456, label %453

453:                                              ; preds = %447
  %454 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %455 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %454, i32 0, i32 2
  store i32 1, i32* %455, align 4
  br label %459

456:                                              ; preds = %447, %441, %425
  %457 = load %struct.siw_iwarp_tx*, %struct.siw_iwarp_tx** %3, align 8
  %458 = getelementptr inbounds %struct.siw_iwarp_tx, %struct.siw_iwarp_tx* %457, i32 0, i32 2
  store i32 0, i32* %458, align 4
  br label %459

459:                                              ; preds = %456, %453
  %460 = load i32, i32* @PKT_FRAGMENTED, align 4
  store i32 %460, i32* %2, align 4
  br label %461

461:                                              ; preds = %459, %418, %408, %320, %306
  %462 = load i32, i32* %2, align 4
  ret i32 %462
}

declare dso_local i32 @tx_type(%struct.siw_wqe*) #1

declare dso_local i32 @memcpy(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @tx_flags(%struct.siw_wqe*) #1

declare dso_local i32 @siw_try_1seg(%struct.siw_iwarp_tx*, i8*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @siw_dbg_qp(i32, i8*, i32) #1

declare dso_local i32 @tx_qp(%struct.siw_iwarp_tx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @crypto_shash_init(i64) #1

declare dso_local i64 @crypto_shash_update(i64, i32*, i32) #1

declare dso_local i32 @crypto_shash_final(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
