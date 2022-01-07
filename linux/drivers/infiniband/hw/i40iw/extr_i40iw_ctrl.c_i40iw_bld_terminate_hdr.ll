; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_bld_terminate_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_bld_terminate_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32*, i8* }
%struct.i40iw_aeqe_info = type { i32, i64 }
%struct.i40iw_terminate_hdr = type { i32 }

@Q2_BAD_FRAME_OFFSET = common dso_local global i32 0, align 4
@DDP_LEN_FLAG = common dso_local global i32 0, align 4
@TERM_DDP_LEN_TAGGED = common dso_local global i64 0, align 8
@DDP_HDR_FLAG = common dso_local global i32 0, align 4
@TERM_DDP_LEN_UNTAGGED = common dso_local global i64 0, align 8
@TERM_RDMA_LEN = common dso_local global i64 0, align 8
@RDMA_OPCODE_MASK = common dso_local global i32 0, align 4
@RDMA_READ_REQ_OPCODE = common dso_local global i32 0, align 4
@RDMA_HDR_FLAG = common dso_local global i32 0, align 4
@TERM_EVENT_QP_ACCESS_ERR = common dso_local global i8* null, align 8
@FLUSH_PROT_ERR = common dso_local global i32 0, align 4
@LAYER_DDP = common dso_local global i32 0, align 4
@DDP_TAGGED_BUFFER = common dso_local global i32 0, align 4
@DDP_TAGGED_INV_STAG = common dso_local global i32 0, align 4
@FLUSH_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@LAYER_RDMA = common dso_local global i32 0, align 4
@RDMAP_REMOTE_PROT = common dso_local global i32 0, align 4
@RDMAP_INV_STAG = common dso_local global i32 0, align 4
@DDP_TAGGED_BOUNDS = common dso_local global i32 0, align 4
@RDMAP_INV_BOUNDS = common dso_local global i32 0, align 4
@DDP_TAGGED_UNASSOC_STAG = common dso_local global i32 0, align 4
@RDMAP_CANT_INV_STAG = common dso_local global i32 0, align 4
@RDMAP_UNASSOC_STAG = common dso_local global i32 0, align 4
@FLUSH_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@DDP_UNTAGGED_BUFFER = common dso_local global i32 0, align 4
@DDP_UNTAGGED_INV_QN = common dso_local global i32 0, align 4
@FLUSH_REM_OP_ERR = common dso_local global i32 0, align 4
@RDMAP_REMOTE_OP = common dso_local global i32 0, align 4
@RDMAP_ACCESS = common dso_local global i32 0, align 4
@RDMAP_TO_WRAP = common dso_local global i32 0, align 4
@FLUSH_GENERAL_ERR = common dso_local global i32 0, align 4
@LAYER_MPA = common dso_local global i32 0, align 4
@DDP_LLP = common dso_local global i32 0, align 4
@MPA_CRC = common dso_local global i32 0, align 4
@FLUSH_LOC_LEN_ERR = common dso_local global i32 0, align 4
@DDP_CATASTROPHIC = common dso_local global i32 0, align 4
@DDP_CATASTROPHIC_LOCAL = common dso_local global i32 0, align 4
@FLUSH_FATAL_ERR = common dso_local global i32 0, align 4
@DDP_UNTAGGED_INV_MSN_RANGE = common dso_local global i32 0, align 4
@DDP_UNTAGGED_INV_TOO_LONG = common dso_local global i32 0, align 4
@DDP_TAGGED_INV_DDP_VER = common dso_local global i32 0, align 4
@DDP_UNTAGGED_INV_DDP_VER = common dso_local global i32 0, align 4
@DDP_UNTAGGED_INV_MO = common dso_local global i32 0, align 4
@DDP_UNTAGGED_INV_MSN_NO_BUF = common dso_local global i32 0, align 4
@RDMAP_INV_RDMAP_VER = common dso_local global i32 0, align 4
@RDMAP_UNEXPECTED_OP = common dso_local global i32 0, align 4
@RDMAP_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_qp*, %struct.i40iw_aeqe_info*)* @i40iw_bld_terminate_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_bld_terminate_hdr(%struct.i40iw_sc_qp* %0, %struct.i40iw_aeqe_info* %1) #0 {
  %3 = alloca %struct.i40iw_sc_qp*, align 8
  %4 = alloca %struct.i40iw_aeqe_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40iw_terminate_hdr*, align 8
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %3, align 8
  store %struct.i40iw_aeqe_info* %1, %struct.i40iw_aeqe_info** %4, align 8
  %11 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @Q2_BAD_FRAME_OFFSET, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %18 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = bitcast i32* %19 to %struct.i40iw_terminate_hdr*
  store %struct.i40iw_terminate_hdr* %20, %struct.i40iw_terminate_hdr** %10, align 8
  %21 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %22 = load i32, i32* @Q2_BAD_FRAME_OFFSET, align 4
  %23 = call i32 @memset(%struct.i40iw_terminate_hdr* %21, i32 0, i32 %22)
  %24 = load %struct.i40iw_aeqe_info*, %struct.i40iw_aeqe_info** %4, align 8
  %25 = getelementptr inbounds %struct.i40iw_aeqe_info, %struct.i40iw_aeqe_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %105

