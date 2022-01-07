; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_proc_mpareply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_proc_mpareply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cep = type { i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__*, i64, %struct.siw_qp* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64, %struct.mpa_rr }
%struct.TYPE_11__ = type { i32, i32 }
%struct.mpa_rr = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.siw_qp = type { i32, %struct.TYPE_14__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.siw_qp_attrs = type { i32, i32, i32, i32, i32 }
%struct.mpa_v2_data = type { i32, i32 }

@MPA_V2_RDMA_NO_RTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MPA_REVISION_2 = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@MPA_KEY_REP = common dso_local global i32 0, align 4
@TERM_ERROR_LAYER_LLP = common dso_local global i32 0, align 4
@LLP_ETYPE_MPA = common dso_local global i32 0, align 4
@LLP_ECODE_INVALID_REQ_RESP = common dso_local global i32 0, align 4
@MPA_RR_FLAG_REJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"got mpa reject\0A\00", align 1
@IW_CM_EVENT_CONNECT_REPLY = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@try_gso = common dso_local global i64 0, align 8
@MPA_RR_FLAG_GSO_EXP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"peer allows GSO on TX\0A\00", align 1
@MPA_RR_FLAG_MARKERS = common dso_local global i32 0, align 4
@mpa_crc_required = common dso_local global i64 0, align 8
@MPA_RR_FLAG_CRC = common dso_local global i32 0, align 4
@mpa_crc_strict = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"reply unsupp: crc %d:%d:%d, m %d:%d\0A\00", align 1
@ECONNREFUSED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MPA_RR_FLAG_ENHANCED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"mpa reply error: vers %d, enhcd %d\0A\00", align 1
@MPA_IRD_ORD_MASK = common dso_local global i32 0, align 4
@relaxed_ird_negotiation = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"ird %d, rep_ord %d, max_ord %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ord %d, rep_ird %d\0A\00", align 1
@LLP_ECODE_INSUFFICIENT_IRD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPA_V2_PEER_TO_PEER = common dso_local global i32 0, align 4
@MPA_V2_RDMA_WRITE_RTR = common dso_local global i32 0, align 4
@MPA_V2_RDMA_READ_RTR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"rtr mode:  req %2x, got %2x\0A\00", align 1
@LLP_ECODE_NO_MATCHING_RTR = common dso_local global i32 0, align 4
@SIW_MPA_CRC = common dso_local global i32 0, align 4
@SIW_QP_STATE_RTS = common dso_local global i32 0, align 4
@SIW_QP_ATTR_STATE = common dso_local global i32 0, align 4
@SIW_QP_ATTR_LLP_HANDLE = common dso_local global i32 0, align 4
@SIW_QP_ATTR_ORD = common dso_local global i32 0, align 4
@SIW_QP_ATTR_IRD = common dso_local global i32 0, align 4
@SIW_QP_ATTR_MPA = common dso_local global i32 0, align 4
@SIW_QP_STATE_RTR = common dso_local global i64 0, align 8
@SIW_EPSTATE_RDMA_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_cep*)* @siw_proc_mpareply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_proc_mpareply(%struct.siw_cep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siw_cep*, align 8
  %4 = alloca %struct.siw_qp_attrs, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.siw_qp*, align 8
  %7 = alloca %struct.mpa_rr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mpa_v2_data*, align 8
  store %struct.siw_cep* %0, %struct.siw_cep** %3, align 8
  %14 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %15 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %14, i32 0, i32 7
  %16 = load %struct.siw_qp*, %struct.siw_qp** %15, align 8
  store %struct.siw_qp* %16, %struct.siw_qp** %6, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @MPA_V2_RDMA_NO_RTR, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %19 = call i32 @siw_recv_mpa_rr(%struct.siw_cep* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %26 = call i32 @siw_cancel_mpatimer(%struct.siw_cep* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %434

31:                                               ; preds = %27
  %32 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %33 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  store %struct.mpa_rr* %34, %struct.mpa_rr** %7, align 8
  %35 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %36 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__mpa_rr_revision(i32 %38)
  %40 = load i32, i32* @MPA_REVISION_2, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EPROTO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %434

45:                                               ; preds = %31
  %46 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %47 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MPA_KEY_REP, align 4
  %50 = call i64 @memcmp(i32 %48, i32 %49, i32 16)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %54 = load i32, i32* @TERM_ERROR_LAYER_LLP, align 4
  %55 = load i32, i32* @LLP_ETYPE_MPA, align 4
  %56 = load i32, i32* @LLP_ECODE_INVALID_REQ_RESP, align 4
  %57 = call i32 @siw_init_terminate(%struct.siw_qp* %53, i32 %54, i32 %55, i32 %56, i32 0)
  %58 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %59 = call i32 @siw_send_terminate(%struct.siw_qp* %58)
  %60 = load i32, i32* @EPROTO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %434

62:                                               ; preds = %45
  %63 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %64 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MPA_RR_FLAG_REJECT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %72 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %74 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %75 = load i32, i32* @ECONNRESET, align 4
  %76 = sub nsw i32 0, %75
  %77 = call i32 @siw_cm_upcall(%struct.siw_cep* %73, i32 %74, i32 %76)
  %78 = load i32, i32* @ECONNRESET, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %441

80:                                               ; preds = %62
  %81 = load i64, i64* @try_gso, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %85 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @MPA_RR_FLAG_GSO_EXP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %83
  %92 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %93 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %94 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %95 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %91, %83, %80
  %98 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %99 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MPA_RR_FLAG_MARKERS, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %97
  %106 = load i64, i64* @mpa_crc_required, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %110 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MPA_RR_FLAG_CRC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %108, %105
  %117 = load i64, i64* @mpa_crc_strict, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %160

119:                                              ; preds = %116
  %120 = load i64, i64* @mpa_crc_required, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %160, label %122

122:                                              ; preds = %119
  %123 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %124 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MPA_RR_FLAG_CRC, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %160

130:                                              ; preds = %122, %108, %97
  %131 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %132 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %133 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MPA_RR_FLAG_CRC, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 1, i32 0
  %141 = load i64, i64* @mpa_crc_required, align 8
  %142 = load i64, i64* @mpa_crc_strict, align 8
  %143 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %144 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @MPA_RR_FLAG_MARKERS, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 1, i32 0
  %152 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %140, i64 %141, i64 %142, i32 %151, i32 0)
  %153 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %154 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %155 = load i32, i32* @ECONNREFUSED, align 4
  %156 = sub nsw i32 0, %155
  %157 = call i32 @siw_cm_upcall(%struct.siw_cep* %153, i32 %154, i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %441

160:                                              ; preds = %122, %119, %116
  %161 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %162 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %347

165:                                              ; preds = %160
  %166 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %167 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @__mpa_rr_revision(i32 %169)
  %171 = load i32, i32* @MPA_REVISION_2, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %181, label %173

173:                                              ; preds = %165
  %174 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %175 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @MPA_RR_FLAG_ENHANCED, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %205, label %181

181:                                              ; preds = %173, %165
  %182 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %183 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %184 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @__mpa_rr_revision(i32 %186)
  %188 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %189 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @MPA_RR_FLAG_ENHANCED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 1, i32 0
  %197 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %182, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %187, i32 %196)
  %198 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %199 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %200 = load i32, i32* @ECONNRESET, align 4
  %201 = sub nsw i32 0, %200
  %202 = call i32 @siw_cm_upcall(%struct.siw_cep* %198, i32 %199, i32 %201)
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %2, align 4
  br label %441

205:                                              ; preds = %173
  %206 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %207 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to %struct.mpa_v2_data*
  store %struct.mpa_v2_data* %210, %struct.mpa_v2_data** %13, align 8
  %211 = load %struct.mpa_v2_data*, %struct.mpa_v2_data** %13, align 8
  %212 = getelementptr inbounds %struct.mpa_v2_data, %struct.mpa_v2_data* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ntohs(i32 %213)
  %215 = load i32, i32* @MPA_IRD_ORD_MASK, align 4
  %216 = and i32 %214, %215
  store i32 %216, i32* %10, align 4
  %217 = load %struct.mpa_v2_data*, %struct.mpa_v2_data** %13, align 8
  %218 = getelementptr inbounds %struct.mpa_v2_data, %struct.mpa_v2_data* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @ntohs(i32 %219)
  %221 = load i32, i32* @MPA_IRD_ORD_MASK, align 4
  %222 = and i32 %220, %221
  store i32 %222, i32* %9, align 4
  %223 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %224 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %253

228:                                              ; preds = %205
  %229 = load i32, i32* @relaxed_ird_negotiation, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %240, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %234 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %233, i32 0, i32 5
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp sgt i32 %232, %238
  br i1 %239, label %240, label %253

240:                                              ; preds = %231, %228
  %241 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %242 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %243 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %9, align 4
  %246 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %247 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %246, i32 0, i32 5
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %241, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %244, i32 %245, i32 %251)
  store i32 1, i32* %11, align 4
  br label %253

253:                                              ; preds = %240, %231, %205
  %254 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %255 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp sgt i32 %256, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %253
  %260 = load i32, i32* @relaxed_ird_negotiation, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %259
  %263 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %264 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %265 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %10, align 4
  %268 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %263, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %266, i32 %267)
  store i32 1, i32* %11, align 4
  br label %269

