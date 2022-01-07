; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { i64, i32, i32, %struct.ib_send_wr*, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.siw_qp = type { i64, i32, %struct.TYPE_6__, i64, i32, %struct.TYPE_7__, %struct.siw_sqe* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i32 }
%struct.siw_sqe = type { i32, i32, i64, i32, i64, i32, i32, i32, i32* }
%struct.siw_wqe = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"QP locked, state %d\0A\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@SIW_QP_STATE_RTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"QP out of state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"wr must be empty for user mapped sq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"sq full\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"too many sge's: %d\0A\00", align 1
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@SIW_SIGNAL_ALL_WR = common dso_local global i32 0, align 4
@SIW_WQE_SIGNALLED = common dso_local global i32 0, align 4
@IB_SEND_FENCE = common dso_local global i32 0, align 4
@SIW_WQE_READ_FENCE = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@SIW_WQE_SOLICITED = common dso_local global i32 0, align 4
@IB_SEND_INLINE = common dso_local global i32 0, align 4
@SIW_WQE_INLINE = common dso_local global i32 0, align 4
@SIW_OP_SEND = common dso_local global i32 0, align 4
@SIW_OP_SEND_REMOTE_INV = common dso_local global i32 0, align 4
@SIW_OP_READ = common dso_local global i32 0, align 4
@SIW_OP_READ_LOCAL_INV = common dso_local global i32 0, align 4
@SIW_OP_WRITE = common dso_local global i32 0, align 4
@IWARP_ACCESS_MASK = common dso_local global i32 0, align 4
@SIW_OP_REG_MR = common dso_local global i32 0, align 4
@SIW_OP_INVAL_STAG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"ib wr type %d unsupported\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"opcode %d, flags 0x%x, wr_id 0x%pK\0A\00", align 1
@SIW_WQE_VALID = common dso_local global i32 0, align 4
@SIW_WR_IDLE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca %struct.ib_send_wr**, align 8
  %8 = alloca %struct.siw_qp*, align 8
  %9 = alloca %struct.siw_wqe*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.siw_sqe*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %6, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %7, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %15 = call %struct.siw_qp* @to_siw_qp(%struct.ib_qp* %14)
  store %struct.siw_qp* %15, %struct.siw_qp** %8, align 8
  %16 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %17 = call %struct.siw_wqe* @tx_wqe(%struct.siw_qp* %16)
  store %struct.siw_wqe* %17, %struct.siw_wqe** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %19 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %18, i32 0, i32 1
  %20 = call i32 @down_read_trylock(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %3
  %23 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %24 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %23, %struct.ib_send_wr** %24, align 8
  %25 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %26 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %27 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENOTCONN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %490

33:                                               ; preds = %3
  %34 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %35 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @SIW_QP_STATE_RTS, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %33
  %45 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %46 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %45, i32 0, i32 1
  %47 = call i32 @up_read(i32* %46)
  %48 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %49 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %48, %struct.ib_send_wr** %49, align 8
  %50 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %51 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %52 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENOTCONN, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %490

58:                                               ; preds = %33
  %59 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %60 = icmp ne %struct.ib_send_wr* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %63 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %68 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %70 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %69, i32 0, i32 1
  %71 = call i32 @up_read(i32* %70)
  %72 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %73 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %72, %struct.ib_send_wr** %73, align 8
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %490

76:                                               ; preds = %61, %58
  %77 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %78 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %77, i32 0, i32 4
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %412, %76
  %82 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %83 = icmp ne %struct.ib_send_wr* %82, null
  br i1 %83, label %84, label %426

84:                                               ; preds = %81
  %85 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %86 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %89 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = urem i64 %87, %91
  store i64 %92, i64* %12, align 8
  %93 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %94 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %93, i32 0, i32 6
  %95 = load %struct.siw_sqe*, %struct.siw_sqe** %94, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %95, i64 %96
  store %struct.siw_sqe* %97, %struct.siw_sqe** %13, align 8
  %98 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %99 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %84
  %103 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %104 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %11, align 4
  br label %426

107:                                              ; preds = %84
  %108 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %109 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %112 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %110, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %107
  %117 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %118 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %119 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %11, align 4
  br label %426

124:                                              ; preds = %107
  %125 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %126 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %125, i32 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %129 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %128, i32 0, i32 4
  store i64 %127, i64* %129, align 8
  %130 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %131 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %124
  %137 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %138 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @SIW_SIGNAL_ALL_WR, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %136, %124
  %145 = load i32, i32* @SIW_WQE_SIGNALLED, align 4
  %146 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %147 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %136
  %151 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %152 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @IB_SEND_FENCE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* @SIW_WQE_READ_FENCE, align 4
  %159 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %160 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %157, %150
  %164 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %165 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %385 [
    i32 129, label %167
    i32 128, label %167
    i32 132, label %242
    i32 133, label %242
    i32 131, label %289
    i32 130, label %351
    i32 134, label %375
  ]

167:                                              ; preds = %163, %163
  %168 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %169 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load i32, i32* @SIW_WQE_SOLICITED, align 4
  %176 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %177 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %174, %167
  %181 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %182 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @IB_SEND_INLINE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %205, label %187

187:                                              ; preds = %180
  %188 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %189 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %192 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %191, i32 0, i32 8
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %195 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = call i32 @siw_copy_sgl(i32 %190, i32* %193, i32 %197)
  %199 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %200 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %204 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  br label %222

205:                                              ; preds = %180
  %206 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %207 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %208 = call i32 @siw_copy_inline_sgl(%struct.ib_send_wr* %206, %struct.siw_sqe* %207)
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp sle i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %11, align 4
  br label %393

214:                                              ; preds = %205
  %215 = load i32, i32* @SIW_WQE_INLINE, align 4
  %216 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %217 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  %220 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %221 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %220, i32 0, i32 1
  store i32 1, i32* %221, align 4
  br label %222

222:                                              ; preds = %214, %187
  %223 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %224 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 129
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load i32, i32* @SIW_OP_SEND, align 4
  %229 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %230 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %229, i32 0, i32 5
  store i32 %228, i32* %230, align 8
  br label %241

231:                                              ; preds = %222
  %232 = load i32, i32* @SIW_OP_SEND_REMOTE_INV, align 4
  %233 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %234 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %233, i32 0, i32 5
  store i32 %232, i32* %234, align 8
  %235 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %236 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %240 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %239, i32 0, i32 6
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %231, %227
  br label %393

242:                                              ; preds = %163, %163
  %243 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %244 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 1
  %247 = zext i1 %246 to i32
  %248 = call i64 @unlikely(i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %242
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %11, align 4
  br label %393

253:                                              ; preds = %242
  %254 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %255 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %258 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %257, i32 0, i32 8
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = call i32 @siw_copy_sgl(i32 %256, i32* %260, i32 1)
  %262 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %263 = call %struct.TYPE_10__* @rdma_wr(%struct.ib_send_wr* %262)
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %267 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %266, i32 0, i32 7
  store i32 %265, i32* %267, align 8
  %268 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %269 = call %struct.TYPE_10__* @rdma_wr(%struct.ib_send_wr* %268)
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %273 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %272, i32 0, i32 6
  store i32 %271, i32* %273, align 4
  %274 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %275 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %274, i32 0, i32 1
  store i32 1, i32* %275, align 4
  %276 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %277 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %278, 133
  br i1 %279, label %280, label %284

280:                                              ; preds = %253
  %281 = load i32, i32* @SIW_OP_READ, align 4
  %282 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %283 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %282, i32 0, i32 5
  store i32 %281, i32* %283, align 8
  br label %288

284:                                              ; preds = %253
  %285 = load i32, i32* @SIW_OP_READ_LOCAL_INV, align 4
  %286 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %287 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %286, i32 0, i32 5
  store i32 %285, i32* %287, align 8
  br label %288

288:                                              ; preds = %284, %280
  br label %393

289:                                              ; preds = %163
  %290 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %291 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @IB_SEND_INLINE, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %315, label %296

296:                                              ; preds = %289
  %297 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %298 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %301 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %300, i32 0, i32 8
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  %304 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %305 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = call i32 @siw_copy_sgl(i32 %299, i32* %303, i32 %307)
  %309 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %310 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = trunc i64 %311 to i32
  %313 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %314 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %313, i32 0, i32 1
  store i32 %312, i32* %314, align 4
  br label %335

315:                                              ; preds = %289
  %316 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %317 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %318 = call i32 @siw_copy_inline_sgl(%struct.ib_send_wr* %316, %struct.siw_sqe* %317)
  store i32 %318, i32* %11, align 4
  %319 = load i32, i32* %11, align 4
  %320 = icmp slt i32 %319, 0
  %321 = zext i1 %320 to i32
  %322 = call i64 @unlikely(i32 %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %315
  %325 = load i32, i32* @EINVAL, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %11, align 4
  br label %393

327:                                              ; preds = %315
  %328 = load i32, i32* @SIW_WQE_INLINE, align 4
  %329 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %330 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %331, %328
  store i32 %332, i32* %330, align 8
  %333 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %334 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %333, i32 0, i32 1
  store i32 1, i32* %334, align 4
  br label %335

335:                                              ; preds = %327, %296
  %336 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %337 = call %struct.TYPE_10__* @rdma_wr(%struct.ib_send_wr* %336)
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %341 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %340, i32 0, i32 7
  store i32 %339, i32* %341, align 8
  %342 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %343 = call %struct.TYPE_10__* @rdma_wr(%struct.ib_send_wr* %342)
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %347 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %346, i32 0, i32 6
  store i32 %345, i32* %347, align 4
  %348 = load i32, i32* @SIW_OP_WRITE, align 4
  %349 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %350 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %349, i32 0, i32 5
  store i32 %348, i32* %350, align 8
  br label %393

351:                                              ; preds = %163
  %352 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %353 = call %struct.TYPE_9__* @reg_wr(%struct.ib_send_wr* %352)
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %357 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %356, i32 0, i32 2
  store i64 %355, i64* %357, align 8
  %358 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %359 = call %struct.TYPE_9__* @reg_wr(%struct.ib_send_wr* %358)
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %363 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %362, i32 0, i32 6
  store i32 %361, i32* %363, align 4
  %364 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %365 = call %struct.TYPE_9__* @reg_wr(%struct.ib_send_wr* %364)
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @IWARP_ACCESS_MASK, align 4
  %369 = and i32 %367, %368
  %370 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %371 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %370, i32 0, i32 3
  store i32 %369, i32* %371, align 8
  %372 = load i32, i32* @SIW_OP_REG_MR, align 4
  %373 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %374 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %373, i32 0, i32 5
  store i32 %372, i32* %374, align 8
  br label %393

375:                                              ; preds = %163
  %376 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %377 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %381 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %380, i32 0, i32 6
  store i32 %379, i32* %381, align 4
  %382 = load i32, i32* @SIW_OP_INVAL_STAG, align 4
  %383 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %384 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %383, i32 0, i32 5
  store i32 %382, i32* %384, align 8
  br label %393

385:                                              ; preds = %163
  %386 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %387 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %388 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %386, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %389)
  %391 = load i32, i32* @EINVAL, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %11, align 4
  br label %393

393:                                              ; preds = %385, %375, %351, %335, %324, %288, %250, %241, %211
  %394 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %395 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %396 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %395, i32 0, i32 5
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %399 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %402 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %401, i32 0, i32 4
  %403 = load i64, i64* %402, align 8
  %404 = inttoptr i64 %403 to i8*
  %405 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %394, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %397, i32 %400, i8* %404)
  %406 = load i32, i32* %11, align 4
  %407 = icmp slt i32 %406, 0
  %408 = zext i1 %407 to i32
  %409 = call i64 @unlikely(i32 %408)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %393
  br label %426

412:                                              ; preds = %393
  %413 = call i32 (...) @smp_wmb()
  %414 = load i32, i32* @SIW_WQE_VALID, align 4
  %415 = load %struct.siw_sqe*, %struct.siw_sqe** %13, align 8
  %416 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = or i32 %417, %414
  store i32 %418, i32* %416, align 8
  %419 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %420 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = add i64 %421, 1
  store i64 %422, i64* %420, align 8
  %423 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %424 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %423, i32 0, i32 3
  %425 = load %struct.ib_send_wr*, %struct.ib_send_wr** %424, align 8
  store %struct.ib_send_wr* %425, %struct.ib_send_wr** %6, align 8
  br label %81

426:                                              ; preds = %411, %116, %102, %81
  %427 = load %struct.siw_wqe*, %struct.siw_wqe** %9, align 8
  %428 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @SIW_WR_IDLE, align 8
  %431 = icmp ne i64 %429, %430
  br i1 %431, label %432, label %437

432:                                              ; preds = %426
  %433 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %434 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %433, i32 0, i32 4
  %435 = load i64, i64* %10, align 8
  %436 = call i32 @spin_unlock_irqrestore(i32* %434, i64 %435)
  br label %476

437:                                              ; preds = %426
  %438 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %439 = call i32 @siw_activate_tx(%struct.siw_qp* %438)
  store i32 %439, i32* %11, align 4
  %440 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %441 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %440, i32 0, i32 4
  %442 = load i64, i64* %10, align 8
  %443 = call i32 @spin_unlock_irqrestore(i32* %441, i64 %442)
  %444 = load i32, i32* %11, align 4
  %445 = icmp sle i32 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %437
  br label %476

447:                                              ; preds = %437
  %448 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %449 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %448, i32 0, i32 3
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %447
  %453 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %454 = call i32 @siw_sq_start(%struct.siw_qp* %453)
  store i32 %454, i32* %11, align 4
  br label %475

455:                                              ; preds = %447
  %456 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %457 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 0
  store i32 1, i32* %458, align 4
  %459 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %460 = call i64 @siw_qp_sq_process(%struct.siw_qp* %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %471

462:                                              ; preds = %455
  %463 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %464 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %463, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %471, label %468

468:                                              ; preds = %462
  %469 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %470 = call i32 @siw_qp_cm_drop(%struct.siw_qp* %469, i32 0)
  br label %471

471:                                              ; preds = %468, %462, %455
  %472 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %473 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %472, i32 0, i32 2
  %474 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %473, i32 0, i32 0
  store i32 0, i32* %474, align 4
  br label %475

475:                                              ; preds = %471, %452
  br label %476

476:                                              ; preds = %475, %446, %432
  %477 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %478 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %477, i32 0, i32 1
  %479 = call i32 @up_read(i32* %478)
  %480 = load i32, i32* %11, align 4
  %481 = icmp sge i32 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %476
  store i32 0, i32* %4, align 4
  br label %490

483:                                              ; preds = %476
  %484 = load %struct.siw_qp*, %struct.siw_qp** %8, align 8
  %485 = load i32, i32* %11, align 4
  %486 = call i32 (%struct.siw_qp*, i8*, ...) @siw_dbg_qp(%struct.siw_qp* %484, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %485)
  %487 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %488 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %7, align 8
  store %struct.ib_send_wr* %487, %struct.ib_send_wr** %488, align 8
  %489 = load i32, i32* %11, align 4
  store i32 %489, i32* %4, align 4
  br label %490

490:                                              ; preds = %483, %482, %66, %44, %22
  %491 = load i32, i32* %4, align 4
  ret i32 %491
}

declare dso_local %struct.siw_qp* @to_siw_qp(%struct.ib_qp*) #1

declare dso_local %struct.siw_wqe* @tx_wqe(%struct.siw_qp*) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @siw_copy_sgl(i32, i32*, i32) #1

declare dso_local i32 @siw_copy_inline_sgl(%struct.ib_send_wr*, %struct.siw_sqe*) #1

declare dso_local %struct.TYPE_10__* @rdma_wr(%struct.ib_send_wr*) #1

declare dso_local %struct.TYPE_9__* @reg_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @siw_activate_tx(%struct.siw_qp*) #1

declare dso_local i32 @siw_sq_start(%struct.siw_qp*) #1

declare dso_local i64 @siw_qp_sq_process(%struct.siw_qp*) #1

declare dso_local i32 @siw_qp_cm_drop(%struct.siw_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