28:                                               ; preds = %2
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @i40iw_locate_mpa(i32* %29)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ntohs(i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %104

36:                                               ; preds = %28
  store i32 2, i32* %7, align 4
  %37 = load i32, i32* @DDP_LEN_FLAG, align 4
  %38 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %39 = getelementptr inbounds %struct.i40iw_terminate_hdr, %struct.i40iw_terminate_hdr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %36
  store i32 1, i32* %8, align 4
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @TERM_DDP_LEN_TAGGED, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i64, i64* @TERM_DDP_LEN_TAGGED, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @DDP_HDR_FLAG, align 4
  %56 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %57 = getelementptr inbounds %struct.i40iw_terminate_hdr, %struct.i40iw_terminate_hdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %49, %45
  br label %103

61:                                               ; preds = %36
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @TERM_DDP_LEN_UNTAGGED, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i64, i64* @TERM_DDP_LEN_UNTAGGED, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @DDP_HDR_FLAG, align 4
  %72 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %73 = getelementptr inbounds %struct.i40iw_terminate_hdr, %struct.i40iw_terminate_hdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %65, %61
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* @TERM_DDP_LEN_UNTAGGED, align 8
  %79 = load i64, i64* @TERM_RDMA_LEN, align 8
  %80 = add nsw i64 %78, %79
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RDMA_OPCODE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @RDMA_READ_REQ_OPCODE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load i64, i64* @TERM_RDMA_LEN, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* @RDMA_HDR_FLAG, align 4
  %97 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %98 = getelementptr inbounds %struct.i40iw_terminate_hdr, %struct.i40iw_terminate_hdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %90, %82
  br label %102

102:                                              ; preds = %101, %76
  br label %103

103:                                              ; preds = %102, %60
  br label %104

104:                                              ; preds = %103, %28
  br label %105

105:                                              ; preds = %104, %2
  %106 = load %struct.i40iw_aeqe_info*, %struct.i40iw_aeqe_info** %4, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @i40iw_iwarp_opcode(%struct.i40iw_aeqe_info* %106, i32* %107)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.i40iw_aeqe_info*, %struct.i40iw_aeqe_info** %4, align 8
  %110 = getelementptr inbounds %struct.i40iw_aeqe_info, %struct.i40iw_aeqe_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %403 [
    i32 145, label %112
    i32 150, label %139
    i32 154, label %168
    i32 148, label %201
    i32 153, label %214
    i32 151, label %224
    i32 152, label %224
    i32 147, label %250
    i32 149, label %250
    i32 133, label %250
    i32 146, label %263
    i32 136, label %276
    i32 135, label %286
    i32 134, label %286
    i32 137, label %296
    i32 143, label %296
    i32 144, label %306
    i32 142, label %316
    i32 141, label %329
    i32 140, label %353
    i32 139, label %363
    i32 138, label %373
    i32 132, label %383
    i32 131, label %393
  ]

112:                                              ; preds = %105
  %113 = load i8*, i8** @TERM_EVENT_QP_ACCESS_ERR, align 8
  %114 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %115 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 130
  br i1 %117, label %118, label %128

118:                                              ; preds = %112
  %119 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %120 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %121 = load i32, i32* @FLUSH_PROT_ERR, align 4
  %122 = load i32, i32* @LAYER_DDP, align 4
  %123 = shl i32 %122, 4
  %124 = load i32, i32* @DDP_TAGGED_BUFFER, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @DDP_TAGGED_INV_STAG, align 4
  %127 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %119, %struct.i40iw_terminate_hdr* %120, i32 %121, i32 %125, i32 %126)
  br label %138