269:                                              ; preds = %262, %259, %253
  %270 = load i32, i32* %9, align 4
  %271 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %272 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 8
  %273 = load i32, i32* %10, align 4
  %274 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %275 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 4
  %276 = load i32, i32* %11, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %269
  %279 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %280 = load i32, i32* @TERM_ERROR_LAYER_LLP, align 4
  %281 = load i32, i32* @LLP_ETYPE_MPA, align 4
  %282 = load i32, i32* @LLP_ECODE_INSUFFICIENT_IRD, align 4
  %283 = call i32 @siw_init_terminate(%struct.siw_qp* %279, i32 %280, i32 %281, i32 %282, i32 0)
  %284 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %285 = call i32 @siw_send_terminate(%struct.siw_qp* %284)
  %286 = load i32, i32* @ENOMEM, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %8, align 4
  br label %434

288:                                              ; preds = %269
  %289 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %290 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %289, i32 0, i32 4
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @MPA_V2_PEER_TO_PEER, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %288
  %298 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %299 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @MPA_V2_RDMA_WRITE_RTR, align 4
  %304 = load i32, i32* @MPA_V2_RDMA_READ_RTR, align 4
  %305 = or i32 %303, %304
  %306 = and i32 %302, %305
  store i32 %306, i32* %12, align 4
  br label %307

