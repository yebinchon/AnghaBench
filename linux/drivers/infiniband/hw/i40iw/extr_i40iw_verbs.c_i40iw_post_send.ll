; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { i32, i32, %struct.ib_send_wr*, i8*, %struct.TYPE_24__, %struct.TYPE_31__*, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_31__ = type { i32, i32, i64 }
%struct.i40iw_qp = type { i32, %struct.TYPE_36__, %struct.TYPE_26__*, i64, i64 }
%struct.TYPE_36__ = type { %struct.i40iw_qp_uk }
%struct.i40iw_qp_uk = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 (%struct.i40iw_qp_uk.0*, %struct.i40iw_post_sq_info*, i32, i32)*, i32 (%struct.i40iw_qp_uk.1*, %struct.i40iw_post_sq_info.2*, i32, i32)*, i32 (%struct.i40iw_qp_uk.3*, %struct.i40iw_post_sq_info.4*, i32)*, i32 (%struct.i40iw_qp_uk.5*, %struct.i40iw_post_sq_info.6*, i32)*, i32 (%struct.i40iw_qp_uk.7*, %struct.i40iw_post_sq_info.8*, i32, i32)*, i32 (%struct.i40iw_qp_uk.9*, %struct.i40iw_post_sq_info.10*, i32)*, i32 (%struct.i40iw_qp_uk.11*)* }
%struct.i40iw_qp_uk.0 = type opaque
%struct.i40iw_post_sq_info = type opaque
%struct.i40iw_qp_uk.1 = type opaque
%struct.i40iw_post_sq_info.2 = type opaque
%struct.i40iw_qp_uk.3 = type opaque
%struct.i40iw_post_sq_info.4 = type opaque
%struct.i40iw_qp_uk.5 = type opaque
%struct.i40iw_post_sq_info.6 = type opaque
%struct.i40iw_qp_uk.7 = type opaque
%struct.i40iw_post_sq_info.8 = type opaque
%struct.i40iw_qp_uk.9 = type opaque
%struct.i40iw_post_sq_info.10 = type opaque
%struct.i40iw_qp_uk.11 = type opaque
%struct.TYPE_26__ = type { %struct.i40iw_sc_dev }
%struct.i40iw_sc_dev = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 (%struct.TYPE_36__*, %struct.i40iw_post_sq_info.12*, i32)* }
%struct.i40iw_post_sq_info.12 = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_46__, %struct.TYPE_45__, %struct.TYPE_42__, %struct.TYPE_40__, %struct.TYPE_34__, %struct.TYPE_33__ }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__, %struct.TYPE_43__ }
%struct.TYPE_44__ = type { i32, i32, i64 }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_41__, i32, i8* }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_39__, i32, i8* }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_34__ = type { %struct.i40iw_sge*, i32 }
%struct.i40iw_sge = type { i32 }
%struct.TYPE_33__ = type { i32, i8* }
%struct.i40iw_mr = type { i32, %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.i40iw_pble_alloc }
%struct.i40iw_pble_alloc = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i64 }
%struct.i40iw_fast_reg_stag_info = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, %struct.TYPE_32__, i32 }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_37__ = type { i32, i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_SEND_FENCE = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@I40IW_OP_TYPE_SEND_SOL = common dso_local global i32 0, align 4
@I40IW_OP_TYPE_SEND = common dso_local global i32 0, align 4
@I40IW_OP_TYPE_SEND_SOL_INV = common dso_local global i32 0, align 4
@I40IW_OP_TYPE_SEND_INV = common dso_local global i32 0, align 4
@IB_SEND_INLINE = common dso_local global i32 0, align 4
@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I40IW_OP_TYPE_RDMA_WRITE = common dso_local global i32 0, align 4
@I40IW_MAX_SGE_RD = common dso_local global i32 0, align 4
@I40IW_OP_TYPE_RDMA_READ = common dso_local global i32 0, align 4
@I40IW_OP_TYPE_INV_STAG = common dso_local global i32 0, align 4
@I40IW_ACCESS_FLAGS_LOCALREAD = common dso_local global i32 0, align 4
@I40IW_ADDR_TYPE_VA_BASED = common dso_local global i32 0, align 4
@I40IW_MIN_PAGES_PER_FMR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c" upost_send bad opcode = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**)* @i40iw_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca %struct.ib_send_wr**, align 8
  %7 = alloca %struct.i40iw_qp*, align 8
  %8 = alloca %struct.i40iw_qp_uk*, align 8
  %9 = alloca %struct.i40iw_post_sq_info.12, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40iw_mr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.i40iw_pble_alloc*, align 8
  %17 = alloca %struct.i40iw_sc_dev*, align 8
  %18 = alloca %struct.i40iw_fast_reg_stag_info, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %6, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %20 = bitcast %struct.ib_qp* %19 to %struct.i40iw_qp*
  store %struct.i40iw_qp* %20, %struct.i40iw_qp** %7, align 8
  %21 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %22 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 0
  store %struct.i40iw_qp_uk* %23, %struct.i40iw_qp_uk** %8, align 8
  %24 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %25 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %24, i32 0, i32 0
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %29 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %519

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %514, %35
  %37 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %38 = icmp ne %struct.ib_send_wr* %37, null
  br i1 %38, label %39, label %518

39:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  %40 = call i32 @memset(%struct.i40iw_post_sq_info.12* %9, i32 0, i32 200)
  %41 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %42 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 11
  store i8* %43, i8** %44, align 8
  %45 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %39
  %52 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %53 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %39
  %57 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %56, %51
  %59 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %60 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IB_SEND_FENCE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %58
  %68 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %69 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %503 [
    i32 129, label %71
    i32 128, label %71
    i32 131, label %184
    i32 132, label %290
    i32 133, label %291
    i32 134, label %369
    i32 130, label %393
  ]

71:                                               ; preds = %67, %67
  %72 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %73 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 129
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %78 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* @I40IW_OP_TYPE_SEND_SOL, align 4
  %85 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 15
  store i32 %84, i32* %85, align 8
  br label %89

86:                                               ; preds = %76
  %87 = load i32, i32* @I40IW_OP_TYPE_SEND, align 4
  %88 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 15
  store i32 %87, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %83
  br label %104

90:                                               ; preds = %71
  %91 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %92 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @I40IW_OP_TYPE_SEND_SOL_INV, align 4
  %99 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 15
  store i32 %98, i32* %99, align 8
  br label %103

100:                                              ; preds = %90
  %101 = load i32, i32* @I40IW_OP_TYPE_SEND_INV, align 4
  %102 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 15
  store i32 %101, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %89
  %105 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %106 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IB_SEND_INLINE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %143

111:                                              ; preds = %104
  %112 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %113 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %112, i32 0, i32 5
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i8*
  %119 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %123 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %122, i32 0, i32 5
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 8
  %131 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %132 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 0
  %134 = load i32 (%struct.i40iw_qp_uk.0*, %struct.i40iw_post_sq_info*, i32, i32)*, i32 (%struct.i40iw_qp_uk.0*, %struct.i40iw_post_sq_info*, i32, i32)** %133, align 8
  %135 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %136 = bitcast %struct.i40iw_qp_uk* %135 to %struct.i40iw_qp_uk.0*
  %137 = bitcast %struct.i40iw_post_sq_info.12* %9 to %struct.i40iw_post_sq_info*
  %138 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %139 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 %134(%struct.i40iw_qp_uk.0* %136, %struct.i40iw_post_sq_info* %137, i32 %141, i32 0)
  store i32 %142, i32* %10, align 4
  br label %169

143:                                              ; preds = %104
  %144 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %145 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %148 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 8
  %150 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %151 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %150, i32 0, i32 5
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %151, align 8
  %153 = bitcast %struct.TYPE_31__* %152 to %struct.i40iw_sge*
  %154 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 0
  store %struct.i40iw_sge* %153, %struct.i40iw_sge** %156, align 8
  %157 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %158 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 1
  %160 = load i32 (%struct.i40iw_qp_uk.1*, %struct.i40iw_post_sq_info.2*, i32, i32)*, i32 (%struct.i40iw_qp_uk.1*, %struct.i40iw_post_sq_info.2*, i32, i32)** %159, align 8
  %161 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %162 = bitcast %struct.i40iw_qp_uk* %161 to %struct.i40iw_qp_uk.1*
  %163 = bitcast %struct.i40iw_post_sq_info.12* %9 to %struct.i40iw_post_sq_info.2*
  %164 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %165 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 %160(%struct.i40iw_qp_uk.1* %162, %struct.i40iw_post_sq_info.2* %163, i32 %167, i32 0)
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %143, %111
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %11, align 4
  br label %182

179:                                              ; preds = %172
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %179, %176
  br label %183

183:                                              ; preds = %182, %169
  br label %510

184:                                              ; preds = %67
  %185 = load i32, i32* @I40IW_OP_TYPE_RDMA_WRITE, align 4
  %186 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 15
  store i32 %185, i32* %186, align 8
  %187 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %188 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @IB_SEND_INLINE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %237

193:                                              ; preds = %184
  %194 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %195 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %194, i32 0, i32 5
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to i8*
  %201 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %202, i32 0, i32 2
  store i8* %200, i8** %203, align 8
  %204 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %205 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %204, i32 0, i32 5
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i64 0
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %211, i32 0, i32 1
  store i32 %209, i32* %212, align 8
  %213 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %214 = call %struct.TYPE_38__* @rdma_wr(%struct.ib_send_wr* %213)
  %215 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %218 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %219, i32 0, i32 1
  store i32 %216, i32* %220, align 4
  %221 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %222 = call %struct.TYPE_38__* @rdma_wr(%struct.ib_send_wr* %221)
  %223 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %227, i32 0, i32 0
  store i32 %224, i32* %228, align 8
  %229 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %230 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %230, i32 0, i32 2
  %232 = load i32 (%struct.i40iw_qp_uk.3*, %struct.i40iw_post_sq_info.4*, i32)*, i32 (%struct.i40iw_qp_uk.3*, %struct.i40iw_post_sq_info.4*, i32)** %231, align 8
  %233 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %234 = bitcast %struct.i40iw_qp_uk* %233 to %struct.i40iw_qp_uk.3*
  %235 = bitcast %struct.i40iw_post_sq_info.12* %9 to %struct.i40iw_post_sq_info.4*
  %236 = call i32 %232(%struct.i40iw_qp_uk.3* %234, %struct.i40iw_post_sq_info.4* %235, i32 0)
  store i32 %236, i32* %10, align 4
  br label %275

237:                                              ; preds = %184
  %238 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %239 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %238, i32 0, i32 5
  %240 = load %struct.TYPE_31__*, %struct.TYPE_31__** %239, align 8
  %241 = bitcast %struct.TYPE_31__* %240 to i8*
  %242 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %243 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %243, i32 0, i32 2
  store i8* %241, i8** %244, align 8
  %245 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %246 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %249, i32 0, i32 1
  store i32 %247, i32* %250, align 8
  %251 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %252 = call %struct.TYPE_38__* @rdma_wr(%struct.ib_send_wr* %251)
  %253 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %256 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %257, i32 0, i32 1
  store i32 %254, i32* %258, align 4
  %259 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %260 = call %struct.TYPE_38__* @rdma_wr(%struct.ib_send_wr* %259)
  %261 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %265, i32 0, i32 0
  store i32 %262, i32* %266, align 8
  %267 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %268 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %268, i32 0, i32 3
  %270 = load i32 (%struct.i40iw_qp_uk.5*, %struct.i40iw_post_sq_info.6*, i32)*, i32 (%struct.i40iw_qp_uk.5*, %struct.i40iw_post_sq_info.6*, i32)** %269, align 8
  %271 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %272 = bitcast %struct.i40iw_qp_uk* %271 to %struct.i40iw_qp_uk.5*
  %273 = bitcast %struct.i40iw_post_sq_info.12* %9 to %struct.i40iw_post_sq_info.6*
  %274 = call i32 %270(%struct.i40iw_qp_uk.5* %272, %struct.i40iw_post_sq_info.6* %273, i32 0)
  store i32 %274, i32* %10, align 4
  br label %275

275:                                              ; preds = %237, %193
  %276 = load i32, i32* %10, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %289

278:                                              ; preds = %275
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = load i32, i32* @ENOMEM, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %11, align 4
  br label %288

285:                                              ; preds = %278
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %11, align 4
  br label %288

288:                                              ; preds = %285, %282
  br label %289

289:                                              ; preds = %288, %275
  br label %510

290:                                              ; preds = %67
  store i32 1, i32* %13, align 4
  br label %291

291:                                              ; preds = %67, %290
  %292 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %293 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @I40IW_MAX_SGE_RD, align 4
  %296 = icmp sgt i32 %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %291
  %298 = load i32, i32* @EINVAL, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %11, align 4
  br label %510

300:                                              ; preds = %291
  %301 = load i32, i32* @I40IW_OP_TYPE_RDMA_READ, align 4
  %302 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 15
  store i32 %301, i32* %302, align 8
  %303 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %304 = call %struct.TYPE_38__* @rdma_wr(%struct.ib_send_wr* %303)
  %305 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %308 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %309, i32 0, i32 1
  store i32 %306, i32* %310, align 4
  %311 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %312 = call %struct.TYPE_38__* @rdma_wr(%struct.ib_send_wr* %311)
  %313 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %316 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %317, i32 0, i32 0
  store i32 %314, i32* %318, align 8
  %319 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %320 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %319, i32 0, i32 5
  %321 = load %struct.TYPE_31__*, %struct.TYPE_31__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %326, i32 0, i32 2
  store i64 %323, i64* %327, align 8
  %328 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %329 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %328, i32 0, i32 5
  %330 = load %struct.TYPE_31__*, %struct.TYPE_31__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %334 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %335, i32 0, i32 1
  store i32 %332, i32* %336, align 4
  %337 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %338 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %337, i32 0, i32 5
  %339 = load %struct.TYPE_31__*, %struct.TYPE_31__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %343 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %344, i32 0, i32 0
  store i32 %341, i32* %345, align 8
  %346 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %347 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %347, i32 0, i32 4
  %349 = load i32 (%struct.i40iw_qp_uk.7*, %struct.i40iw_post_sq_info.8*, i32, i32)*, i32 (%struct.i40iw_qp_uk.7*, %struct.i40iw_post_sq_info.8*, i32, i32)** %348, align 8
  %350 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %351 = bitcast %struct.i40iw_qp_uk* %350 to %struct.i40iw_qp_uk.7*
  %352 = bitcast %struct.i40iw_post_sq_info.12* %9 to %struct.i40iw_post_sq_info.8*
  %353 = load i32, i32* %13, align 4
  %354 = call i32 %349(%struct.i40iw_qp_uk.7* %351, %struct.i40iw_post_sq_info.8* %352, i32 %353, i32 0)
  store i32 %354, i32* %10, align 4
  %355 = load i32, i32* %10, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %368

357:                                              ; preds = %300
  %358 = load i32, i32* %10, align 4
  %359 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %364

361:                                              ; preds = %357
  %362 = load i32, i32* @ENOMEM, align 4
  %363 = sub nsw i32 0, %362
  store i32 %363, i32* %11, align 4
  br label %367

364:                                              ; preds = %357
  %365 = load i32, i32* @EINVAL, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %11, align 4
  br label %367

367:                                              ; preds = %364, %361
  br label %368

368:                                              ; preds = %367, %300
  br label %510

369:                                              ; preds = %67
  %370 = load i32, i32* @I40IW_OP_TYPE_INV_STAG, align 4
  %371 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 15
  store i32 %370, i32* %371, align 8
  %372 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %373 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %372, i32 0, i32 4
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = getelementptr inbounds %struct.i40iw_post_sq_info.12, %struct.i40iw_post_sq_info.12* %9, i32 0, i32 14
  %377 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %377, i32 0, i32 0
  store i32 %375, i32* %378, align 8
  %379 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %380 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %380, i32 0, i32 5
  %382 = load i32 (%struct.i40iw_qp_uk.9*, %struct.i40iw_post_sq_info.10*, i32)*, i32 (%struct.i40iw_qp_uk.9*, %struct.i40iw_post_sq_info.10*, i32)** %381, align 8
  %383 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %384 = bitcast %struct.i40iw_qp_uk* %383 to %struct.i40iw_qp_uk.9*
  %385 = bitcast %struct.i40iw_post_sq_info.12* %9 to %struct.i40iw_post_sq_info.10*
  %386 = call i32 %382(%struct.i40iw_qp_uk.9* %384, %struct.i40iw_post_sq_info.10* %385, i32 1)
  store i32 %386, i32* %10, align 4
  %387 = load i32, i32* %10, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %369
  %390 = load i32, i32* @ENOMEM, align 4
  %391 = sub nsw i32 0, %390
  store i32 %391, i32* %11, align 4
  br label %392

392:                                              ; preds = %389, %369
  br label %510

393:                                              ; preds = %67
  %394 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %395 = call %struct.TYPE_37__* @reg_wr(%struct.ib_send_wr* %394)
  %396 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %395, i32 0, i32 2
  %397 = load %struct.TYPE_35__*, %struct.TYPE_35__** %396, align 8
  %398 = call %struct.i40iw_mr* @to_iwmr(%struct.TYPE_35__* %397)
  store %struct.i40iw_mr* %398, %struct.i40iw_mr** %14, align 8
  %399 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %400 = call %struct.TYPE_37__* @reg_wr(%struct.ib_send_wr* %399)
  %401 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  store i32 %402, i32* %15, align 4
  %403 = load %struct.i40iw_mr*, %struct.i40iw_mr** %14, align 8
  %404 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %404, i32 0, i32 0
  store %struct.i40iw_pble_alloc* %405, %struct.i40iw_pble_alloc** %16, align 8
  %406 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %407 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %406, i32 0, i32 2
  %408 = load %struct.TYPE_26__*, %struct.TYPE_26__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %408, i32 0, i32 0
  store %struct.i40iw_sc_dev* %409, %struct.i40iw_sc_dev** %17, align 8
  %410 = bitcast %struct.i40iw_fast_reg_stag_info* %18 to %struct.i40iw_post_sq_info.12*
  %411 = call i32 @memset(%struct.i40iw_post_sq_info.12* %410, i32 0, i32 200)
  %412 = load i32, i32* @I40IW_ACCESS_FLAGS_LOCALREAD, align 4
  %413 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 13
  store i32 %412, i32* %413, align 4
  %414 = load i32, i32* %15, align 4
  %415 = call i32 @i40iw_get_user_access(i32 %414)
  %416 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 13
  %417 = load i32, i32* %416, align 4
  %418 = or i32 %417, %415
  store i32 %418, i32* %416, align 4
  %419 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %420 = call %struct.TYPE_37__* @reg_wr(%struct.ib_send_wr* %419)
  %421 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = and i32 %422, 255
  %424 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 2
  store i32 %423, i32* %424, align 8
  %425 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %426 = call %struct.TYPE_37__* @reg_wr(%struct.ib_send_wr* %425)
  %427 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = ashr i32 %428, 8
  %430 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 3
  store i32 %429, i32* %430, align 4
  %431 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %432 = call %struct.TYPE_37__* @reg_wr(%struct.ib_send_wr* %431)
  %433 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %432, i32 0, i32 2
  %434 = load %struct.TYPE_35__*, %struct.TYPE_35__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 12
  store i32 %436, i32* %437, align 8
  %438 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %439 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %438, i32 0, i32 3
  %440 = load i8*, i8** %439, align 8
  %441 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 11
  store i8* %440, i8** %441, align 8
  %442 = load i32, i32* @I40IW_ADDR_TYPE_VA_BASED, align 4
  %443 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 10
  store i32 %442, i32* %443, align 8
  %444 = load %struct.i40iw_mr*, %struct.i40iw_mr** %14, align 8
  %445 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  %449 = inttoptr i64 %448 to i8*
  %450 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 9
  store i8* %449, i8** %450, align 8
  %451 = load %struct.i40iw_mr*, %struct.i40iw_mr** %14, align 8
  %452 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 8
  store i32 %454, i32* %455, align 8
  %456 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %16, align 8
  %457 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %457, i32 0, i32 1
  %459 = load i64, i64* %458, align 8
  %460 = inttoptr i64 %459 to i8**
  %461 = load i8*, i8** %460, align 8
  %462 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 7
  store i8* %461, i8** %462, align 8
  %463 = load %struct.i40iw_pble_alloc*, %struct.i40iw_pble_alloc** %16, align 8
  %464 = getelementptr inbounds %struct.i40iw_pble_alloc, %struct.i40iw_pble_alloc* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 6
  store i32 %466, i32* %467, align 8
  %468 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %469 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = load i32, i32* @IB_SEND_FENCE, align 4
  %472 = and i32 %470, %471
  %473 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 4
  store i32 %472, i32* %473, align 8
  %474 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %475 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %478 = and i32 %476, %477
  %479 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 0
  store i32 %478, i32* %479, align 8
  %480 = load %struct.i40iw_mr*, %struct.i40iw_mr** %14, align 8
  %481 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load i32, i32* @I40IW_MIN_PAGES_PER_FMR, align 4
  %484 = icmp sgt i32 %482, %483
  br i1 %484, label %485, label %487

485:                                              ; preds = %393
  %486 = getelementptr inbounds %struct.i40iw_fast_reg_stag_info, %struct.i40iw_fast_reg_stag_info* %18, i32 0, i32 5
  store i32 1, i32* %486, align 4
  br label %487

487:                                              ; preds = %485, %393
  %488 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %17, align 8
  %489 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %488, i32 0, i32 0
  %490 = load %struct.TYPE_29__*, %struct.TYPE_29__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %490, i32 0, i32 0
  %492 = load i32 (%struct.TYPE_36__*, %struct.i40iw_post_sq_info.12*, i32)*, i32 (%struct.TYPE_36__*, %struct.i40iw_post_sq_info.12*, i32)** %491, align 8
  %493 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %494 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %493, i32 0, i32 1
  %495 = bitcast %struct.i40iw_fast_reg_stag_info* %18 to %struct.i40iw_post_sq_info.12*
  %496 = call i32 %492(%struct.TYPE_36__* %494, %struct.i40iw_post_sq_info.12* %495, i32 1)
  store i32 %496, i32* %10, align 4
  %497 = load i32, i32* %10, align 4
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %502

499:                                              ; preds = %487
  %500 = load i32, i32* @ENOMEM, align 4
  %501 = sub nsw i32 0, %500
  store i32 %501, i32* %11, align 4
  br label %502

502:                                              ; preds = %499, %487
  br label %510

503:                                              ; preds = %67
  %504 = load i32, i32* @EINVAL, align 4
  %505 = sub nsw i32 0, %504
  store i32 %505, i32* %11, align 4
  %506 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %507 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %508)
  br label %510

