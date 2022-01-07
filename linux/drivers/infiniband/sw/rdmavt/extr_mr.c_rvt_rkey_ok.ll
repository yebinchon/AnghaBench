; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_rkey_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_rkey_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.rvt_sge = type { i64, i64, i32, i32, i8*, %struct.rvt_mregion* }
%struct.rvt_mregion = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_8__**, i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i8* }
%struct.rvt_dev_info = type { i32, %struct.rvt_lkey_table }
%struct.rvt_lkey_table = type { i64, i32* }
%struct.rvt_pd = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@RVT_SEGSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_rkey_ok(%struct.rvt_qp* %0, %struct.rvt_sge* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvt_qp*, align 8
  %9 = alloca %struct.rvt_sge*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rvt_dev_info*, align 8
  %15 = alloca %struct.rvt_lkey_table*, align 8
  %16 = alloca %struct.rvt_mregion*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.rvt_pd*, align 8
  %21 = alloca %struct.rvt_dev_info*, align 8
  %22 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %8, align 8
  store %struct.rvt_sge* %1, %struct.rvt_sge** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %24 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %26)
  store %struct.rvt_dev_info* %27, %struct.rvt_dev_info** %14, align 8
  %28 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %14, align 8
  %29 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %28, i32 0, i32 1
  store %struct.rvt_lkey_table* %29, %struct.rvt_lkey_table** %15, align 8
  %30 = call i32 (...) @rcu_read_lock()
  %31 = load i64, i64* %12, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %6
  %34 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %35 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.rvt_pd* @ibpd_to_rvtpd(i64 %37)
  store %struct.rvt_pd* %38, %struct.rvt_pd** %20, align 8
  %39 = load %struct.rvt_pd*, %struct.rvt_pd** %20, align 8
  %40 = getelementptr inbounds %struct.rvt_pd, %struct.rvt_pd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %42)
  store %struct.rvt_dev_info* %43, %struct.rvt_dev_info** %21, align 8
  %44 = load %struct.rvt_pd*, %struct.rvt_pd** %20, align 8
  %45 = getelementptr inbounds %struct.rvt_pd, %struct.rvt_pd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  br label %293

49:                                               ; preds = %33
  %50 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %21, align 8
  %51 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.rvt_mregion* @rcu_dereference(i32 %52)
  store %struct.rvt_mregion* %53, %struct.rvt_mregion** %16, align 8
  %54 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %55 = icmp ne %struct.rvt_mregion* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %293

57:                                               ; preds = %49
  %58 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %59 = call i32 @rvt_get_mr(%struct.rvt_mregion* %58)
  %60 = call i32 (...) @rcu_read_unlock()
  %61 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %62 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %63 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %62, i32 0, i32 5
  store %struct.rvt_mregion* %61, %struct.rvt_mregion** %63, align 8
  %64 = load i64, i64* %11, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %67 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %70 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %73 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %75 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %77 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %76, i32 0, i32 3
  store i32 0, i32* %77, align 4
  br label %289

78:                                               ; preds = %6
  %79 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %15, align 8
  %80 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %15, align 8
  %84 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = lshr i64 %82, %85
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.rvt_mregion* @rcu_dereference(i32 %88)
  store %struct.rvt_mregion* %89, %struct.rvt_mregion** %16, align 8
  %90 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %91 = icmp ne %struct.rvt_mregion* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %78
  br label %293