128:                                              ; preds = %112
  %129 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %130 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %131 = load i32, i32* @FLUSH_REM_ACCESS_ERR, align 4
  %132 = load i32, i32* @LAYER_RDMA, align 4
  %133 = shl i32 %132, 4
  %134 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @RDMAP_INV_STAG, align 4
  %137 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %129, %struct.i40iw_terminate_hdr* %130, i32 %131, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %128, %118
  br label %413

139:                                              ; preds = %105
  %140 = load i8*, i8** @TERM_EVENT_QP_ACCESS_ERR, align 8
  %141 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %142 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.i40iw_aeqe_info*, %struct.i40iw_aeqe_info** %4, align 8
  %144 = getelementptr inbounds %struct.i40iw_aeqe_info, %struct.i40iw_aeqe_info* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %139
  %148 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %149 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %150 = load i32, i32* @FLUSH_PROT_ERR, align 4
  %151 = load i32, i32* @LAYER_DDP, align 4
  %152 = shl i32 %151, 4
  %153 = load i32, i32* @DDP_TAGGED_BUFFER, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @DDP_TAGGED_BOUNDS, align 4
  %156 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %148, %struct.i40iw_terminate_hdr* %149, i32 %150, i32 %154, i32 %155)
  br label %167

157:                                              ; preds = %139
  %158 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %159 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %160 = load i32, i32* @FLUSH_REM_ACCESS_ERR, align 4
  %161 = load i32, i32* @LAYER_RDMA, align 4
  %162 = shl i32 %161, 4
  %163 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @RDMAP_INV_BOUNDS, align 4
  %166 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %158, %struct.i40iw_terminate_hdr* %159, i32 %160, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %157, %147
  br label %413

168:                                              ; preds = %105
  %169 = load i32, i32* %9, align 4
  switch i32 %169, label %190 [
    i32 130, label %170
    i32 129, label %180
    i32 128, label %180
  ]

170:                                              ; preds = %168
  %171 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %172 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %173 = load i32, i32* @FLUSH_PROT_ERR, align 4
  %174 = load i32, i32* @LAYER_DDP, align 4
  %175 = shl i32 %174, 4
  %176 = load i32, i32* @DDP_TAGGED_BUFFER, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @DDP_TAGGED_UNASSOC_STAG, align 4
  %179 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %171, %struct.i40iw_terminate_hdr* %172, i32 %173, i32 %177, i32 %178)
  br label %200

180:                                              ; preds = %168, %168
  %181 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %182 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %183 = load i32, i32* @FLUSH_REM_ACCESS_ERR, align 4
  %184 = load i32, i32* @LAYER_RDMA, align 4
  %185 = shl i32 %184, 4
  %186 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @RDMAP_CANT_INV_STAG, align 4
  %189 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %181, %struct.i40iw_terminate_hdr* %182, i32 %183, i32 %187, i32 %188)
  br label %200

190:                                              ; preds = %168
  %191 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %192 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %193 = load i32, i32* @FLUSH_REM_ACCESS_ERR, align 4
  %194 = load i32, i32* @LAYER_RDMA, align 4
  %195 = shl i32 %194, 4
  %196 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @RDMAP_UNASSOC_STAG, align 4
  %199 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %191, %struct.i40iw_terminate_hdr* %192, i32 %193, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %190, %180, %170
  br label %413

