; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_alloc_qpn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_alloc_qpn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.rvt_dev_info.0*, %struct.rvt_qpn_table*, i32, i32)* }
%struct.rvt_dev_info.0 = type opaque
%struct.rvt_qpn_table = type { i32, i32, i32, i32, %struct.rvt_qpn_map*, i32 }
%struct.rvt_qpn_map = type { i32 }

@IB_QPT_SMI = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RVT_QPN_MAX = common dso_local global i32 0, align 4
@RVT_BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@RVT_BITS_PER_PAGE = common dso_local global i32 0, align 4
@RVT_QPNMAP_ENTRIES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_dev_info*, %struct.rvt_qpn_table*, i32, i32)* @alloc_qpn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_qpn(%struct.rvt_dev_info* %0, %struct.rvt_qpn_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvt_dev_info*, align 8
  %7 = alloca %struct.rvt_qpn_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rvt_qpn_map*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %6, align 8
  store %struct.rvt_qpn_table* %1, %struct.rvt_qpn_table** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %18 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.rvt_dev_info.0*, %struct.rvt_qpn_table*, i32, i32)*, i32 (%struct.rvt_dev_info.0*, %struct.rvt_qpn_table*, i32, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.rvt_dev_info.0*, %struct.rvt_qpn_table*, i32, i32)* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %24 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.rvt_dev_info.0*, %struct.rvt_qpn_table*, i32, i32)*, i32 (%struct.rvt_dev_info.0*, %struct.rvt_qpn_table*, i32, i32)** %25, align 8
  %27 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %28 = bitcast %struct.rvt_dev_info* %27 to %struct.rvt_dev_info.0*
  %29 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 %26(%struct.rvt_dev_info.0* %28, %struct.rvt_qpn_table* %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %263

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @IB_QPT_SMI, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @IB_QPT_GSI, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IB_QPT_GSI, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = mul nsw i32 2, %48
  %50 = add nsw i32 %46, %49
  %51 = shl i32 1, %50
  store i32 %51, i32* %16, align 4
  %52 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %53 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %52, i32 0, i32 5
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %56 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %16, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %41
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %15, align 4
  br label %70

64:                                               ; preds = %41
  %65 = load i32, i32* %16, align 4
  %66 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %67 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %61
  %71 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %72 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %71, i32 0, i32 5
  %73 = call i32 @spin_unlock(i32* %72)
  br label %261

74:                                               ; preds = %37
  %75 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %76 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %79 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %77, %80
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @RVT_QPN_MAX, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %74
  %86 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %87 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %90 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 1
  %93 = xor i32 %92, 1
  %94 = or i32 %88, %93
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %85, %74
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @RVT_BITS_PER_PAGE_MASK, align 4
  %98 = and i32 %96, %97
  store i32 %98, i32* %11, align 4
  %99 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %100 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %99, i32 0, i32 4
  %101 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @RVT_BITS_PER_PAGE, align 4
  %104 = sdiv i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %101, i64 %105
  store %struct.rvt_qpn_map* %106, %struct.rvt_qpn_map** %14, align 8
  %107 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %108 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = sub nsw i32 %109, %113
  store i32 %114, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %250, %95
  %116 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %14, align 8
  %117 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %115
  %125 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %126 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %14, align 8
  %127 = call i32 @get_map_page(%struct.rvt_qpn_table* %125, %struct.rvt_qpn_map* %126)
  %128 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %14, align 8
  %129 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  br label %258

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %115
  br label %139

139:                                              ; preds = %169, %138
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %14, align 8
  %142 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @test_and_set_bit(i32 %140, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %149 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %15, align 4
  br label %261

151:                                              ; preds = %139
  %152 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %153 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %11, align 4
  %157 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %158 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %14, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @mk_qpn(%struct.rvt_qpn_table* %157, %struct.rvt_qpn_map* %158, i32 %159)
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @RVT_BITS_PER_PAGE, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @RVT_QPN_MAX, align 4
  %168 = icmp slt i32 %166, %167
  br label %169

169:                                              ; preds = %165, %161
  %170 = phi i1 [ false, %161 ], [ %168, %165 ]
  br i1 %170, label %139, label %171

171:                                              ; preds = %169
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %199

176:                                              ; preds = %171
  %177 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %178 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @RVT_QPNMAP_ENTRIES, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %258

183:                                              ; preds = %176
  %184 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %185 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %184, i32 0, i32 4
  %186 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %185, align 8
  %187 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %188 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %186, i64 %191
  store %struct.rvt_qpn_map* %192, %struct.rvt_qpn_map** %14, align 8
  %193 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %194 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = and i32 %196, 1
  %198 = or i32 %195, %197
  store i32 %198, i32* %11, align 4
  br label %232

199:                                              ; preds = %171
  %200 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %14, align 8
  %201 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %202 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %201, i32 0, i32 4
  %203 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %202, align 8
  %204 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %205 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %203, i64 %207
  %209 = icmp ult %struct.rvt_qpn_map* %200, %208
  br i1 %209, label %210, label %219

210:                                              ; preds = %199
  %211 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %14, align 8
  %212 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %211, i32 1
  store %struct.rvt_qpn_map* %212, %struct.rvt_qpn_map** %14, align 8
  %213 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %214 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %11, align 4
  %217 = and i32 %216, 1
  %218 = or i32 %215, %217
  store i32 %218, i32* %11, align 4
  br label %231

219:                                              ; preds = %199
  %220 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %221 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %220, i32 0, i32 4
  %222 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %221, align 8
  %223 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %222, i64 0
  store %struct.rvt_qpn_map* %223, %struct.rvt_qpn_map** %14, align 8
  %224 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %225 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = and i32 %227, 1
  %229 = xor i32 %228, 1
  %230 = or i32 %226, %229
  store i32 %230, i32* %11, align 4
  br label %231

231:                                              ; preds = %219, %210
  br label %232

232:                                              ; preds = %231, %183
  %233 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %234 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp sgt i32 %236, 1
  br i1 %237, label %238, label %250

238:                                              ; preds = %232
  %239 = load i32, i32* %11, align 4
  %240 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %241 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sub nsw i32 %243, 1
  %245 = call i32 @BIT(i32 %244)
  %246 = sub nsw i32 %245, 1
  %247 = shl i32 %246, 1
  %248 = and i32 %239, %247
  %249 = icmp ne i32 %248, 0
  br label %250

250:                                              ; preds = %238, %232
  %251 = phi i1 [ false, %232 ], [ %249, %238 ]
  %252 = zext i1 %251 to i32
  %253 = call i32 @WARN_ON(i32 %252)
  %254 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %7, align 8
  %255 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %14, align 8
  %256 = load i32, i32* %11, align 4
  %257 = call i32 @mk_qpn(%struct.rvt_qpn_table* %254, %struct.rvt_qpn_map* %255, i32 %256)
  store i32 %257, i32* %13, align 4
  br label %115

258:                                              ; preds = %182, %136
  %259 = load i32, i32* @ENOMEM, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %15, align 4
  br label %261

261:                                              ; preds = %258, %146, %70
  %262 = load i32, i32* %15, align 4
  store i32 %262, i32* %5, align 4
  br label %263

263:                                              ; preds = %261, %22
  %264 = load i32, i32* %5, align 4
  ret i32 %264
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_map_page(%struct.rvt_qpn_table*, %struct.rvt_qpn_map*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @mk_qpn(%struct.rvt_qpn_table*, %struct.rvt_qpn_map*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