307:                                              ; preds = %297, %288
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* @MPA_V2_RDMA_NO_RTR, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %346

311:                                              ; preds = %307
  %312 = load i32, i32* %12, align 4
  %313 = load %struct.mpa_v2_data*, %struct.mpa_v2_data** %13, align 8
  %314 = getelementptr inbounds %struct.mpa_v2_data, %struct.mpa_v2_data* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = and i32 %312, %315
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %338

318:                                              ; preds = %311
  %319 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %320 = load i32, i32* %12, align 4
  %321 = load %struct.mpa_v2_data*, %struct.mpa_v2_data** %13, align 8
  %322 = getelementptr inbounds %struct.mpa_v2_data, %struct.mpa_v2_data* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @MPA_V2_RDMA_WRITE_RTR, align 4
  %325 = load i32, i32* @MPA_V2_RDMA_READ_RTR, align 4
  %326 = or i32 %324, %325
  %327 = and i32 %323, %326
  %328 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %319, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %320, i32 %327)
  %329 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %330 = load i32, i32* @TERM_ERROR_LAYER_LLP, align 4
  %331 = load i32, i32* @LLP_ETYPE_MPA, align 4
  %332 = load i32, i32* @LLP_ECODE_NO_MATCHING_RTR, align 4
  %333 = call i32 @siw_init_terminate(%struct.siw_qp* %329, i32 %330, i32 %331, i32 %332, i32 0)
  %334 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %335 = call i32 @siw_send_terminate(%struct.siw_qp* %334)
  %336 = load i32, i32* @EPROTO, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %8, align 4
  br label %434

338:                                              ; preds = %311
  %339 = load %struct.mpa_v2_data*, %struct.mpa_v2_data** %13, align 8
  %340 = getelementptr inbounds %struct.mpa_v2_data, %struct.mpa_v2_data* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @MPA_V2_RDMA_WRITE_RTR, align 4
  %343 = load i32, i32* @MPA_V2_RDMA_READ_RTR, align 4
  %344 = or i32 %342, %343
  %345 = and i32 %341, %344
  store i32 %345, i32* %12, align 4
  br label %346

346:                                              ; preds = %338, %307
  br label %347

347:                                              ; preds = %346, %160
  %348 = call i32 @memset(%struct.siw_qp_attrs* %4, i32 0, i32 20)
  %349 = load %struct.mpa_rr*, %struct.mpa_rr** %7, align 8
  %350 = getelementptr inbounds %struct.mpa_rr, %struct.mpa_rr* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @MPA_RR_FLAG_CRC, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %347
  %357 = load i32, i32* @SIW_MPA_CRC, align 4
  %358 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %4, i32 0, i32 4
  store i32 %357, i32* %358, align 4
  br label %359

