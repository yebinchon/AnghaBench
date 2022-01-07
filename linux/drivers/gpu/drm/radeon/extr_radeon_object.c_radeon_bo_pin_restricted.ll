; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_pin_restricted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_object.c_radeon_bo_pin_restricted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_bo = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.ttm_operation_ctx = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@RADEON_GEM_NO_CPU_ACCESS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%p pin failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_bo_pin_restricted(%struct.radeon_bo* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_bo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ttm_operation_ctx, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.radeon_bo* %0, %struct.radeon_bo** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = bitcast %struct.ttm_operation_ctx* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %16 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @radeon_ttm_tt_has_userptr(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %223

24:                                               ; preds = %4
  %25 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %26 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %24
  %30 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %31 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i64*, i64** %9, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %38 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %37)
  %39 = load i64*, i64** %9, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %40
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @RADEON_GEM_DOMAIN_VRAM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %49 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %13, align 8
  br label %61

54:                                               ; preds = %43
  %55 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %55, i32 0, i32 2
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %13, align 8
  br label %61

61:                                               ; preds = %54, %47
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %64 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %63)
  %65 = load i64, i64* %13, align 8
  %66 = sub nsw i64 %64, %65
  %67 = icmp slt i64 %62, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON_ONCE(i32 %68)
  br label %70

70:                                               ; preds = %61, %40
  store i32 0, i32* %5, align 4
  br label %223

71:                                               ; preds = %24
  %72 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %73 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %72, i32 0, i32 6
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @RADEON_GEM_DOMAIN_VRAM, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %223

83:                                               ; preds = %76, %71
  %84 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @radeon_ttm_placement_from_domain(%struct.radeon_bo* %84, i64 %85)
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %163, %83
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %90 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %166

94:                                               ; preds = %87
  %95 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %96 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %95, i32 0, i32 5
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %141

106:                                              ; preds = %94
  %107 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %108 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @RADEON_GEM_NO_CPU_ACCESS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %141, label %113

113:                                              ; preds = %106
  %114 = load i64, i64* %8, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i64, i64* %8, align 8
  %118 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %119 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %118, i32 0, i32 2
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %117, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %116, %113
  %126 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %127 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %126, i32 0, i32 2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PAGE_SHIFT, align 8
  %133 = ashr i64 %131, %132
  %134 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %135 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %134, i32 0, i32 5
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i64 %133, i64* %140, align 8
  br label %152

141:                                              ; preds = %116, %106, %94
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @PAGE_SHIFT, align 8
  %144 = ashr i64 %142, %143
  %145 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %146 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %145, i32 0, i32 5
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i64 %144, i64* %151, align 8
  br label %152

152:                                              ; preds = %141, %125
  %153 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %154 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %155 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %154, i32 0, i32 5
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %153
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %152
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %87

166:                                              ; preds = %87
  %167 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %168 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %167, i32 0, i32 4
  %169 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %170 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %169, i32 0, i32 3
  %171 = call i32 @ttm_bo_validate(%struct.TYPE_9__* %168, %struct.TYPE_10__* %170, %struct.ttm_operation_ctx* %10)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp eq i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i64 @likely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %213

177:                                              ; preds = %166
  %178 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %179 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  %180 = load i64*, i64** %9, align 8
  %181 = icmp ne i64* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %184 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %183)
  %185 = load i64*, i64** %9, align 8
  store i64 %184, i64* %185, align 8
  br label %186

186:                                              ; preds = %182, %177
  %187 = load i64, i64* %7, align 8
  %188 = load i64, i64* @RADEON_GEM_DOMAIN_VRAM, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %192 = call i64 @radeon_bo_size(%struct.radeon_bo* %191)
  %193 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %194 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %193, i32 0, i32 2
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %192
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 8
  br label %212

201:                                              ; preds = %186
  %202 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %203 = call i64 @radeon_bo_size(%struct.radeon_bo* %202)
  %204 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %205 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %204, i32 0, i32 2
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %203
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %207, align 4
  br label %212

212:                                              ; preds = %201, %190
  br label %221

213:                                              ; preds = %166
  %214 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %215 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %214, i32 0, i32 2
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %220 = call i32 @dev_err(i32 %218, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.radeon_bo* %219)
  br label %221

221:                                              ; preds = %213, %212
  %222 = load i32, i32* %11, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %221, %80, %70, %21
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @radeon_ttm_tt_has_userptr(i32) #2

declare dso_local i64 @radeon_bo_gpu_offset(%struct.radeon_bo*) #2

declare dso_local i32 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @radeon_ttm_placement_from_domain(%struct.radeon_bo*, i64) #2

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.ttm_operation_ctx*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i64 @radeon_bo_size(%struct.radeon_bo*) #2

declare dso_local i32 @dev_err(i32, i8*, %struct.radeon_bo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
