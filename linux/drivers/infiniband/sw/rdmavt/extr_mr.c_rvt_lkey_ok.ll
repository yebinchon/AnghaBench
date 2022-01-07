; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_lkey_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_lkey_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_lkey_table = type { i64, i32* }
%struct.rvt_pd = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.rvt_sge = type { i64, i64, i32, i32, i8*, %struct.rvt_mregion* }
%struct.rvt_mregion = type { i64, i64, i64, i32, i32, %struct.TYPE_6__**, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8* }
%struct.ib_sge = type { i64, i64, i64 }
%struct.rvt_dev_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RVT_SEGSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_lkey_ok(%struct.rvt_lkey_table* %0, %struct.rvt_pd* %1, %struct.rvt_sge* %2, %struct.rvt_sge* %3, %struct.ib_sge* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvt_lkey_table*, align 8
  %9 = alloca %struct.rvt_pd*, align 8
  %10 = alloca %struct.rvt_sge*, align 8
  %11 = alloca %struct.rvt_sge*, align 8
  %12 = alloca %struct.ib_sge*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rvt_mregion*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.rvt_dev_info*, align 8
  %19 = alloca i64, align 8
  store %struct.rvt_lkey_table* %0, %struct.rvt_lkey_table** %8, align 8
  store %struct.rvt_pd* %1, %struct.rvt_pd** %9, align 8
  store %struct.rvt_sge* %2, %struct.rvt_sge** %10, align 8
  store %struct.rvt_sge* %3, %struct.rvt_sge** %11, align 8
  store %struct.ib_sge* %4, %struct.ib_sge** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %21 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %79

24:                                               ; preds = %6
  %25 = load %struct.rvt_pd*, %struct.rvt_pd** %9, align 8
  %26 = getelementptr inbounds %struct.rvt_pd, %struct.rvt_pd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %28)
  store %struct.rvt_dev_info* %29, %struct.rvt_dev_info** %18, align 8
  %30 = load %struct.rvt_pd*, %struct.rvt_pd** %9, align 8
  %31 = getelementptr inbounds %struct.rvt_pd, %struct.rvt_pd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %319