201:                                              ; preds = %105
  %202 = load i8*, i8** @TERM_EVENT_QP_ACCESS_ERR, align 8
  %203 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %204 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %203, i32 0, i32 1
  store i8* %202, i8** %204, align 8
  %205 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %206 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %207 = load i32, i32* @FLUSH_REM_ACCESS_ERR, align 4
  %208 = load i32, i32* @LAYER_RDMA, align 4
  %209 = shl i32 %208, 4
  %210 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @RDMAP_INV_STAG, align 4
  %213 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %205, %struct.i40iw_terminate_hdr* %206, i32 %207, i32 %211, i32 %212)
  br label %413

214:                                              ; preds = %105
  %215 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %216 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %217 = load i32, i32* @FLUSH_LOC_QP_OP_ERR, align 4
  %218 = load i32, i32* @LAYER_DDP, align 4
  %219 = shl i32 %218, 4
  %220 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @DDP_UNTAGGED_INV_QN, align 4
  %223 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %215, %struct.i40iw_terminate_hdr* %216, i32 %217, i32 %221, i32 %222)
  br label %413

224:                                              ; preds = %105, %105
  %225 = load i8*, i8** @TERM_EVENT_QP_ACCESS_ERR, align 8
  %226 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %227 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load i32, i32* %9, align 4
  switch i32 %228, label %239 [
    i32 129, label %229
    i32 128, label %229
  ]

229:                                              ; preds = %224, %224
  %230 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %231 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %232 = load i32, i32* @FLUSH_REM_OP_ERR, align 4
  %233 = load i32, i32* @LAYER_RDMA, align 4
  %234 = shl i32 %233, 4
  %235 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* @RDMAP_CANT_INV_STAG, align 4
  %238 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %230, %struct.i40iw_terminate_hdr* %231, i32 %232, i32 %236, i32 %237)
  br label %249

239:                                              ; preds = %224
  %240 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %241 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %242 = load i32, i32* @FLUSH_REM_ACCESS_ERR, align 4
  %243 = load i32, i32* @LAYER_RDMA, align 4
  %244 = shl i32 %243, 4
  %245 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @RDMAP_INV_STAG, align 4
  %248 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %240, %struct.i40iw_terminate_hdr* %241, i32 %242, i32 %246, i32 %247)
  br label %249

249:                                              ; preds = %239, %229
  br label %413

250:                                              ; preds = %105, %105, %105
  %251 = load i8*, i8** @TERM_EVENT_QP_ACCESS_ERR, align 8
  %252 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %253 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %252, i32 0, i32 1
  store i8* %251, i8** %253, align 8
  %254 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %255 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %256 = load i32, i32* @FLUSH_REM_ACCESS_ERR, align 4
  %257 = load i32, i32* @LAYER_RDMA, align 4
  %258 = shl i32 %257, 4
  %259 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @RDMAP_ACCESS, align 4
  %262 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %254, %struct.i40iw_terminate_hdr* %255, i32 %256, i32 %260, i32 %261)
  br label %413

263:                                              ; preds = %105
  %264 = load i8*, i8** @TERM_EVENT_QP_ACCESS_ERR, align 8
  %265 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %266 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %265, i32 0, i32 1
  store i8* %264, i8** %266, align 8
  %267 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %268 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %269 = load i32, i32* @FLUSH_REM_ACCESS_ERR, align 4
  %270 = load i32, i32* @LAYER_RDMA, align 4
  %271 = shl i32 %270, 4
  %272 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* @RDMAP_TO_WRAP, align 4
  %275 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %267, %struct.i40iw_terminate_hdr* %268, i32 %269, i32 %273, i32 %274)
  br label %413

276:                                              ; preds = %105
  %277 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %278 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %279 = load i32, i32* @FLUSH_GENERAL_ERR, align 4
  %280 = load i32, i32* @LAYER_MPA, align 4
  %281 = shl i32 %280, 4
  %282 = load i32, i32* @DDP_LLP, align 4
  %283 = or i32 %281, %282
  %284 = load i32, i32* @MPA_CRC, align 4
  %285 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %277, %struct.i40iw_terminate_hdr* %278, i32 %279, i32 %283, i32 %284)
  br label %413

