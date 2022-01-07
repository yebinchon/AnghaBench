; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-map.c_pblk_map_erase_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-map.c_pblk_map_erase_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.TYPE_3__*, %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.TYPE_3__ = type { %struct.ppa_addr }
%struct.ppa_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.pblk_line_meta = type { i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.nvm_rq = type { i32 }
%struct.pblk_line = type { i32, i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_map_erase_rq(%struct.pblk* %0, %struct.nvm_rq* %1, i32 %2, i64* %3, i32 %4, %struct.ppa_addr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pblk*, align 8
  %9 = alloca %struct.nvm_rq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ppa_addr*, align 8
  %14 = alloca %struct.nvm_tgt_dev*, align 8
  %15 = alloca %struct.nvm_geo*, align 8
  %16 = alloca %struct.pblk_line_meta*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.ppa_addr*, align 8
  %20 = alloca %struct.pblk_line*, align 8
  %21 = alloca %struct.pblk_line*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %8, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ppa_addr* %5, %struct.ppa_addr** %13, align 8
  %28 = load %struct.pblk*, %struct.pblk** %8, align 8
  %29 = getelementptr inbounds %struct.pblk, %struct.pblk* %28, i32 0, i32 3
  %30 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %29, align 8
  store %struct.nvm_tgt_dev* %30, %struct.nvm_tgt_dev** %14, align 8
  %31 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %14, align 8
  %32 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %31, i32 0, i32 0
  store %struct.nvm_geo* %32, %struct.nvm_geo** %15, align 8
  %33 = load %struct.pblk*, %struct.pblk** %8, align 8
  %34 = getelementptr inbounds %struct.pblk, %struct.pblk* %33, i32 0, i32 2
  store %struct.pblk_line_meta* %34, %struct.pblk_line_meta** %16, align 8
  %35 = load %struct.pblk*, %struct.pblk** %8, align 8
  %36 = load %struct.nvm_rq*, %struct.nvm_rq** %9, align 8
  %37 = call i8* @pblk_get_meta_for_writes(%struct.pblk* %35, %struct.nvm_rq* %36)
  store i8* %37, i8** %17, align 8
  %38 = load %struct.nvm_rq*, %struct.nvm_rq** %9, align 8
  %39 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %38)
  store %struct.ppa_addr* %39, %struct.ppa_addr** %19, align 8
  %40 = load %struct.pblk*, %struct.pblk** %8, align 8
  %41 = getelementptr inbounds %struct.pblk, %struct.pblk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %43

43:                                               ; preds = %160, %6
  %44 = load i32, i32* %24, align 4
  %45 = load %struct.nvm_rq*, %struct.nvm_rq** %9, align 8
  %46 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %164

49:                                               ; preds = %43
  %50 = load i32, i32* %24, align 4
  %51 = load i32, i32* %23, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %23, align 4
  %58 = urem i32 %56, %57
  br label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %23, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %58, %55 ], [ %60, %59 ]
  store i32 %62, i32* %22, align 4
  %63 = load %struct.pblk*, %struct.pblk** %8, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load i32, i32* %24, align 4
  %66 = call i8* @pblk_get_meta(%struct.pblk* %63, i8* %64, i32 %65)
  store i8* %66, i8** %18, align 8
  %67 = load %struct.pblk*, %struct.pblk** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %24, align 4
  %70 = add i32 %68, %69
  %71 = load %struct.ppa_addr*, %struct.ppa_addr** %19, align 8
  %72 = load i32, i32* %24, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %71, i64 %73
  %75 = load i64*, i64** %11, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = load i32, i32* %22, align 4
  %78 = call i32 @pblk_map_page_data(%struct.pblk* %67, i32 %70, %struct.ppa_addr* %74, i64* %75, i8* %76, i32 %77)
  store i32 %78, i32* %26, align 4
  %79 = load i32, i32* %26, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %61
  %82 = load i32, i32* %26, align 4
  store i32 %82, i32* %7, align 4
  br label %253

83:                                               ; preds = %61
  %84 = load %struct.nvm_geo*, %struct.nvm_geo** %15, align 8
  %85 = load %struct.ppa_addr*, %struct.ppa_addr** %19, align 8
  %86 = load i32, i32* %24, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %85, i64 %87
  %89 = bitcast %struct.ppa_addr* %88 to { i32, i64 }*
  %90 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %89, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %84, i32 %91, i64 %93)
  store i32 %94, i32* %25, align 4
  %95 = load %struct.pblk*, %struct.pblk** %8, align 8
  %96 = call %struct.pblk_line* @pblk_line_get_erase(%struct.pblk* %95)
  store %struct.pblk_line* %96, %struct.pblk_line** %20, align 8
  %97 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %98 = icmp ne %struct.pblk_line* %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %83
  %100 = load %struct.pblk*, %struct.pblk** %8, align 8
  %101 = load %struct.nvm_rq*, %struct.nvm_rq** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i64*, i64** %11, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %24, align 4
  %106 = load i32, i32* %23, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @pblk_map_rq(%struct.pblk* %100, %struct.nvm_rq* %101, i32 %102, i64* %103, i32 %104, i32 %107)
  store i32 %108, i32* %7, align 4
  br label %253

