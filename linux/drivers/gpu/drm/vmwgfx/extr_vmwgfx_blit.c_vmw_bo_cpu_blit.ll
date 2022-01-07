; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_blit.c_vmw_bo_cpu_blit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_blit.c_vmw_bo_cpu_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_10__, i32, %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_11__*, %struct.ttm_operation_ctx*)* }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.vmw_diff_cpy = type { i64, i64 }
%struct.vmw_bo_blit_line_data = type { i8*, i32*, i8*, i32*, %struct.vmw_diff_cpy*, i32, i32, i32, i32, i64, i64 }

@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@tt_unpopulated = common dso_local global i64 0, align 8
@PAGE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_bo_cpu_blit(%struct.ttm_buffer_object* %0, i64 %1, i64 %2, %struct.ttm_buffer_object* %3, i64 %4, i64 %5, i64 %6, i64 %7, %struct.vmw_diff_cpy* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_buffer_object*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ttm_buffer_object*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.vmw_diff_cpy*, align 8
  %20 = alloca %struct.ttm_operation_ctx, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.vmw_bo_blit_line_data, align 8
  %24 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store %struct.ttm_buffer_object* %3, %struct.ttm_buffer_object** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store %struct.vmw_diff_cpy* %8, %struct.vmw_diff_cpy** %19, align 8
  %25 = bitcast %struct.ttm_operation_ctx* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 8, i1 false)
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %13, align 8
  %28 = sdiv i64 %26, %27
  store i64 %28, i64* %22, align 8
  store i32 0, i32* %24, align 4
  %29 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %30 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %9
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %38 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dma_resv_assert_held(i32 %40)
  br label %42

42:                                               ; preds = %36, %9
  %43 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %44 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %42
  %51 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %52 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dma_resv_assert_held(i32 %54)
  br label %56

56:                                               ; preds = %50, %42
  %57 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %58 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %57, i32 0, i32 2
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @tt_unpopulated, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %56
  %65 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %66 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_11__*, %struct.ttm_operation_ctx*)*, i32 (%struct.TYPE_11__*, %struct.ttm_operation_ctx*)** %72, align 8
  %74 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %75 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %74, i32 0, i32 2
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = call i32 %73(%struct.TYPE_11__* %76, %struct.ttm_operation_ctx* %20)
  store i32 %77, i32* %24, align 4
  %78 = load i32, i32* %24, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %64
  %81 = load i32, i32* %24, align 4
  store i32 %81, i32* %10, align 4
  br label %206

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %85 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @tt_unpopulated, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %83
  %92 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %93 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %92, i32 0, i32 2
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_11__*, %struct.ttm_operation_ctx*)*, i32 (%struct.TYPE_11__*, %struct.ttm_operation_ctx*)** %99, align 8
  %101 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %102 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %101, i32 0, i32 2
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = call i32 %100(%struct.TYPE_11__* %103, %struct.ttm_operation_ctx* %20)
  store i32 %104, i32* %24, align 4
  %105 = load i32, i32* %24, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = load i32, i32* %24, align 4
  store i32 %108, i32* %10, align 4
  br label %206

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109, %83
  %111 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 10
  store i64 0, i64* %111, align 8
  %112 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 9
  store i64 0, i64* %112, align 8
  %113 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 1
  store i32* null, i32** %113, align 8
  %114 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 3
  store i32* null, i32** %114, align 8
  %115 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %116 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %115, i32 0, i32 2
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 8
  store i32 %119, i32* %120, align 4
  %121 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %122 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %121, i32 0, i32 2
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 7
  store i32 %125, i32* %126, align 8
  %127 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %128 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 6
  store i32 %129, i32* %130, align 4
  %131 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %132 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 5
  store i32 %133, i32* %134, align 8
  %135 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %11, align 8
  %136 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @PAGE_KERNEL, align 4
  %140 = call i8* @ttm_io_prot(i32 %138, i32 %139)
  %141 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 0
  store i8* %140, i8** %141, align 8
  %142 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %143 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PAGE_KERNEL, align 4
  %147 = call i8* @ttm_io_prot(i32 %145, i32 %146)
  %148 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 2
  store i8* %147, i8** %148, align 8
  %149 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %19, align 8
  %150 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 4
  store %struct.vmw_diff_cpy* %149, %struct.vmw_diff_cpy** %150, align 8
  store i64 0, i64* %21, align 8
  br label %151

151:                                              ; preds = %180, %110
  %152 = load i64, i64* %21, align 8
  %153 = load i64, i64* %18, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %155, label %183

155:                                              ; preds = %151
  %156 = load i64, i64* %21, align 8
  %157 = load i64, i64* %22, align 8
  %158 = add nsw i64 %156, %157
  %159 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %19, align 8
  %160 = getelementptr inbounds %struct.vmw_diff_cpy, %struct.vmw_diff_cpy* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %13, align 8
  %163 = srem i64 %161, %162
  %164 = load %struct.vmw_diff_cpy*, %struct.vmw_diff_cpy** %19, align 8
  %165 = getelementptr inbounds %struct.vmw_diff_cpy, %struct.vmw_diff_cpy* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* %15, align 8
  %168 = load i64, i64* %17, align 8
  %169 = call i32 @vmw_bo_cpu_blit_line(%struct.vmw_bo_blit_line_data* %23, i64 %166, i64 %167, i64 %168)
  store i32 %169, i32* %24, align 4
  %170 = load i32, i32* %24, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %155
  br label %184

173:                                              ; preds = %155
  %174 = load i64, i64* %13, align 8
  %175 = load i64, i64* %12, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* %12, align 8
  %177 = load i64, i64* %16, align 8
  %178 = load i64, i64* %15, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %15, align 8
  br label %180

180:                                              ; preds = %173
  %181 = load i64, i64* %21, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %21, align 8
  br label %151

183:                                              ; preds = %151
  br label %184

184:                                              ; preds = %183, %172
  %185 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @ttm_kunmap_atomic_prot(i32* %190, i8* %192)
  br label %194

194:                                              ; preds = %188, %184
  %195 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds %struct.vmw_bo_blit_line_data, %struct.vmw_bo_blit_line_data* %23, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @ttm_kunmap_atomic_prot(i32* %200, i8* %202)
  br label %204

204:                                              ; preds = %198, %194
  %205 = load i32, i32* %24, align 4
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %204, %107, %80
  %207 = load i32, i32* %10, align 4
  ret i32 %207
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dma_resv_assert_held(i32) #2

declare dso_local i8* @ttm_io_prot(i32, i32) #2

declare dso_local i32 @vmw_bo_cpu_blit_line(%struct.vmw_bo_blit_line_data*, i64, i64, i64) #2

declare dso_local i32 @ttm_kunmap_atomic_prot(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