510:                                              ; preds = %503, %502, %392, %368, %297, %289, %183
  %511 = load i32, i32* %11, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %510
  br label %518

514:                                              ; preds = %510
  %515 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %516 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %515, i32 0, i32 2
  %517 = load %struct.ib_send_wr*, %struct.ib_send_wr** %516, align 8
  store %struct.ib_send_wr* %517, %struct.ib_send_wr** %5, align 8
  br label %36

518:                                              ; preds = %513, %36
  br label %519

519:                                              ; preds = %518, %32
  %520 = load i32, i32* %11, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %525

522:                                              ; preds = %519
  %523 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %524 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %6, align 8
  store %struct.ib_send_wr* %523, %struct.ib_send_wr** %524, align 8
  br label %533

525:                                              ; preds = %519
  %526 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %527 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %527, i32 0, i32 6
  %529 = load i32 (%struct.i40iw_qp_uk.11*)*, i32 (%struct.i40iw_qp_uk.11*)** %528, align 8
  %530 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %531 = bitcast %struct.i40iw_qp_uk* %530 to %struct.i40iw_qp_uk.11*
  %532 = call i32 %529(%struct.i40iw_qp_uk.11* %531)
  br label %533

533:                                              ; preds = %525, %522
  %534 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %535 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %534, i32 0, i32 0
  %536 = load i64, i64* %12, align 8
  %537 = call i32 @spin_unlock_irqrestore(i32* %535, i64 %536)
  %538 = load i32, i32* %11, align 4
  ret i32 %538
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.i40iw_post_sq_info.12*, i32, i32) #1

declare dso_local %struct.TYPE_38__* @rdma_wr(%struct.ib_send_wr*) #1

declare dso_local %struct.i40iw_mr* @to_iwmr(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_37__* @reg_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @i40iw_get_user_access(i32) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
