; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_8__, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.t4_swsqe*, i32, %struct.TYPE_5__* }
%struct.t4_swsqe = type { i32, i32, %struct.t4_cqe }
%struct.t4_cqe = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.t4_cq = type { i32, i32, i32 }
%struct.t4_srq = type { i32 }

@.str = private unnamed_addr constant [113 x i8] c"CQE OVF %u qpid 0x%0x genbit %u type %u status 0x%0x opcode 0x%0x len 0x%0x wrid_hi_stag 0x%x wrid_low_msn 0x%x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@FW_RI_TERMINATE = common dso_local global i64 0, align 8
@FW_RI_READ_RESP = common dso_local global i64 0, align 8
@T4_ERR_SWFLUSH = common dso_local global i64 0, align 8
@T4_ERR_MSN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"out of order completion going in sw_sq at idx %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"completing sq idx %u\0A\00", align 1
@c4iw_wr_log = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"completing rq idx %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"cq %p cqid 0x%x skip sw cqe cidx %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"cq %p cqid 0x%x skip hw cqe cidx %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_wq*, %struct.t4_cq*, %struct.t4_cqe*, i32*, i32*, i64*, %struct.t4_srq*)* @poll_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_cq(%struct.t4_wq* %0, %struct.t4_cq* %1, %struct.t4_cqe* %2, i32* %3, i32* %4, i64* %5, %struct.t4_srq* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.t4_wq*, align 8
  %10 = alloca %struct.t4_cq*, align 8
  %11 = alloca %struct.t4_cqe*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.t4_srq*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.t4_cqe*, align 8
  %18 = alloca %struct.t4_cqe, align 4
  %19 = alloca %struct.t4_swsqe*, align 8
  %20 = alloca i32, align 4
  store %struct.t4_wq* %0, %struct.t4_wq** %9, align 8
  store %struct.t4_cq* %1, %struct.t4_cq** %10, align 8
  store %struct.t4_cqe* %2, %struct.t4_cqe** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store %struct.t4_srq* %6, %struct.t4_srq** %15, align 8
  store i32 0, i32* %16, align 4
  %21 = load i32*, i32** %12, align 8
  store i32 0, i32* %21, align 4
  %22 = load i64*, i64** %14, align 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.t4_cq*, %struct.t4_cq** %10, align 8
  %24 = call i32 @t4_next_cqe(%struct.t4_cq* %23, %struct.t4_cqe** %17)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %8, align 4
  br label %384

29:                                               ; preds = %7
  %30 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %31 = call i32 @CQE_OVFBIT(%struct.t4_cqe* %30)
  %32 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %33 = call i32 @CQE_QPID(%struct.t4_cqe* %32)
  %34 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %35 = call i32 @CQE_GENBIT(%struct.t4_cqe* %34)
  %36 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %37 = call i32 @CQE_TYPE(%struct.t4_cqe* %36)
  %38 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %39 = call i64 @CQE_STATUS(%struct.t4_cqe* %38)
  %40 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %41 = call i64 @CQE_OPCODE(%struct.t4_cqe* %40)
  %42 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %43 = call i32 @CQE_LEN(%struct.t4_cqe* %42)
  %44 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %45 = call i32 @CQE_WRID_HI(%struct.t4_cqe* %44)
  %46 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %47 = call i32 @CQE_WRID_LOW(%struct.t4_cqe* %46)
  %48 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33, i32 %35, i32 %37, i64 %39, i64 %41, i32 %43, i32 %45, i32 %47)
  %49 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %50 = icmp eq %struct.t4_wq* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %29
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %16, align 4
  br label %356

