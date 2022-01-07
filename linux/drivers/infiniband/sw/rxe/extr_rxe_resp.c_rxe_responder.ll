; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_rxe_responder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_rxe_responder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_pkt_info = type { i32 }

@AETH_ACK_UNLIMITED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"qp#%d state = %s\0A\00", align 1
@resp_state_name = common dso_local global i32* null, align 8
@AETH_NAK_PSN_SEQ_ERROR = common dso_local global i32 0, align 4
@AETH_NAK_INVALID_REQ = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i8* null, align 8
@IB_QPT_RC = common dso_local global i32 0, align 4
@RXE_CNT_SND_RNR = common dso_local global i32 0, align 4
@AETH_RNR_NAK = common dso_local global i32 0, align 4
@AETH_TYPE_MASK = common dso_local global i32 0, align 4
@AETH_NAK_REM_ACC_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i8* null, align 8
@AETH_NAK_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"qp#%d moved to error state\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_responder(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.rxe_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxe_pkt_info*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.rxe_qp*
  store %struct.rxe_qp* %9, %struct.rxe_qp** %3, align 8
  %10 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %11 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.rxe_dev* @to_rdev(i32 %13)
  store %struct.rxe_dev* %14, %struct.rxe_dev** %4, align 8
  store %struct.rxe_pkt_info* null, %struct.rxe_pkt_info** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %16 = call i32 @rxe_add_ref(%struct.rxe_qp* %15)
  %17 = load i32, i32* @AETH_ACK_UNLIMITED, align 4
  %18 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %19 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  store i32 %17, i32* %20, align 4
  %21 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %22 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %238

28:                                               ; preds = %1
  %29 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %30 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %34 [
    i32 157, label %33
  ]

33:                                               ; preds = %28
  store i32 128, i32* %5, align 4
  br label %35

34:                                               ; preds = %28
  store i32 130, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %33
  br label %36

36:                                               ; preds = %35, %234
  %37 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %38 = call i32 @qp_num(%struct.rxe_qp* %37)
  %39 = load i32*, i32** @resp_state_name, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %43)
  %45 = load i32, i32* %5, align 4
  switch i32 %45, label %232 [
    i32 130, label %46
    i32 152, label %49
    i32 154, label %53
    i32 153, label %57
    i32 151, label %61
    i32 155, label %65
    i32 150, label %69
    i32 132, label %73
    i32 148, label %77
    i32 129, label %81
    i32 156, label %85
    i32 149, label %89
    i32 146, label %93
    i32 137, label %97
    i32 134, label %106
    i32 140, label %106
    i32 139, label %106
    i32 133, label %106
    i32 141, label %106
    i32 138, label %111
    i32 135, label %114
    i32 136, label %143
    i32 143, label %169
    i32 142, label %195
    i32 144, label %200
    i32 147, label %201
    i32 131, label %209
    i32 128, label %217
    i32 145, label %223
  ]

46:                                               ; preds = %36
  %47 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %48 = call i32 @get_req(%struct.rxe_qp* %47, %struct.rxe_pkt_info** %6)
  store i32 %48, i32* %5, align 4
  br label %234

49:                                               ; preds = %36
  %50 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %51 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %52 = call i32 @check_psn(%struct.rxe_qp* %50, %struct.rxe_pkt_info* %51)
  store i32 %52, i32* %5, align 4
  br label %234

53:                                               ; preds = %36
  %54 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %55 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %56 = call i32 @check_op_seq(%struct.rxe_qp* %54, %struct.rxe_pkt_info* %55)
  store i32 %56, i32* %5, align 4
  br label %234

57:                                               ; preds = %36
  %58 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %59 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %60 = call i32 @check_op_valid(%struct.rxe_qp* %58, %struct.rxe_pkt_info* %59)
  store i32 %60, i32* %5, align 4
  br label %234

61:                                               ; preds = %36
  %62 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %63 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %64 = call i32 @check_resource(%struct.rxe_qp* %62, %struct.rxe_pkt_info* %63)
  store i32 %64, i32* %5, align 4
  br label %234

65:                                               ; preds = %36
  %66 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %67 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %68 = call i32 @check_length(%struct.rxe_qp* %66, %struct.rxe_pkt_info* %67)
  store i32 %68, i32* %5, align 4
  br label %234