286:                                              ; preds = %105, %105
  %287 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %288 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %289 = load i32, i32* @FLUSH_LOC_LEN_ERR, align 4
  %290 = load i32, i32* @LAYER_DDP, align 4
  %291 = shl i32 %290, 4
  %292 = load i32, i32* @DDP_CATASTROPHIC, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* @DDP_CATASTROPHIC_LOCAL, align 4
  %295 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %287, %struct.i40iw_terminate_hdr* %288, i32 %289, i32 %293, i32 %294)
  br label %413

296:                                              ; preds = %105, %105
  %297 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %298 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %299 = load i32, i32* @FLUSH_FATAL_ERR, align 4
  %300 = load i32, i32* @LAYER_DDP, align 4
  %301 = shl i32 %300, 4
  %302 = load i32, i32* @DDP_CATASTROPHIC, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* @DDP_CATASTROPHIC_LOCAL, align 4
  %305 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %297, %struct.i40iw_terminate_hdr* %298, i32 %299, i32 %303, i32 %304)
  br label %413

306:                                              ; preds = %105
  %307 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %308 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %309 = load i32, i32* @FLUSH_GENERAL_ERR, align 4
  %310 = load i32, i32* @LAYER_DDP, align 4
  %311 = shl i32 %310, 4
  %312 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @DDP_UNTAGGED_INV_MSN_RANGE, align 4
  %315 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %307, %struct.i40iw_terminate_hdr* %308, i32 %309, i32 %313, i32 %314)
  br label %413

316:                                              ; preds = %105
  %317 = load i8*, i8** @TERM_EVENT_QP_ACCESS_ERR, align 8
  %318 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %319 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %318, i32 0, i32 1
  store i8* %317, i8** %319, align 8
  %320 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %321 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %322 = load i32, i32* @FLUSH_LOC_LEN_ERR, align 4
  %323 = load i32, i32* @LAYER_DDP, align 4
  %324 = shl i32 %323, 4
  %325 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* @DDP_UNTAGGED_INV_TOO_LONG, align 4
  %328 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %320, %struct.i40iw_terminate_hdr* %321, i32 %322, i32 %326, i32 %327)
  br label %413

329:                                              ; preds = %105
  %330 = load i32, i32* %8, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %342

332:                                              ; preds = %329
  %333 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %334 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %335 = load i32, i32* @FLUSH_GENERAL_ERR, align 4
  %336 = load i32, i32* @LAYER_DDP, align 4
  %337 = shl i32 %336, 4
  %338 = load i32, i32* @DDP_TAGGED_BUFFER, align 4
  %339 = or i32 %337, %338
  %340 = load i32, i32* @DDP_TAGGED_INV_DDP_VER, align 4
  %341 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %333, %struct.i40iw_terminate_hdr* %334, i32 %335, i32 %339, i32 %340)
  br label %352

342:                                              ; preds = %329
  %343 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %344 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %345 = load i32, i32* @FLUSH_GENERAL_ERR, align 4
  %346 = load i32, i32* @LAYER_DDP, align 4
  %347 = shl i32 %346, 4
  %348 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %349 = or i32 %347, %348
  %350 = load i32, i32* @DDP_UNTAGGED_INV_DDP_VER, align 4
  %351 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %343, %struct.i40iw_terminate_hdr* %344, i32 %345, i32 %349, i32 %350)
  br label %352

352:                                              ; preds = %342, %332
  br label %413

353:                                              ; preds = %105
  %354 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %355 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %356 = load i32, i32* @FLUSH_GENERAL_ERR, align 4
  %357 = load i32, i32* @LAYER_DDP, align 4
  %358 = shl i32 %357, 4
  %359 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %360 = or i32 %358, %359
  %361 = load i32, i32* @DDP_UNTAGGED_INV_MO, align 4
  %362 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %354, %struct.i40iw_terminate_hdr* %355, i32 %356, i32 %360, i32 %361)
  br label %413