54:                                               ; preds = %29
  %55 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %56 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %61 = call i64 @SW_CQE(%struct.t4_cqe* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %16, align 4
  br label %356

66:                                               ; preds = %59, %54
  %67 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %68 = call i64 @CQE_OPCODE(%struct.t4_cqe* %67)
  %69 = load i64, i64* @FW_RI_TERMINATE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %16, align 4
  br label %356

74:                                               ; preds = %66
  %75 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %76 = call i64 @DRAIN_CQE(%struct.t4_cqe* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %80 = call i32 @CQE_DRAIN_COOKIE(%struct.t4_cqe* %79)
  %81 = load i32*, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.t4_cqe*, %struct.t4_cqe** %11, align 8
  %83 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %84 = bitcast %struct.t4_cqe* %82 to i8*
  %85 = bitcast %struct.t4_cqe* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  br label %356

86:                                               ; preds = %74
  %87 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %88 = call i64 @RQ_TYPE(%struct.t4_cqe* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %142

90:                                               ; preds = %86
  %91 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %92 = call i64 @CQE_OPCODE(%struct.t4_cqe* %91)
  %93 = load i64, i64* @FW_RI_READ_RESP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %142

95:                                               ; preds = %90
  %96 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %97 = call i32 @CQE_TYPE(%struct.t4_cqe* %96)
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %101 = call i64 @CQE_STATUS(%struct.t4_cqe* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %105 = call i32 @t4_set_wq_in_error(%struct.t4_wq* %104, i32 0)
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* @EAGAIN, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %16, align 4
  br label %356

109:                                              ; preds = %95
  %110 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %111 = call i32 @CQE_WRID_STAG(%struct.t4_cqe* %110)
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %115 = call i64 @CQE_STATUS(%struct.t4_cqe* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %119 = call i32 @t4_set_wq_in_error(%struct.t4_wq* %118, i32 0)
  br label %120

120:                                              ; preds = %117, %113
  %121 = load i32, i32* @EAGAIN, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %16, align 4
  br label %356

123:                                              ; preds = %109
  %124 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %125 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %123
  %132 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %133 = call i32 @advance_oldest_read(%struct.t4_wq* %132)
  %134 = load i32, i32* @EAGAIN, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %16, align 4
  br label %356

136:                                              ; preds = %123
  %137 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %138 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %139 = call i32 @create_read_req_cqe(%struct.t4_wq* %137, %struct.t4_cqe* %138, %struct.t4_cqe* %18)
  store %struct.t4_cqe* %18, %struct.t4_cqe** %17, align 8
  %140 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %141 = call i32 @advance_oldest_read(%struct.t4_wq* %140)
  br label %142

142:                                              ; preds = %136, %90, %86
  %143 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %144 = call i64 @CQE_STATUS(%struct.t4_cqe* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %148 = call i64 @t4_wq_in_error(%struct.t4_wq* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %146, %142
  %151 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %152 = call i64 @CQE_STATUS(%struct.t4_cqe* %151)
  %153 = load i64, i64* @T4_ERR_SWFLUSH, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i32*, i32** %12, align 8
  store i32 %155, i32* %156, align 4
  %157 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %158 = call i32 @t4_set_wq_in_error(%struct.t4_wq* %157, i32 0)
  br label %159

159:                                              ; preds = %150, %146
  %160 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %161 = call i64 @RQ_TYPE(%struct.t4_cqe* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %191

163:                                              ; preds = %159
  %164 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %165 = call i64 @CQE_STATUS(%struct.t4_cqe* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %169 = call i64 @CQE_WRID_MSN(%struct.t4_cqe* %168)
  %170 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %171 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %169, %173
  br label %175

175:                                              ; preds = %167, %163
  %176 = phi i1 [ false, %163 ], [ %174, %167 ]
  %177 = zext i1 %176 to i32
  %178 = call i64 @unlikely(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %182 = call i32 @t4_set_wq_in_error(%struct.t4_wq* %181, i32 0)
  %183 = load i32, i32* @T4_ERR_MSN, align 4
  %184 = call i32 @CQE_STATUS_V(i32 %183)
  %185 = call i32 @cpu_to_be32(i32 %184)
  %186 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %187 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %180, %175
  br label %224

191:                                              ; preds = %159
  %192 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %193 = call i64 @SW_CQE(%struct.t4_cqe* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %223, label %195

195:                                              ; preds = %191
  %196 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %197 = call i64 @CQE_WRID_SQ_IDX(%struct.t4_cqe* %196)
  %198 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %199 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %197, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %195
  %204 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %205 = call i64 @CQE_WRID_SQ_IDX(%struct.t4_cqe* %204)
  %206 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %205)
  %207 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %208 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load %struct.t4_swsqe*, %struct.t4_swsqe** %209, align 8
  %211 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %212 = call i64 @CQE_WRID_SQ_IDX(%struct.t4_cqe* %211)
  %213 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %210, i64 %212
  store %struct.t4_swsqe* %213, %struct.t4_swsqe** %19, align 8
  %214 = load %struct.t4_swsqe*, %struct.t4_swsqe** %19, align 8
  %215 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %214, i32 0, i32 2
  %216 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %217 = bitcast %struct.t4_cqe* %215 to i8*
  %218 = bitcast %struct.t4_cqe* %216 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %217, i8* align 4 %218, i64 4, i1 false)
  %219 = load %struct.t4_swsqe*, %struct.t4_swsqe** %19, align 8
  %220 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %219, i32 0, i32 0
  store i32 1, i32* %220, align 4
  %221 = load i32, i32* @EAGAIN, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %16, align 4
  br label %352

223:                                              ; preds = %195, %191
  br label %224

224:                                              ; preds = %223, %190
  %225 = load %struct.t4_cqe*, %struct.t4_cqe** %11, align 8
  %226 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %227 = bitcast %struct.t4_cqe* %225 to i8*
  %228 = bitcast %struct.t4_cqe* %226 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %227, i8* align 4 %228, i64 4, i1 false)
  %229 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %230 = call i64 @SQ_TYPE(%struct.t4_cqe* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %310

232:                                              ; preds = %224
  %233 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %234 = call i64 @CQE_WRID_SQ_IDX(%struct.t4_cqe* %233)
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %20, align 4
  %236 = load i32, i32* %20, align 4
  %237 = sext i32 %236 to i64
  %238 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %239 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ult i64 %237, %241
  br i1 %242, label %243, label %263

243:                                              ; preds = %232
  %244 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %245 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %20, align 4
  %249 = add nsw i32 %247, %248
  %250 = sext i32 %249 to i64
  %251 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %252 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = sub i64 %250, %254
  %256 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %257 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = sub i64 %260, %255
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 8
  br label %278

263:                                              ; preds = %232
  %264 = load i32, i32* %20, align 4
  %265 = sext i32 %264 to i64
  %266 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %267 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = sub i64 %265, %269
  %271 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %272 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = sext i32 %274 to i64
  %276 = sub i64 %275, %270
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %273, align 8
  br label %278

278:                                              ; preds = %263, %243
  %279 = load i32, i32* %20, align 4
  %280 = sext i32 %279 to i64
  %281 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %282 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  store i64 %280, i64* %283, align 8
  %284 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %285 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %287)
  %289 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %290 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 2
  %292 = load %struct.t4_swsqe*, %struct.t4_swsqe** %291, align 8
  %293 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %294 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %292, i64 %296
  %298 = getelementptr inbounds %struct.t4_swsqe, %struct.t4_swsqe* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** %13, align 8
  store i32 %299, i32* %300, align 4
  %301 = load i64, i64* @c4iw_wr_log, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %278
  %304 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %305 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %306 = call i32 @c4iw_log_wr_stats(%struct.t4_wq* %304, %struct.t4_cqe* %305)
  br label %307

307:                                              ; preds = %303, %278
  %308 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %309 = call i32 @t4_sq_consume(%struct.t4_wq* %308)
  br label %351

310:                                              ; preds = %224
  %311 = load %struct.t4_srq*, %struct.t4_srq** %15, align 8
  %312 = icmp ne %struct.t4_srq* %311, null
  br i1 %312, label %340, label %313

313:                                              ; preds = %310
  %314 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %315 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %317)
  %319 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %320 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 2
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %321, align 8
  %323 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %324 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** %13, align 8
  store i32 %329, i32* %330, align 4
  %331 = load i64, i64* @c4iw_wr_log, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %313
  %334 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %335 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %336 = call i32 @c4iw_log_wr_stats(%struct.t4_wq* %334, %struct.t4_cqe* %335)
  br label %337

337:                                              ; preds = %333, %313
  %338 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %339 = call i32 @t4_rq_consume(%struct.t4_wq* %338)
  br label %345

340:                                              ; preds = %310
  %341 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %342 = load %struct.t4_srq*, %struct.t4_srq** %15, align 8
  %343 = call i32 @reap_srq_cqe(%struct.t4_cqe* %341, %struct.t4_srq* %342)
  %344 = load i32*, i32** %13, align 8
  store i32 %343, i32* %344, align 4
  br label %345

345:                                              ; preds = %340, %337
  %346 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %347 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = add nsw i64 %349, 1
  store i64 %350, i64* %348, align 8
  br label %356

351:                                              ; preds = %307
  br label %352

352:                                              ; preds = %351, %203
  %353 = load %struct.t4_wq*, %struct.t4_wq** %9, align 8
  %354 = load %struct.t4_cq*, %struct.t4_cq** %10, align 8
  %355 = call i32 @flush_completed_wrs(%struct.t4_wq* %353, %struct.t4_cq* %354)
  br label %356

356:                                              ; preds = %352, %345, %131, %120, %106, %78, %71, %63, %51
  %357 = load %struct.t4_cqe*, %struct.t4_cqe** %17, align 8
  %358 = call i64 @SW_CQE(%struct.t4_cqe* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %371

360:                                              ; preds = %356
  %361 = load %struct.t4_cq*, %struct.t4_cq** %10, align 8
  %362 = load %struct.t4_cq*, %struct.t4_cq** %10, align 8
  %363 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.t4_cq*, %struct.t4_cq** %10, align 8
  %366 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), %struct.t4_cq* %361, i32 %364, i32 %367)
  %369 = load %struct.t4_cq*, %struct.t4_cq** %10, align 8
  %370 = call i32 @t4_swcq_consume(%struct.t4_cq* %369)
  br label %382

371:                                              ; preds = %356
  %372 = load %struct.t4_cq*, %struct.t4_cq** %10, align 8
  %373 = load %struct.t4_cq*, %struct.t4_cq** %10, align 8
  %374 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.t4_cq*, %struct.t4_cq** %10, align 8
  %377 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), %struct.t4_cq* %372, i32 %375, i32 %378)
  %380 = load %struct.t4_cq*, %struct.t4_cq** %10, align 8
  %381 = call i32 @t4_hwcq_consume(%struct.t4_cq* %380)
  br label %382

382:                                              ; preds = %371, %360
  %383 = load i32, i32* %16, align 4
  store i32 %383, i32* %8, align 4
  br label %384

384:                                              ; preds = %382, %27
  %385 = load i32, i32* %8, align 4
  ret i32 %385
}

declare dso_local i32 @t4_next_cqe(%struct.t4_cq*, %struct.t4_cqe**) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @CQE_OVFBIT(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_QPID(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_GENBIT(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_TYPE(%struct.t4_cqe*) #1

declare dso_local i64 @CQE_STATUS(%struct.t4_cqe*) #1

declare dso_local i64 @CQE_OPCODE(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_LEN(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_WRID_HI(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_WRID_LOW(%struct.t4_cqe*) #1

declare dso_local i64 @SW_CQE(%struct.t4_cqe*) #1

declare dso_local i64 @DRAIN_CQE(%struct.t4_cqe*) #1

declare dso_local i32 @CQE_DRAIN_COOKIE(%struct.t4_cqe*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @RQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i32 @t4_set_wq_in_error(%struct.t4_wq*, i32) #1

declare dso_local i32 @CQE_WRID_STAG(%struct.t4_cqe*) #1

declare dso_local i32 @advance_oldest_read(%struct.t4_wq*) #1

declare dso_local i32 @create_read_req_cqe(%struct.t4_wq*, %struct.t4_cqe*, %struct.t4_cqe*) #1

declare dso_local i64 @t4_wq_in_error(%struct.t4_wq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @CQE_WRID_MSN(%struct.t4_cqe*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @CQE_STATUS_V(i32) #1

declare dso_local i64 @CQE_WRID_SQ_IDX(%struct.t4_cqe*) #1

declare dso_local i64 @SQ_TYPE(%struct.t4_cqe*) #1

declare dso_local i32 @c4iw_log_wr_stats(%struct.t4_wq*, %struct.t4_cqe*) #1

declare dso_local i32 @t4_sq_consume(%struct.t4_wq*) #1

declare dso_local i32 @t4_rq_consume(%struct.t4_wq*) #1

declare dso_local i32 @reap_srq_cqe(%struct.t4_cqe*, %struct.t4_srq*) #1

declare dso_local i32 @flush_completed_wrs(%struct.t4_wq*, %struct.t4_cq*) #1

declare dso_local i32 @t4_swcq_consume(%struct.t4_cq*) #1

declare dso_local i32 @t4_hwcq_consume(%struct.t4_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