69:                                               ; preds = %36
  %70 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %71 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %72 = call i32 @check_rkey(%struct.rxe_qp* %70, %struct.rxe_pkt_info* %71)
  store i32 %72, i32* %5, align 4
  br label %234

73:                                               ; preds = %36
  %74 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %75 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %76 = call i32 @execute(%struct.rxe_qp* %74, %struct.rxe_pkt_info* %75)
  store i32 %76, i32* %5, align 4
  br label %234

77:                                               ; preds = %36
  %78 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %79 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %80 = call i32 @do_complete(%struct.rxe_qp* %78, %struct.rxe_pkt_info* %79)
  store i32 %80, i32* %5, align 4
  br label %234

81:                                               ; preds = %36
  %82 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %83 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %84 = call i32 @read_reply(%struct.rxe_qp* %82, %struct.rxe_pkt_info* %83)
  store i32 %84, i32* %5, align 4
  br label %234

85:                                               ; preds = %36
  %86 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %87 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %88 = call i32 @acknowledge(%struct.rxe_qp* %86, %struct.rxe_pkt_info* %87)
  store i32 %88, i32* %5, align 4
  br label %234

89:                                               ; preds = %36
  %90 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %91 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %92 = call i32 @cleanup(%struct.rxe_qp* %90, %struct.rxe_pkt_info* %91)
  store i32 %92, i32* %5, align 4
  br label %234

93:                                               ; preds = %36
  %94 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %95 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %96 = call i32 @duplicate_request(%struct.rxe_qp* %94, %struct.rxe_pkt_info* %95)
  store i32 %96, i32* %5, align 4
  br label %234

97:                                               ; preds = %36
  %98 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %99 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %100 = load i32, i32* @AETH_NAK_PSN_SEQ_ERROR, align 4
  %101 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %102 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @send_ack(%struct.rxe_qp* %98, %struct.rxe_pkt_info* %99, i32 %100, i32 %104)
  store i32 149, i32* %5, align 4
  br label %234

106:                                              ; preds = %36, %36, %36, %36, %36
  %107 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %108 = load i32, i32* @AETH_NAK_INVALID_REQ, align 4
  %109 = load i8*, i8** @IB_WC_REM_INV_REQ_ERR, align 8
  %110 = call i32 @do_class_ac_error(%struct.rxe_qp* %107, i32 %108, i8* %109)
  store i32 148, i32* %5, align 4
  br label %234

111:                                              ; preds = %36
  %112 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %113 = call i32 @do_class_d1e_error(%struct.rxe_qp* %112)
  store i32 %113, i32* %5, align 4
  br label %234

114:                                              ; preds = %36
  %115 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %116 = call i32 @qp_type(%struct.rxe_qp* %115)
  %117 = load i32, i32* @IB_QPT_RC, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %121 = load i32, i32* @RXE_CNT_SND_RNR, align 4
  %122 = call i32 @rxe_counter_inc(%struct.rxe_dev* %120, i32 %121)
  %123 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %124 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %125 = load i32, i32* @AETH_RNR_NAK, align 4
  %126 = load i32, i32* @AETH_TYPE_MASK, align 4
  %127 = xor i32 %126, -1
  %128 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %129 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %127, %131
  %133 = or i32 %125, %132
  %134 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %135 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @send_ack(%struct.rxe_qp* %123, %struct.rxe_pkt_info* %124, i32 %133, i32 %136)
  br label %142

138:                                              ; preds = %114
  %139 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %140 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %119
  store i32 149, i32* %5, align 4
  br label %234

143:                                              ; preds = %36
  %144 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %145 = call i32 @qp_type(%struct.rxe_qp* %144)
  %146 = load i32, i32* @IB_QPT_RC, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %150 = load i32, i32* @AETH_NAK_REM_ACC_ERR, align 4
  %151 = load i8*, i8** @IB_WC_REM_ACCESS_ERR, align 8
  %152 = call i32 @do_class_ac_error(%struct.rxe_qp* %149, i32 %150, i8* %151)
  store i32 148, i32* %5, align 4
  br label %168

153:                                              ; preds = %143
  %154 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %155 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  %157 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %158 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %153
  %162 = load i8*, i8** @IB_WC_REM_ACCESS_ERR, align 8
  %163 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %164 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 4
  store i8* %162, i8** %165, align 8
  store i32 148, i32* %5, align 4
  br label %167