37:                                               ; preds = %24
  %38 = load %struct.rvt_sge*, %struct.rvt_sge** %11, align 8
  %39 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %40 = call i64 @rvt_sge_adjacent(%struct.rvt_sge* %38, %struct.ib_sge* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %319

43:                                               ; preds = %37
  %44 = call i32 (...) @rcu_read_lock()
  %45 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %18, align 8
  %46 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.rvt_mregion* @rcu_dereference(i32 %47)
  store %struct.rvt_mregion* %48, %struct.rvt_mregion** %14, align 8
  %49 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %50 = icmp ne %struct.rvt_mregion* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  br label %315

52:                                               ; preds = %43
  %53 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %54 = call i32 @rvt_get_mr(%struct.rvt_mregion* %53)
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %57 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %58 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %57, i32 0, i32 5
  store %struct.rvt_mregion* %56, %struct.rvt_mregion** %58, align 8
  %59 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %60 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %64 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %66 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %69 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %71 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %74 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %76 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %78 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %77, i32 0, i32 3
  store i32 0, i32* %78, align 4
  br label %308

79:                                               ; preds = %6
  %80 = load %struct.rvt_sge*, %struct.rvt_sge** %11, align 8
  %81 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %82 = call i64 @rvt_sge_adjacent(%struct.rvt_sge* %80, %struct.ib_sge* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %319

85:                                               ; preds = %79
  %86 = call i32 (...) @rcu_read_lock()
  %87 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %8, align 8
  %88 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %91 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.rvt_lkey_table*, %struct.rvt_lkey_table** %8, align 8
  %94 = getelementptr inbounds %struct.rvt_lkey_table, %struct.rvt_lkey_table* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = ashr i64 %92, %95
  %97 = getelementptr inbounds i32, i32* %89, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.rvt_mregion* @rcu_dereference(i32 %98)
  store %struct.rvt_mregion* %99, %struct.rvt_mregion** %14, align 8
  %100 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %101 = icmp ne %struct.rvt_mregion* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %85
  br label %315

103:                                              ; preds = %85
  %104 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %105 = call i32 @rvt_get_mr(%struct.rvt_mregion* %104)
  %106 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %107 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @READ_ONCE(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  br label %312

112:                                              ; preds = %103
  %113 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %114 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %113, i32 0, i32 8
  %115 = call i64 @atomic_read(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %112
  %118 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %119 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %122 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %117
  %126 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %127 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %126, i32 0, i32 7
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load %struct.rvt_pd*, %struct.rvt_pd** %9, align 8
  %130 = getelementptr inbounds %struct.rvt_pd, %struct.rvt_pd* %129, i32 0, i32 0
  %131 = icmp ne %struct.TYPE_4__* %128, %130
  br label %132

132:                                              ; preds = %125, %117, %112
  %133 = phi i1 [ true, %117 ], [ true, %112 ], [ %131, %125 ]
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %312

138:                                              ; preds = %132
  %139 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %140 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %143 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub i64 %141, %144
  store i64 %145, i64* %17, align 8
  %146 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %147 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %150 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ult i64 %148, %151
  br i1 %152, label %171, label %153

153:                                              ; preds = %138
  %154 = load i64, i64* %17, align 8
  %155 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %156 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %154, %157
  %159 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %160 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ugt i64 %158, %161
  br i1 %162, label %171, label %163

163:                                              ; preds = %153
  %164 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %165 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %168, %169
  br label %171

171:                                              ; preds = %163, %153, %138
  %172 = phi i1 [ true, %153 ], [ true, %138 ], [ %170, %163 ]
  %173 = zext i1 %172 to i32
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %312

177:                                              ; preds = %171
  %178 = call i32 (...) @rcu_read_unlock()
  %179 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %180 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %179, i32 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %17, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %17, align 8
  %184 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %185 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %211

188:                                              ; preds = %177
  %189 = load i64, i64* %17, align 8
  %190 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %191 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  %194 = lshr i64 %189, %193
  store i64 %194, i64* %19, align 8
  %195 = load i64, i64* %19, align 8
  %196 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %197 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  %200 = shl i64 %195, %199
  %201 = load i64, i64* %17, align 8
  %202 = sub i64 %201, %200
  store i64 %202, i64* %17, align 8
  %203 = load i64, i64* %19, align 8
  %204 = load i64, i64* @RVT_SEGSZ, align 8
  %205 = udiv i64 %203, %204
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %16, align 4
  %207 = load i64, i64* %19, align 8
  %208 = load i64, i64* @RVT_SEGSZ, align 8
  %209 = urem i64 %207, %208
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %15, align 4
  br label %257

211:                                              ; preds = %177
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %212

212:                                              ; preds = %255, %211
  %213 = load i64, i64* %17, align 8
  %214 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %215 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %214, i32 0, i32 5
  %216 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %215, align 8
  %217 = load i32, i32* %16, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %216, i64 %218
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = load i32, i32* %15, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp uge i64 %213, %227
  br i1 %228, label %229, label %256

229:                                              ; preds = %212
  %230 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %231 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %230, i32 0, i32 5
  %232 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %231, align 8
  %233 = load i32, i32* %16, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %232, i64 %234
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %237, align 8
  %239 = load i32, i32* %15, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %17, align 8
  %245 = sub i64 %244, %243
  store i64 %245, i64* %17, align 8
  %246 = load i32, i32* %15, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %15, align 4
  %248 = load i32, i32* %15, align 4
  %249 = zext i32 %248 to i64
  %250 = load i64, i64* @RVT_SEGSZ, align 8
  %251 = icmp uge i64 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %229
  %253 = load i32, i32* %16, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %255

255:                                              ; preds = %252, %229
  br label %212

256:                                              ; preds = %212
  br label %257

257:                                              ; preds = %256, %188
  %258 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %259 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %260 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %259, i32 0, i32 5
  store %struct.rvt_mregion* %258, %struct.rvt_mregion** %260, align 8
  %261 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %262 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %261, i32 0, i32 5
  %263 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %262, align 8
  %264 = load i32, i32* %16, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %263, i64 %265
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %268, align 8
  %270 = load i32, i32* %15, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = load i64, i64* %17, align 8
  %276 = getelementptr i8, i8* %274, i64 %275
  %277 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %278 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %277, i32 0, i32 4
  store i8* %276, i8** %278, align 8
  %279 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %280 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %279, i32 0, i32 5
  %281 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %280, align 8
  %282 = load i32, i32* %16, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %281, i64 %283
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %286, align 8
  %288 = load i32, i32* %15, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* %17, align 8
  %294 = sub i64 %292, %293
  %295 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %296 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %295, i32 0, i32 0
  store i64 %294, i64* %296, align 8
  %297 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %298 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %301 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %300, i32 0, i32 1
  store i64 %299, i64* %301, align 8
  %302 = load i32, i32* %16, align 4
  %303 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %304 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %303, i32 0, i32 2
  store i32 %302, i32* %304, align 8
  %305 = load i32, i32* %15, align 4
  %306 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %307 = getelementptr inbounds %struct.rvt_sge, %struct.rvt_sge* %306, i32 0, i32 3
  store i32 %305, i32* %307, align 4
  br label %308

308:                                              ; preds = %257, %52
  %309 = load %struct.rvt_sge*, %struct.rvt_sge** %10, align 8
  %310 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %311 = call i32 @trace_rvt_sge_new(%struct.rvt_sge* %309, %struct.ib_sge* %310)
  store i32 1, i32* %7, align 4
  br label %319

312:                                              ; preds = %176, %137, %111
  %313 = load %struct.rvt_mregion*, %struct.rvt_mregion** %14, align 8
  %314 = call i32 @rvt_put_mr(%struct.rvt_mregion* %313)
  br label %315

315:                                              ; preds = %312, %102, %51
  %316 = call i32 (...) @rcu_read_unlock()
  %317 = load i32, i32* @EINVAL, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %7, align 4
  br label %319

319:                                              ; preds = %315, %308, %84, %42, %34
  %320 = load i32, i32* %7, align 4
  ret i32 %320
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i64 @rvt_sge_adjacent(%struct.rvt_sge*, %struct.ib_sge*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rvt_mregion* @rcu_dereference(i32) #1

declare dso_local i32 @rvt_get_mr(%struct.rvt_mregion*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @trace_rvt_sge_new(%struct.rvt_sge*, %struct.ib_sge*) #1

declare dso_local i32 @rvt_put_mr(%struct.rvt_mregion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