93:                                               ; preds = %78
  %94 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %95 = call i32 @rvt_get_mr(%struct.rvt_mregion* %94)
  %96 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %97 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @READ_ONCE(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %93
  br label %290

102:                                              ; preds = %93
  %103 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %104 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %103, i32 0, i32 8
  %105 = call i64 @atomic_read(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %102
  %108 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %109 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %122, label %113

113:                                              ; preds = %107
  %114 = load %struct.rvt_qp*, %struct.rvt_qp** %8, align 8
  %115 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %119 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br label %122

122:                                              ; preds = %113, %107, %102
  %123 = phi i1 [ true, %107 ], [ true, %102 ], [ %121, %113 ]
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %290

128:                                              ; preds = %122
  %129 = load i64, i64* %11, align 8
  %130 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %131 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %129, %132
  store i64 %133, i64* %19, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %136 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %134, %137
  br i1 %138, label %154, label %139

139:                                              ; preds = %128
  %140 = load i64, i64* %19, align 8
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %140, %141
  %143 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %144 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ugt i64 %142, %145
  br i1 %146, label %154, label %147

147:                                              ; preds = %139
  %148 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %149 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = and i32 %150, %151
  %153 = icmp eq i32 %152, 0
  br label %154

154:                                              ; preds = %147, %139, %128
  %155 = phi i1 [ true, %139 ], [ true, %128 ], [ %153, %147 ]
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  br label %290

160:                                              ; preds = %154
  %161 = call i32 (...) @rcu_read_unlock()
  %162 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %163 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %19, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %19, align 8
  %167 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %168 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %160
  %172 = load i64, i64* %19, align 8
  %173 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %174 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  %177 = lshr i64 %172, %176
  store i64 %177, i64* %22, align 8
  %178 = load i64, i64* %22, align 8
  %179 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %180 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  %183 = shl i64 %178, %182
  %184 = load i64, i64* %19, align 8
  %185 = sub i64 %184, %183
  store i64 %185, i64* %19, align 8
  %186 = load i64, i64* %22, align 8
  %187 = load i64, i64* @RVT_SEGSZ, align 8
  %188 = udiv i64 %186, %187
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %18, align 4
  %190 = load i64, i64* %22, align 8
  %191 = load i64, i64* @RVT_SEGSZ, align 8
  %192 = urem i64 %190, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %17, align 4
  br label %240

194:                                              ; preds = %160
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %195

195:                                              ; preds = %238, %194
  %196 = load i64, i64* %19, align 8
  %197 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %198 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %197, i32 0, i32 6
  %199 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %198, align 8
  %200 = load i32, i32* %18, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %199, i64 %201
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = load i32, i32* %17, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp uge i64 %196, %210
  br i1 %211, label %212, label %239

212:                                              ; preds = %195
  %213 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %214 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %213, i32 0, i32 6
  %215 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %214, align 8
  %216 = load i32, i32* %18, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %215, i64 %217
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = load i32, i32* %17, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %19, align 8
  %228 = sub i64 %227, %226
  store i64 %228, i64* %19, align 8
  %229 = load i32, i32* %17, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %17, align 4
  %231 = load i32, i32* %17, align 4
  %232 = zext i32 %231 to i64
  %233 = load i64, i64* @RVT_SEGSZ, align 8
  %234 = icmp uge i64 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %212
  %236 = load i32, i32* %18, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %238

238:                                              ; preds = %235, %212
  br label %195

239:                                              ; preds = %195
  br label %240

240:                                              ; preds = %239, %171
  %241 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %242 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %243 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %242, i32 0, i32 5
  store %struct.rvt_mregion* %241, %struct.rvt_mregion** %243, align 8
  %244 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %245 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %244, i32 0, i32 6
  %246 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %245, align 8
  %247 = load i32, i32* %18, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %246, i64 %248
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %251, align 8
  %253 = load i32, i32* %17, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = load i64, i64* %19, align 8
  %259 = getelementptr i8, i8* %257, i64 %258
  %260 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %261 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %260, i32 0, i32 4
  store i8* %259, i8** %261, align 8
  %262 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %263 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %262, i32 0, i32 6
  %264 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %263, align 8
  %265 = load i32, i32* %18, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %264, i64 %266
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  %271 = load i32, i32* %17, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* %19, align 8
  %277 = sub i64 %275, %276
  %278 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %279 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  %280 = load i64, i64* %10, align 8
  %281 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %282 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %281, i32 0, i32 1
  store i64 %280, i64* %282, align 8
  %283 = load i32, i32* %18, align 4
  %284 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %285 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 8
  %286 = load i32, i32* %17, align 4
  %287 = load %struct.rvt_sge*, %struct.rvt_sge** %9, align 8
  %288 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 4
  br label %289

289:                                              ; preds = %240, %57
  store i32 1, i32* %7, align 4
  br label %295

290:                                              ; preds = %159, %127, %101
  %291 = load %struct.rvt_mregion*, %struct.rvt_mregion** %16, align 8
  %292 = call i32 @rvt_put_mr(%struct.rvt_mregion* %291)
  br label %293

293:                                              ; preds = %290, %92, %56, %48
  %294 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %7, align 4
  br label %295

295:                                              ; preds = %293, %289
  %296 = load i32, i32* %7, align 4
  ret i32 %296
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_pd* @ibpd_to_rvtpd(i64) #1

declare dso_local %struct.rvt_mregion* @rcu_dereference(i32) #1

declare dso_local i32 @rvt_get_mr(%struct.rvt_mregion*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @rvt_put_mr(%struct.rvt_mregion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