109:                                              ; preds = %83
  %110 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %111 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %110, i32 0, i32 3
  %112 = call i32 @spin_lock(i32* %111)
  %113 = load i32, i32* %25, align 4
  %114 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %115 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @test_bit(i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %25, align 4
  %121 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %122 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @set_bit(i32 %120, i32 %123)
  %125 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %126 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %125, i32 0, i32 1
  %127 = call i32 @atomic_dec(i32* %126)
  %128 = load %struct.ppa_addr*, %struct.ppa_addr** %13, align 8
  %129 = load %struct.ppa_addr*, %struct.ppa_addr** %19, align 8
  %130 = load i32, i32* %24, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %129, i64 %131
  %133 = bitcast %struct.ppa_addr* %128 to i8*
  %134 = bitcast %struct.ppa_addr* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 16, i1 false)
  %135 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %136 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ppa_addr*, %struct.ppa_addr** %13, align 8
  %139 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load %struct.ppa_addr*, %struct.ppa_addr** %13, align 8
  %142 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %145 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %144, i32 0, i32 3
  %146 = call i32 @spin_unlock(i32* %145)
  %147 = load %struct.pblk*, %struct.pblk** %8, align 8
  %148 = load %struct.nvm_rq*, %struct.nvm_rq** %9, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i64*, i64** %11, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* %23, align 4
  %154 = add nsw i32 %152, %153
  %155 = call i32 @pblk_map_rq(%struct.pblk* %147, %struct.nvm_rq* %148, i32 %149, i64* %150, i32 %151, i32 %154)
  store i32 %155, i32* %7, align 4
  br label %253

156:                                              ; preds = %109
  %157 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %158 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %157, i32 0, i32 3
  %159 = call i32 @spin_unlock(i32* %158)
  br label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* %24, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %24, align 4
  br label %43

164:                                              ; preds = %43
  %165 = load %struct.pblk*, %struct.pblk** %8, align 8
  %166 = call %struct.pblk_line* @pblk_line_get_data(%struct.pblk* %165)
  store %struct.pblk_line* %166, %struct.pblk_line** %21, align 8
  %167 = load %struct.pblk*, %struct.pblk** %8, align 8
  %168 = call %struct.pblk_line* @pblk_line_get_erase(%struct.pblk* %167)
  store %struct.pblk_line* %168, %struct.pblk_line** %20, align 8
  %169 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %170 = icmp ne %struct.pblk_line* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %164
  %172 = load i32, i32* @ENOSPC, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %7, align 4
  br label %253

174:                                              ; preds = %164
  %175 = load %struct.ppa_addr*, %struct.ppa_addr** %13, align 8
  %176 = bitcast %struct.ppa_addr* %175 to { i32, i64 }*
  %177 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %176, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @pblk_ppa_empty(i32 %178, i64 %180)
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %252

184:                                              ; preds = %174
  %185 = load %struct.pblk_line*, %struct.pblk_line** %21, align 8
  %186 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %16, align 8
  %189 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @bitmap_weight(i32 %187, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %252

193:                                              ; preds = %184
  store i32 -1, i32* %27, align 4
  br label %194

194:                                              ; preds = %220, %193
  %195 = load %struct.pblk_line*, %struct.pblk_line** %21, align 8
  %196 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %16, align 8
  %199 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %27, align 4
  %202 = add nsw i32 %201, 1
  %203 = call i32 @find_next_bit(i32 %197, i32 %200, i32 %202)
  store i32 %203, i32* %27, align 4
  %204 = load i32, i32* %27, align 4
  %205 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %16, align 8
  %206 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp sge i32 %204, %207
  br i1 %208, label %209, label %210

209:                                              ; preds = %194
  store i32 0, i32* %7, align 4
  br label %253

210:                                              ; preds = %194
  %211 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %212 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %211, i32 0, i32 3
  %213 = call i32 @spin_lock(i32* %212)
  %214 = load i32, i32* %27, align 4
  %215 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %216 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @test_bit(i32 %214, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %210
  %221 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %222 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %221, i32 0, i32 3
  %223 = call i32 @spin_unlock(i32* %222)
  br label %194

224:                                              ; preds = %210
  %225 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %226 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %225, i32 0, i32 3
  %227 = call i32 @spin_unlock(i32* %226)
  %228 = load i32, i32* %27, align 4
  %229 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %230 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @set_bit(i32 %228, i32 %231)
  %233 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %234 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %233, i32 0, i32 1
  %235 = call i32 @atomic_dec(i32* %234)
  %236 = load %struct.ppa_addr*, %struct.ppa_addr** %13, align 8
  %237 = load %struct.pblk*, %struct.pblk** %8, align 8
  %238 = getelementptr inbounds %struct.pblk, %struct.pblk* %237, i32 0, i32 1
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %238, align 8
  %240 = load i32, i32* %27, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = bitcast %struct.ppa_addr* %236 to i8*
  %245 = bitcast %struct.ppa_addr* %243 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %244, i8* align 8 %245, i64 16, i1 false)
  %246 = load %struct.pblk_line*, %struct.pblk_line** %20, align 8
  %247 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.ppa_addr*, %struct.ppa_addr** %13, align 8
  %250 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  store i32 %248, i32* %251, align 8
  br label %252

252:                                              ; preds = %224, %184, %174
  store i32 0, i32* %7, align 4
  br label %253

253:                                              ; preds = %252, %209, %171, %119, %99, %81
  %254 = load i32, i32* %7, align 4
  ret i32 %254
}

declare dso_local i8* @pblk_get_meta_for_writes(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local i8* @pblk_get_meta(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @pblk_map_page_data(%struct.pblk*, i32, %struct.ppa_addr*, i64*, i8*, i32) #1

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32, i64) #1

declare dso_local %struct.pblk_line* @pblk_line_get_erase(%struct.pblk*) #1

declare dso_local i32 @pblk_map_rq(%struct.pblk*, %struct.nvm_rq*, i32, i64*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.pblk_line* @pblk_line_get_data(%struct.pblk*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pblk_ppa_empty(i32, i64) #1

declare dso_local i64 @bitmap_weight(i32, i32) #1

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
