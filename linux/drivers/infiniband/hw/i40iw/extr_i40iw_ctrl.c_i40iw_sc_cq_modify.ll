; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cq_modify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_cq_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_cq = type { i64, i64, i32, i64, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.i40iw_sc_cqp*, %struct.TYPE_6__* }
%struct.i40iw_sc_cqp = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.i40iw_modify_cq_info = type { i64, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i32, i64 }

@I40IW_MAX_CEQID = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_CEQ_ID = common dso_local global i32 0, align 4
@I40IW_HMC_IW_PBLE = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_PBLE_INDEX = common dso_local global i32 0, align 4
@I40IW_ERR_RING_FULL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD = common dso_local global i32 0, align 4
@I40IW_CQPSQ_TPHVAL = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CEQID = common dso_local global i32 0, align 4
@I40IW_CQP_OP_MODIFY_CQ = common dso_local global i32 0, align 4
@I40IW_CQPSQ_OPCODE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CQRESIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_LPBLSIZE = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CHKOVERFLOW = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_VIRTMAP = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_ENCEQEMASK = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_CEQIDVALID = common dso_local global i32 0, align 4
@I40IW_CQPSQ_TPHEN = common dso_local global i32 0, align 4
@I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT = common dso_local global i32 0, align 4
@I40IW_CQPSQ_WQEVALID = common dso_local global i32 0, align 4
@I40IW_DEBUG_WQE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"CQ_MODIFY WQE\00", align 1
@I40IW_CQP_WQE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_cq*, %struct.i40iw_modify_cq_info*, i64, i32)* @i40iw_sc_cq_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_cq_modify(%struct.i40iw_sc_cq* %0, %struct.i40iw_modify_cq_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_sc_cq*, align 8
  %7 = alloca %struct.i40iw_modify_cq_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40iw_sc_cqp*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.i40iw_sc_cq* %0, %struct.i40iw_sc_cq** %6, align 8
  store %struct.i40iw_modify_cq_info* %1, %struct.i40iw_modify_cq_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %22 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %21, i32 0, i32 12
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %27 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @I40IW_MAX_CEQID, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @I40IW_ERR_INVALID_CEQ_ID, align 4
  store i32 %32, i32* %5, align 4
  br label %365

33:                                               ; preds = %25, %4
  %34 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %35 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %34, i32 0, i32 13
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* @I40IW_HMC_IW_PBLE, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %20, align 8
  %45 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %46 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %33
  %50 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %51 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %56 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %20, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @I40IW_ERR_INVALID_PBLE_INDEX, align 4
  store i32 %61, i32* %5, align 4
  br label %365

62:                                               ; preds = %54, %49, %33
  %63 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %64 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %63, i32 0, i32 13
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %66, align 8
  store %struct.i40iw_sc_cqp* %67, %struct.i40iw_sc_cqp** %10, align 8
  %68 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %10, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i64* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp* %68, i64 %69)
  store i64* %70, i64** %11, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  %74 = load i32, i32* @I40IW_ERR_RING_FULL, align 4
  store i32 %74, i32* %5, align 4
  br label %365

75:                                               ; preds = %62
  %76 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %77 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %76, i32 0, i32 11
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %80 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %79, i32 0, i32 12
  store i32 %78, i32* %80, align 8
  %81 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %82 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %85 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %87 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %90 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %92 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %75
  %96 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %97 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  br label %104

99:                                               ; preds = %75
  %100 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %101 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %100, i32 0, i32 11
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  br label %104

104:                                              ; preds = %99, %95
  %105 = phi i64 [ %98, %95 ], [ %103, %99 ]
  store i64 %105, i64* %13, align 8
  %106 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %107 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %106, i32 0, i32 10
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  store i32 1, i32* %18, align 4
  %111 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %112 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %14, align 8
  br label %127

114:                                              ; preds = %104
  %115 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %116 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %122 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  br label %125

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %120
  %126 = phi i64 [ %123, %120 ], [ 0, %124 ]
  store i64 %126, i64* %14, align 8
  br label %127

127:                                              ; preds = %125, %110
  %128 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %129 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %134 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  br label %140

136:                                              ; preds = %127
  %137 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %138 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  br label %140

140:                                              ; preds = %136, %132
  %141 = phi i32 [ %135, %132 ], [ %139, %136 ]
  store i32 %141, i32* %17, align 4
  %142 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %143 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %148 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %153 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  br label %156

155:                                              ; preds = %146
  br label %156

