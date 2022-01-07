; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_move_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_bo_move_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_tt*, %struct.ttm_mem_reg, %struct.ttm_bo_device* }
%struct.ttm_tt = type { i64, i32 }
%struct.ttm_mem_reg = type { i64, i32, i64, i64, i32*, i32 }
%struct.ttm_bo_device = type { %struct.ttm_mem_type_manager* }
%struct.ttm_mem_type_manager = type { i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@tt_unpopulated = common dso_local global i64 0, align 8
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@TTM_MEMTYPE_FLAG_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_move_memcpy(%struct.ttm_buffer_object* %0, %struct.ttm_operation_ctx* %1, %struct.ttm_mem_reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca %struct.ttm_operation_ctx*, align 8
  %7 = alloca %struct.ttm_mem_reg*, align 8
  %8 = alloca %struct.ttm_bo_device*, align 8
  %9 = alloca %struct.ttm_mem_type_manager*, align 8
  %10 = alloca %struct.ttm_tt*, align 8
  %11 = alloca %struct.ttm_mem_reg*, align 8
  %12 = alloca %struct.ttm_mem_reg, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %5, align 8
  store %struct.ttm_operation_ctx* %1, %struct.ttm_operation_ctx** %6, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %7, align 8
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %23 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %22, i32 0, i32 2
  %24 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %23, align 8
  store %struct.ttm_bo_device* %24, %struct.ttm_bo_device** %8, align 8
  %25 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %26 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %25, i32 0, i32 0
  %27 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %26, align 8
  %28 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %29 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %27, i64 %30
  store %struct.ttm_mem_type_manager* %31, %struct.ttm_mem_type_manager** %9, align 8
  %32 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %33 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %32, i32 0, i32 0
  %34 = load %struct.ttm_tt*, %struct.ttm_tt** %33, align 8
  store %struct.ttm_tt* %34, %struct.ttm_tt** %10, align 8
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %36 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %35, i32 0, i32 1
  store %struct.ttm_mem_reg* %36, %struct.ttm_mem_reg** %11, align 8
  %37 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %38 = bitcast %struct.ttm_mem_reg* %12 to i8*
  %39 = bitcast %struct.ttm_mem_reg* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 48, i1 false)
  store i64 0, i64* %18, align 8
  %40 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %41 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %40, i32 %43, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %3
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %4, align 4
  br label %234

52:                                               ; preds = %3
  %53 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %54 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %55 = call i32 @ttm_mem_reg_ioremap(%struct.ttm_bo_device* %53, %struct.ttm_mem_reg* %54, i8** %13)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %4, align 4
  br label %234

60:                                               ; preds = %52
  %61 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %62 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %63 = call i32 @ttm_mem_reg_ioremap(%struct.ttm_bo_device* %61, %struct.ttm_mem_reg* %62, i8** %14)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %223

67:                                               ; preds = %60
  %68 = load i8*, i8** %13, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i8*, i8** %14, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %196

74:                                               ; preds = %70, %67
  %75 = load i8*, i8** %13, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %101

77:                                               ; preds = %74
  %78 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %79 = icmp eq %struct.ttm_tt* %78, null
  br i1 %79, label %93, label %80

80:                                               ; preds = %77
  %81 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %82 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @tt_unpopulated, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %88 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %86, %77
  %94 = load i8*, i8** %14, align 8
  %95 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %96 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = mul nsw i32 %97, %98
  %100 = call i32 @memset_io(i8* %94, i32 0, i32 %99)
  br label %196

101:                                              ; preds = %86, %80, %74
  %102 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %103 = icmp ne %struct.ttm_tt* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %106 = load %struct.ttm_operation_ctx*, %struct.ttm_operation_ctx** %6, align 8
  %107 = call i32 @ttm_tt_populate(%struct.ttm_tt* %105, %struct.ttm_operation_ctx* %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %218

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %101
  store i64 0, i64* %18, align 8
  store i32 1, i32* %19, align 4
  %113 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %114 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %117 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %112
  %121 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %122 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %125 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %128 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = icmp slt i64 %123, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %120
  store i32 -1, i32* %19, align 4
  %133 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %134 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %18, align 8
  br label %138

138:                                              ; preds = %132, %120, %112
  store i64 0, i64* %16, align 8
  br label %139

139:                                              ; preds = %191, %138
  %140 = load i64, i64* %16, align 8
  %141 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %142 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = icmp ult i64 %140, %144
  br i1 %145, label %146, label %194

146:                                              ; preds = %139
  %147 = load i64, i64* %16, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %147, %149
  %151 = load i64, i64* %18, align 8
  %152 = add i64 %150, %151
  store i64 %152, i64* %17, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %146
  %156 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %157 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @PAGE_KERNEL, align 4
  %160 = call i32 @ttm_io_prot(i32 %158, i32 %159)
  store i32 %160, i32* %20, align 4
  %161 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %162 = load i8*, i8** %14, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load i32, i32* %20, align 4
  %165 = call i32 @ttm_copy_ttm_io_page(%struct.ttm_tt* %161, i8* %162, i64 %163, i32 %164)
  store i32 %165, i32* %15, align 4
  br label %186

166:                                              ; preds = %146
  %167 = load i8*, i8** %14, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %180

169:                                              ; preds = %166
  %170 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %171 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @PAGE_KERNEL, align 4
  %174 = call i32 @ttm_io_prot(i32 %172, i32 %173)
  store i32 %174, i32* %21, align 4
  %175 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %176 = load i8*, i8** %13, align 8
  %177 = load i64, i64* %17, align 8
  %178 = load i32, i32* %21, align 4
  %179 = call i32 @ttm_copy_io_ttm_page(%struct.ttm_tt* %175, i8* %176, i64 %177, i32 %178)
  store i32 %179, i32* %15, align 4
  br label %185

180:                                              ; preds = %166
  %181 = load i8*, i8** %14, align 8
  %182 = load i8*, i8** %13, align 8
  %183 = load i64, i64* %17, align 8
  %184 = call i32 @ttm_copy_io_page(i8* %181, i8* %182, i64 %183)
  store i32 %184, i32* %15, align 4
  br label %185

185:                                              ; preds = %180, %169
  br label %186

186:                                              ; preds = %185, %155
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  br label %218

190:                                              ; preds = %186
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %16, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %16, align 8
  br label %139

194:                                              ; preds = %139
  %195 = call i32 (...) @mb()
  br label %196

196:                                              ; preds = %194, %93, %73
  %197 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %198 = bitcast %struct.ttm_mem_reg* %12 to i8*
  %199 = bitcast %struct.ttm_mem_reg* %197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %198, i8* align 8 %199, i64 48, i1 false)
  %200 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %201 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %202 = bitcast %struct.ttm_mem_reg* %200 to i8*
  %203 = bitcast %struct.ttm_mem_reg* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 %203, i64 48, i1 false)
  %204 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %205 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %204, i32 0, i32 4
  store i32* null, i32** %205, align 8
  %206 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %9, align 8
  %207 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @TTM_MEMTYPE_FLAG_FIXED, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %196
  %213 = load %struct.ttm_tt*, %struct.ttm_tt** %10, align 8
  %214 = call i32 @ttm_tt_destroy(%struct.ttm_tt* %213)
  %215 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %216 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %215, i32 0, i32 0
  store %struct.ttm_tt* null, %struct.ttm_tt** %216, align 8
  br label %217