359:                                              ; preds = %356, %347
  %360 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %361 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %4, i32 0, i32 0
  store i32 %362, i32* %363, align 4
  %364 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %365 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %4, i32 0, i32 1
  store i32 %366, i32* %367, align 4
  %368 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %369 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %4, i32 0, i32 3
  store i32 %370, i32* %371, align 4
  %372 = load i32, i32* @SIW_QP_STATE_RTS, align 4
  %373 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %4, i32 0, i32 2
  store i32 %372, i32* %373, align 4
  %374 = load i32, i32* @SIW_QP_ATTR_STATE, align 4
  %375 = load i32, i32* @SIW_QP_ATTR_LLP_HANDLE, align 4
  %376 = or i32 %374, %375
  %377 = load i32, i32* @SIW_QP_ATTR_ORD, align 4
  %378 = or i32 %376, %377
  %379 = load i32, i32* @SIW_QP_ATTR_IRD, align 4
  %380 = or i32 %378, %379
  %381 = load i32, i32* @SIW_QP_ATTR_MPA, align 4
  %382 = or i32 %380, %381
  store i32 %382, i32* %5, align 4
  %383 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %384 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %383, i32 0, i32 0
  %385 = call i32 @down_write(i32* %384)
  %386 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %387 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @SIW_QP_STATE_RTR, align 8
  %391 = icmp sgt i64 %389, %390
  br i1 %391, label %392, label %398

392:                                              ; preds = %359
  %393 = load i32, i32* @EINVAL, align 4
  %394 = sub nsw i32 0, %393
  store i32 %394, i32* %8, align 4
  %395 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %396 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %395, i32 0, i32 0
  %397 = call i32 @up_write(i32* %396)
  br label %434

398:                                              ; preds = %359
  %399 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %400 = load i32, i32* %5, align 4
  %401 = call i32 @siw_qp_modify(%struct.siw_qp* %399, %struct.siw_qp_attrs* %4, i32 %400)
  store i32 %401, i32* %8, align 4
  %402 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %403 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %404 = call i32 @siw_qp_socket_assoc(%struct.siw_cep* %402, %struct.siw_qp* %403)
  %405 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %406 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %405, i32 0, i32 0
  %407 = call i32 @up_write(i32* %406)
  %408 = load i32, i32* %12, align 4
  %409 = load i32, i32* @MPA_V2_RDMA_NO_RTR, align 4
  %410 = icmp ne i32 %408, %409
  br i1 %410, label %411, label %419

411:                                              ; preds = %398
  %412 = load %struct.siw_qp*, %struct.siw_qp** %6, align 8
  %413 = load i32, i32* %12, align 4
  %414 = call i32 @siw_qp_mpa_rts(%struct.siw_qp* %412, i32 %413)
  store i32 %414, i32* %8, align 4
  %415 = load i32, i32* %8, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %411
  br label %434

418:                                              ; preds = %411
  br label %419

419:                                              ; preds = %418, %398
  %420 = load i32, i32* %8, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %433, label %422

422:                                              ; preds = %419
  %423 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %424 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %425 = call i32 @siw_cm_upcall(%struct.siw_cep* %423, i32 %424, i32 0)
  store i32 %425, i32* %8, align 4
  %426 = load i32, i32* %8, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %432, label %428

428:                                              ; preds = %422
  %429 = load i32, i32* @SIW_EPSTATE_RDMA_MODE, align 4
  %430 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %431 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %430, i32 0, i32 2
  store i32 %429, i32* %431, align 8
  br label %432

432:                                              ; preds = %428, %422
  store i32 0, i32* %2, align 4
  br label %441

433:                                              ; preds = %419
  br label %434

434:                                              ; preds = %433, %417, %392, %318, %278, %52, %42, %30
  %435 = load %struct.siw_cep*, %struct.siw_cep** %3, align 8
  %436 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %437 = load i32, i32* @EINVAL, align 4
  %438 = sub nsw i32 0, %437
  %439 = call i32 @siw_cm_upcall(%struct.siw_cep* %435, i32 %436, i32 %438)
  %440 = load i32, i32* %8, align 4
  store i32 %440, i32* %2, align 4
  br label %441

441:                                              ; preds = %434, %432, %181, %130, %70
  %442 = load i32, i32* %2, align 4
  ret i32 %442
}

declare dso_local i32 @siw_recv_mpa_rr(%struct.siw_cep*) #1

declare dso_local i32 @siw_cancel_mpatimer(%struct.siw_cep*) #1

declare dso_local i32 @__mpa_rr_revision(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @siw_init_terminate(%struct.siw_qp*, i32, i32, i32, i32) #1

declare dso_local i32 @siw_send_terminate(%struct.siw_qp*) #1

declare dso_local i32 @siw_dbg_cep(%struct.siw_cep*, i8*, ...) #1

declare dso_local i32 @siw_cm_upcall(%struct.siw_cep*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memset(%struct.siw_qp_attrs*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @siw_qp_modify(%struct.siw_qp*, %struct.siw_qp_attrs*, i32) #1

declare dso_local i32 @siw_qp_socket_assoc(%struct.siw_cep*, %struct.siw_qp*) #1

declare dso_local i32 @siw_qp_mpa_rts(%struct.siw_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