156:                                              ; preds = %155, %151
  %157 = phi i64 [ %154, %151 ], [ 0, %155 ]
  br label %170

158:                                              ; preds = %140
  %159 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %160 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %165 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  br label %168

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167, %163
  %169 = phi i64 [ %166, %163 ], [ 0, %167 ]
  br label %170

170:                                              ; preds = %168, %156
  %171 = phi i64 [ %157, %156 ], [ %169, %168 ]
  store i64 %171, i64* %15, align 8
  %172 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %173 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %178 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %183 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  br label %186

185:                                              ; preds = %176
  br label %186

186:                                              ; preds = %185, %181
  %187 = phi i32 [ %184, %181 ], [ 0, %185 ]
  br label %200

188:                                              ; preds = %170
  %189 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %190 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %195 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  br label %198

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197, %193
  %199 = phi i32 [ %196, %193 ], [ 0, %197 ]
  br label %200

200:                                              ; preds = %198, %186
  %201 = phi i32 [ %187, %186 ], [ %199, %198 ]
  store i32 %201, i32* %16, align 4
  %202 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %203 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %202, i32 0, i32 9
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %208 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %207, i32 0, i32 7
  %209 = load i32, i32* %208, align 4
  br label %214

210:                                              ; preds = %200
  %211 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %212 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  br label %214

214:                                              ; preds = %210, %206
  %215 = phi i32 [ %209, %206 ], [ %213, %210 ]
  store i32 %215, i32* %19, align 4
  %216 = load i64, i64* %13, align 8
  %217 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %218 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %217, i32 0, i32 11
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  store i64 %216, i64* %219, align 8
  %220 = load i32, i32* %18, align 4
  %221 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %222 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load i64, i64* %14, align 8
  %224 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %225 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %224, i32 0, i32 3
  store i64 %223, i64* %225, align 8
  %226 = load i32, i32* %17, align 4
  %227 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %228 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 8
  %229 = load i64, i64* %15, align 8
  %230 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %231 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %230, i32 0, i32 1
  store i64 %229, i64* %231, align 8
  %232 = load i32, i32* %16, align 4
  %233 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %234 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %233, i32 0, i32 5
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* %19, align 4
  %236 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %237 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %236, i32 0, i32 6
  store i32 %235, i32* %237, align 8
  %238 = load i64*, i64** %11, align 8
  %239 = load i64, i64* %13, align 8
  %240 = call i32 @set_64bit_val(i64* %238, i32 0, i64 %239)
  %241 = load i64*, i64** %11, align 8
  %242 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %243 = call i64 @RS_64_1(%struct.i40iw_sc_cq* %242, i32 1)
  %244 = call i32 @set_64bit_val(i64* %241, i32 8, i64 %243)
  %245 = load i64*, i64** %11, align 8
  %246 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %247 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @I40IW_CQPSQ_CQ_SHADOW_READ_THRESHOLD, align 4
  %250 = call i64 @LS_64(i32 %248, i32 %249)
  %251 = call i32 @set_64bit_val(i64* %245, i32 16, i64 %250)
  %252 = load i64*, i64** %11, align 8
  %253 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %254 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %214
  br label %262

258:                                              ; preds = %214
  %259 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %260 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  br label %262

262:                                              ; preds = %258, %257
  %263 = phi i64 [ 0, %257 ], [ %261, %258 ]
  %264 = call i32 @set_64bit_val(i64* %252, i32 32, i64 %263)
  %265 = load i64*, i64** %11, align 8
  %266 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %267 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %266, i32 0, i32 7
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @set_64bit_val(i64* %265, i32 40, i64 %268)
  %270 = load i64*, i64** %11, align 8
  %271 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %272 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %262
  %276 = load i64, i64* %15, align 8
  br label %278

277:                                              ; preds = %262
  br label %278