166:                                              ; preds = %153
  store i32 149, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %161
  br label %168

168:                                              ; preds = %167, %148
  br label %234

169:                                              ; preds = %36
  %170 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %171 = call i32 @qp_type(%struct.rxe_qp* %170)
  %172 = load i32, i32* @IB_QPT_RC, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %176 = load i32, i32* @AETH_NAK_INVALID_REQ, align 4
  %177 = load i8*, i8** @IB_WC_REM_INV_REQ_ERR, align 8
  %178 = call i32 @do_class_ac_error(%struct.rxe_qp* %175, i32 %176, i8* %177)
  store i32 148, i32* %5, align 4
  br label %194

179:                                              ; preds = %169
  %180 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %181 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i8*, i8** @IB_WC_REM_INV_REQ_ERR, align 8
  %186 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %187 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 4
  store i8* %185, i8** %188, align 8
  store i32 148, i32* %5, align 4
  br label %193

189:                                              ; preds = %179
  %190 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %191 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  store i32 1, i32* %192, align 4
  store i32 149, i32* %5, align 4
  br label %193

193:                                              ; preds = %189, %184
  br label %194

194:                                              ; preds = %193, %174
  br label %234

195:                                              ; preds = %36
  %196 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %197 = load i32, i32* @AETH_NAK_REM_OP_ERR, align 4
  %198 = load i8*, i8** @IB_WC_LOC_QP_OP_ERR, align 8
  %199 = call i32 @do_class_ac_error(%struct.rxe_qp* %196, i32 %197, i8* %198)
  store i32 148, i32* %5, align 4
  br label %234

200:                                              ; preds = %36
  store i32 145, i32* %5, align 4
  br label %234

201:                                              ; preds = %36
  %202 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %203 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  store i32 145, i32* %5, align 4
  br label %234

208:                                              ; preds = %201
  br label %238

209:                                              ; preds = %36
  %210 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %211 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  store i32 145, i32* %5, align 4
  br label %234

216:                                              ; preds = %209
  br label %235

217:                                              ; preds = %36
  %218 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %219 = call i32 @rxe_drain_req_pkts(%struct.rxe_qp* %218, i32 0)
  %220 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %221 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 3
  store i32* null, i32** %222, align 8
  br label %235

223:                                              ; preds = %36
  %224 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %225 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  store i32 0, i32* %226, align 8
  %227 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %228 = call i32 @qp_num(%struct.rxe_qp* %227)
  %229 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %228)
  %230 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %231 = call i32 @rxe_qp_error(%struct.rxe_qp* %230)
  br label %235

232:                                              ; preds = %36
  %233 = call i32 @WARN_ON_ONCE(i32 1)
  br label %234

234:                                              ; preds = %232, %215, %207, %200, %195, %194, %168, %142, %111, %106, %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %46
  br label %36

235:                                              ; preds = %223, %217, %216
  %236 = load i32, i32* @EAGAIN, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %7, align 4
  br label %238

238:                                              ; preds = %235, %208, %25
  %239 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %240 = call i32 @rxe_drop_ref(%struct.rxe_qp* %239)
  %241 = load i32, i32* %7, align 4
  ret i32 %241
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local i32 @rxe_add_ref(%struct.rxe_qp*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @qp_num(%struct.rxe_qp*) #1

declare dso_local i32 @get_req(%struct.rxe_qp*, %struct.rxe_pkt_info**) #1

declare dso_local i32 @check_psn(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @check_op_seq(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @check_op_valid(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @check_resource(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @check_length(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @check_rkey(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @execute(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @do_complete(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @read_reply(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @acknowledge(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @cleanup(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @duplicate_request(%struct.rxe_qp*, %struct.rxe_pkt_info*) #1

declare dso_local i32 @send_ack(%struct.rxe_qp*, %struct.rxe_pkt_info*, i32, i32) #1

declare dso_local i32 @do_class_ac_error(%struct.rxe_qp*, i32, i8*) #1

declare dso_local i32 @do_class_d1e_error(%struct.rxe_qp*) #1

declare dso_local i32 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @rxe_counter_inc(%struct.rxe_dev*, i32) #1

declare dso_local i32 @rxe_drain_req_pkts(%struct.rxe_qp*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @rxe_qp_error(%struct.rxe_qp*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