363:                                              ; preds = %105
  %364 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %365 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %366 = load i32, i32* @FLUSH_REM_OP_ERR, align 4
  %367 = load i32, i32* @LAYER_DDP, align 4
  %368 = shl i32 %367, 4
  %369 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %370 = or i32 %368, %369
  %371 = load i32, i32* @DDP_UNTAGGED_INV_MSN_NO_BUF, align 4
  %372 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %364, %struct.i40iw_terminate_hdr* %365, i32 %366, i32 %370, i32 %371)
  br label %413

373:                                              ; preds = %105
  %374 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %375 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %376 = load i32, i32* @FLUSH_GENERAL_ERR, align 4
  %377 = load i32, i32* @LAYER_DDP, align 4
  %378 = shl i32 %377, 4
  %379 = load i32, i32* @DDP_UNTAGGED_BUFFER, align 4
  %380 = or i32 %378, %379
  %381 = load i32, i32* @DDP_UNTAGGED_INV_QN, align 4
  %382 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %374, %struct.i40iw_terminate_hdr* %375, i32 %376, i32 %380, i32 %381)
  br label %413

383:                                              ; preds = %105
  %384 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %385 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %386 = load i32, i32* @FLUSH_GENERAL_ERR, align 4
  %387 = load i32, i32* @LAYER_RDMA, align 4
  %388 = shl i32 %387, 4
  %389 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %390 = or i32 %388, %389
  %391 = load i32, i32* @RDMAP_INV_RDMAP_VER, align 4
  %392 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %384, %struct.i40iw_terminate_hdr* %385, i32 %386, i32 %390, i32 %391)
  br label %413

393:                                              ; preds = %105
  %394 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %395 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %396 = load i32, i32* @FLUSH_LOC_QP_OP_ERR, align 4
  %397 = load i32, i32* @LAYER_RDMA, align 4
  %398 = shl i32 %397, 4
  %399 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %400 = or i32 %398, %399
  %401 = load i32, i32* @RDMAP_UNEXPECTED_OP, align 4
  %402 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %394, %struct.i40iw_terminate_hdr* %395, i32 %396, i32 %400, i32 %401)
  br label %413

403:                                              ; preds = %105
  %404 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %405 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %406 = load i32, i32* @FLUSH_FATAL_ERR, align 4
  %407 = load i32, i32* @LAYER_RDMA, align 4
  %408 = shl i32 %407, 4
  %409 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %410 = or i32 %408, %409
  %411 = load i32, i32* @RDMAP_UNSPECIFIED, align 4
  %412 = call i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp* %404, %struct.i40iw_terminate_hdr* %405, i32 %406, i32 %410, i32 %411)
  br label %413

413:                                              ; preds = %403, %393, %383, %373, %363, %353, %352, %316, %306, %296, %286, %276, %263, %250, %249, %214, %201, %200, %167, %138
  %414 = load i32, i32* %7, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %422

416:                                              ; preds = %413
  %417 = load %struct.i40iw_terminate_hdr*, %struct.i40iw_terminate_hdr** %10, align 8
  %418 = getelementptr inbounds %struct.i40iw_terminate_hdr, %struct.i40iw_terminate_hdr* %417, i64 1
  %419 = load i32*, i32** %5, align 8
  %420 = load i32, i32* %7, align 4
  %421 = call i32 @memcpy(%struct.i40iw_terminate_hdr* %418, i32* %419, i32 %420)
  br label %422

422:                                              ; preds = %416, %413
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = add i64 4, %424
  %426 = trunc i64 %425 to i32
  ret i32 %426
}

declare dso_local i32 @memset(%struct.i40iw_terminate_hdr*, i32, i32) #1

declare dso_local i32* @i40iw_locate_mpa(i32*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @i40iw_iwarp_opcode(%struct.i40iw_aeqe_info*, i32*) #1

declare dso_local i32 @i40iw_setup_termhdr(%struct.i40iw_sc_qp*, %struct.i40iw_terminate_hdr*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.i40iw_terminate_hdr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