217:                                              ; preds = %212, %196
  br label %218

218:                                              ; preds = %217, %189, %110
  %219 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %220 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %11, align 8
  %221 = load i8*, i8** %14, align 8
  %222 = call i32 @ttm_mem_reg_iounmap(%struct.ttm_bo_device* %219, %struct.ttm_mem_reg* %220, i8* %221)
  br label %223

223:                                              ; preds = %218, %66
  %224 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %8, align 8
  %225 = load i8*, i8** %13, align 8
  %226 = call i32 @ttm_mem_reg_iounmap(%struct.ttm_bo_device* %224, %struct.ttm_mem_reg* %12, i8* %225)
  %227 = load i32, i32* %15, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %223
  %230 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %231 = call i32 @ttm_bo_mem_put(%struct.ttm_buffer_object* %230, %struct.ttm_mem_reg* %12)
  br label %232

232:                                              ; preds = %229, %223
  %233 = load i32, i32* %15, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %232, %58, %50
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32) #2

declare dso_local i32 @ttm_mem_reg_ioremap(%struct.ttm_bo_device*, %struct.ttm_mem_reg*, i8**) #2

declare dso_local i32 @memset_io(i8*, i32, i32) #2

declare dso_local i32 @ttm_tt_populate(%struct.ttm_tt*, %struct.ttm_operation_ctx*) #2

declare dso_local i32 @ttm_io_prot(i32, i32) #2

declare dso_local i32 @ttm_copy_ttm_io_page(%struct.ttm_tt*, i8*, i64, i32) #2

declare dso_local i32 @ttm_copy_io_ttm_page(%struct.ttm_tt*, i8*, i64, i32) #2

declare dso_local i32 @ttm_copy_io_page(i8*, i8*, i64) #2

declare dso_local i32 @mb(...) #2

declare dso_local i32 @ttm_tt_destroy(%struct.ttm_tt*) #2

declare dso_local i32 @ttm_mem_reg_iounmap(%struct.ttm_bo_device*, %struct.ttm_mem_reg*, i8*) #2

declare dso_local i32 @ttm_bo_mem_put(%struct.ttm_buffer_object*, %struct.ttm_mem_reg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
