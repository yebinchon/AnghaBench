; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_check_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_comp.c_check_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.rxe_pkt_info = type { i32, i32, i32 }
%struct.rxe_send_wqe = type { i8*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rxe_dev = type { i32 }

@RXE_START_MASK = common dso_local global i32 0, align 4
@COMPST_ERROR = common dso_local global i32 0, align 4
@AETH_TYPE_MASK = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ = common dso_local global i32 0, align 4
@IB_WR_RDMA_READ_WITH_INV = common dso_local global i32 0, align 4
@IB_WC_FATAL_ERR = common dso_local global i8* null, align 8
@COMPST_READ = common dso_local global i32 0, align 4
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i32 0, align 4
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i32 0, align 4
@COMPST_ATOMIC = common dso_local global i32 0, align 4
@COMPST_WRITE_SEND = common dso_local global i32 0, align 4
@RXE_CNT_RCV_RNR = common dso_local global i32 0, align 4
@COMPST_RNR_RETRY = common dso_local global i32 0, align 4
@RXE_CNT_RCV_SEQ_ERR = common dso_local global i32 0, align 4
@COMPST_ERROR_RETRY = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i8* null, align 8
@IB_WC_REM_ACCESS_ERR = common dso_local global i8* null, align 8
@IB_WC_REM_OP_ERR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"unexpected nak %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unexpected opcode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*, %struct.rxe_send_wqe*)* @check_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ack(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1, %struct.rxe_send_wqe* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxe_qp*, align 8
  %6 = alloca %struct.rxe_pkt_info*, align 8
  %7 = alloca %struct.rxe_send_wqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rxe_dev*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %5, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %6, align 8
  store %struct.rxe_send_wqe* %2, %struct.rxe_send_wqe** %7, align 8
  %11 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %12 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %15 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.rxe_dev* @to_rdev(i32 %17)
  store %struct.rxe_dev* %18, %struct.rxe_dev** %10, align 8
  %19 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %20 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %71 [
    i32 -1, label %23
    i32 131, label %31
    i32 129, label %31
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @RXE_START_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %29, i32* %4, align 4
  br label %220

30:                                               ; preds = %23
  br label %73

31:                                               ; preds = %3, %3
  %32 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %33 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 129
  br i1 %35, label %36, label %70

36:                                               ; preds = %31
  %37 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %38 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 130
  br i1 %40, label %41, label %70

41:                                               ; preds = %36
  %42 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %43 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %46 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %51 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 131
  br i1 %53, label %67, label %54

54:                                               ; preds = %49, %41
  %55 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %56 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %59 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %64 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 128
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %49
  br label %73

68:                                               ; preds = %62, %54
  %69 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %69, i32* %4, align 4
  br label %220

70:                                               ; preds = %36, %31
  br label %73

71:                                               ; preds = %3
  %72 = call i32 @WARN_ON_ONCE(i32 1)
  br label %73

73:                                               ; preds = %71, %70, %67, %30
  %74 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %75 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %216 [
    i32 131, label %77
    i32 130, label %77
    i32 128, label %77
    i32 129, label %87
    i32 132, label %110
    i32 133, label %139
  ]

77:                                               ; preds = %73, %73, %73
  %78 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %79 = call i32 @aeth_syn(%struct.rxe_pkt_info* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @AETH_TYPE_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 140
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %85, i32* %4, align 4
  br label %220

86:                                               ; preds = %77
  br label %87

87:                                               ; preds = %73, %86
  %88 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %89 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %87
  %95 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %96 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IB_WR_RDMA_READ_WITH_INV, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load i8*, i8** @IB_WC_FATAL_ERR, align 8
  %103 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %104 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %105, i32* %4, align 4
  br label %220

106:                                              ; preds = %94, %87
  %107 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %108 = call i32 @reset_retry_counters(%struct.rxe_qp* %107)
  %109 = load i32, i32* @COMPST_READ, align 4
  store i32 %109, i32* %4, align 4
  br label %220

110:                                              ; preds = %73
  %111 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %112 = call i32 @aeth_syn(%struct.rxe_pkt_info* %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @AETH_TYPE_MASK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 140
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %118, i32* %4, align 4
  br label %220

119:                                              ; preds = %110
  %120 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %121 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IB_WR_ATOMIC_CMP_AND_SWP, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %128 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @IB_WR_ATOMIC_FETCH_AND_ADD, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %134, i32* %4, align 4
  br label %220

135:                                              ; preds = %126, %119
  %136 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %137 = call i32 @reset_retry_counters(%struct.rxe_qp* %136)
  %138 = load i32, i32* @COMPST_ATOMIC, align 4
  store i32 %138, i32* %4, align 4
  br label %220

139:                                              ; preds = %73
  %140 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %141 = call i32 @aeth_syn(%struct.rxe_pkt_info* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @AETH_TYPE_MASK, align 4
  %144 = and i32 %142, %143
  switch i32 %144, label %214 [
    i32 140, label %145
    i32 134, label %149
    i32 139, label %154
  ]

145:                                              ; preds = %139
  %146 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %147 = call i32 @reset_retry_counters(%struct.rxe_qp* %146)
  %148 = load i32, i32* @COMPST_WRITE_SEND, align 4
  store i32 %148, i32* %4, align 4
  br label %220

149:                                              ; preds = %139
  %150 = load %struct.rxe_dev*, %struct.rxe_dev** %10, align 8
  %151 = load i32, i32* @RXE_CNT_RCV_RNR, align 4
  %152 = call i32 @rxe_counter_inc(%struct.rxe_dev* %150, i32 %151)
  %153 = load i32, i32* @COMPST_RNR_RETRY, align 4
  store i32 %153, i32* %4, align 4
  br label %220

154:                                              ; preds = %139
  %155 = load i32, i32* %9, align 4
  switch i32 %155, label %207 [
    i32 137, label %156
    i32 138, label %192
    i32 136, label %197
    i32 135, label %202
  ]

156:                                              ; preds = %154
  %157 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %158 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %161 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @psn_compare(i32 %159, i32 %163)
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %190

166:                                              ; preds = %156
  %167 = load %struct.rxe_dev*, %struct.rxe_dev** %10, align 8
  %168 = load i32, i32* @RXE_CNT_RCV_SEQ_ERR, align 4
  %169 = call i32 @rxe_counter_inc(%struct.rxe_dev* %167, i32 %168)
  %170 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %6, align 8
  %171 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %174 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  store i32 %172, i32* %175, align 4
  %176 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %177 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %166
  %182 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %183 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  store i32 0, i32* %184, align 4
  %185 = load %struct.rxe_qp*, %struct.rxe_qp** %5, align 8
  %186 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = call i32 @rxe_run_task(i32* %187, i32 1)
  br label %189

189:                                              ; preds = %181, %166
  br label %190

190:                                              ; preds = %189, %156
  %191 = load i32, i32* @COMPST_ERROR_RETRY, align 4
  store i32 %191, i32* %4, align 4
  br label %220

192:                                              ; preds = %154
  %193 = load i8*, i8** @IB_WC_REM_INV_REQ_ERR, align 8
  %194 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %195 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %194, i32 0, i32 0
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %196, i32* %4, align 4
  br label %220

197:                                              ; preds = %154
  %198 = load i8*, i8** @IB_WC_REM_ACCESS_ERR, align 8
  %199 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %200 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %199, i32 0, i32 0
  store i8* %198, i8** %200, align 8
  %201 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %201, i32* %4, align 4
  br label %220

202:                                              ; preds = %154
  %203 = load i8*, i8** @IB_WC_REM_OP_ERR, align 8
  %204 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %205 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %204, i32 0, i32 0
  store i8* %203, i8** %205, align 8
  %206 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %206, i32* %4, align 4
  br label %220

207:                                              ; preds = %154
  %208 = load i32, i32* %9, align 4
  %209 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %208)
  %210 = load i8*, i8** @IB_WC_REM_OP_ERR, align 8
  %211 = load %struct.rxe_send_wqe*, %struct.rxe_send_wqe** %7, align 8
  %212 = getelementptr inbounds %struct.rxe_send_wqe, %struct.rxe_send_wqe* %211, i32 0, i32 0
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %213, i32* %4, align 4
  br label %220

214:                                              ; preds = %139
  %215 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %215, i32* %4, align 4
  br label %220

216:                                              ; preds = %73
  %217 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216
  %219 = load i32, i32* @COMPST_ERROR, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %218, %214, %207, %202, %197, %192, %190, %149, %145, %135, %133, %117, %106, %101, %84, %68, %28
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @aeth_syn(%struct.rxe_pkt_info*) #1

declare dso_local i32 @reset_retry_counters(%struct.rxe_qp*) #1

declare dso_local i32 @rxe_counter_inc(%struct.rxe_dev*, i32) #1

declare dso_local i32 @psn_compare(i32, i32) #1

declare dso_local i32 @rxe_run_task(i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