278:                                              ; preds = %277, %275
  %279 = phi i64 [ %276, %275 ], [ 0, %277 ]
  %280 = call i32 @set_64bit_val(i64* %270, i32 48, i64 %279)
  %281 = load i64*, i64** %11, align 8
  %282 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %283 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @I40IW_CQPSQ_TPHVAL, align 4
  %286 = call i64 @LS_64(i32 %284, i32 %285)
  %287 = call i32 @set_64bit_val(i64* %281, i32 56, i64 %286)
  %288 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %289 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %288, i32 0, i32 11
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %14, align 8
  %293 = trunc i64 %292 to i32
  %294 = load i32, i32* @I40IW_CQPSQ_CQ_CEQID, align 4
  %295 = call i64 @LS_64(i32 %293, i32 %294)
  %296 = or i64 %291, %295
  %297 = load i32, i32* @I40IW_CQP_OP_MODIFY_CQ, align 4
  %298 = load i32, i32* @I40IW_CQPSQ_OPCODE, align 4
  %299 = call i64 @LS_64(i32 %297, i32 %298)
  %300 = or i64 %296, %299
  %301 = load %struct.i40iw_modify_cq_info*, %struct.i40iw_modify_cq_info** %7, align 8
  %302 = getelementptr inbounds %struct.i40iw_modify_cq_info, %struct.i40iw_modify_cq_info* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @I40IW_CQPSQ_CQ_CQRESIZE, align 4
  %305 = call i64 @LS_64(i32 %303, i32 %304)
  %306 = or i64 %300, %305
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* @I40IW_CQPSQ_CQ_LPBLSIZE, align 4
  %309 = call i64 @LS_64(i32 %307, i32 %308)
  %310 = or i64 %306, %309
  %311 = load i32, i32* %19, align 4
  %312 = load i32, i32* @I40IW_CQPSQ_CQ_CHKOVERFLOW, align 4
  %313 = call i64 @LS_64(i32 %311, i32 %312)
  %314 = or i64 %310, %313
  %315 = load i32, i32* %17, align 4
  %316 = load i32, i32* @I40IW_CQPSQ_CQ_VIRTMAP, align 4
  %317 = call i64 @LS_64(i32 %315, i32 %316)
  %318 = or i64 %314, %317
  %319 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %320 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %319, i32 0, i32 9
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @I40IW_CQPSQ_CQ_ENCEQEMASK, align 4
  %323 = call i64 @LS_64(i32 %321, i32 %322)
  %324 = or i64 %318, %323
  %325 = load i32, i32* %18, align 4
  %326 = load i32, i32* @I40IW_CQPSQ_CQ_CEQIDVALID, align 4
  %327 = call i64 @LS_64(i32 %325, i32 %326)
  %328 = or i64 %324, %327
  %329 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %330 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %329, i32 0, i32 10
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @I40IW_CQPSQ_TPHEN, align 4
  %333 = call i64 @LS_64(i32 %331, i32 %332)
  %334 = or i64 %328, %333
  %335 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %6, align 8
  %336 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %335, i32 0, i32 11
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @I40IW_CQPSQ_CQ_AVOIDMEMCNFLCT, align 4
  %340 = call i64 @LS_64(i32 %338, i32 %339)
  %341 = or i64 %334, %340
  %342 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %10, align 8
  %343 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @I40IW_CQPSQ_WQEVALID, align 4
  %346 = call i64 @LS_64(i32 %344, i32 %345)
  %347 = or i64 %341, %346
  store i64 %347, i64* %12, align 8
  %348 = load i64*, i64** %11, align 8
  %349 = load i64, i64* %12, align 8
  %350 = call i32 @i40iw_insert_wqe_hdr(i64* %348, i64 %349)
  %351 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %10, align 8
  %352 = getelementptr inbounds %struct.i40iw_sc_cqp, %struct.i40iw_sc_cqp* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @I40IW_DEBUG_WQE, align 4
  %355 = load i64*, i64** %11, align 8
  %356 = load i32, i32* @I40IW_CQP_WQE_SIZE, align 4
  %357 = mul nsw i32 %356, 8
  %358 = call i32 @i40iw_debug_buf(i32 %353, i32 %354, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %355, i32 %357)
  %359 = load i32, i32* %9, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %278
  %362 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %10, align 8
  %363 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %362)
  br label %364

364:                                              ; preds = %361, %278
  store i32 0, i32* %5, align 4
  br label %365

365:                                              ; preds = %364, %73, %60, %31
  %366 = load i32, i32* %5, align 4
  ret i32 %366
}

declare dso_local i64* @i40iw_sc_cqp_get_next_send_wqe(%struct.i40iw_sc_cqp*, i64) #1

declare dso_local i32 @set_64bit_val(i64*, i32, i64) #1

declare dso_local i64 @RS_64_1(%struct.i40iw_sc_cq*, i32) #1

declare dso_local i64 @LS_64(i32, i32) #1

declare dso_local i32 @i40iw_insert_wqe_hdr(i64*, i64) #1

declare dso_local i32 @i40iw_debug_buf(i32, i32, i8*, i64*, i32) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
