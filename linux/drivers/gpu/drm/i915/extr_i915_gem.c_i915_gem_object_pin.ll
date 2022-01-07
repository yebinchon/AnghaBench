; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem.c_i915_gem_object_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.i915_address_space = type { i32 }
%struct.i915_ggtt_view = type { i64 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PIN_MAPPABLE = common dso_local global i32 0, align 4
@I915_GGTT_VIEW_NORMAL = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@PIN_NONBLOCK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [141 x i8] c"bo is already pinned in ggtt with incorrect alignment: offset=%08x, req.alignment=%llx, req.map_and_fenceable=%d, vma->map_and_fenceable=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_vma* @i915_gem_object_pin(%struct.drm_i915_gem_object* %0, %struct.i915_address_space* %1, %struct.i915_ggtt_view* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.i915_vma*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  %9 = alloca %struct.i915_address_space*, align 8
  %10 = alloca %struct.i915_ggtt_view*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_i915_private*, align 8
  %15 = alloca %struct.i915_vma*, align 8
  %16 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %8, align 8
  store %struct.i915_address_space* %1, %struct.i915_address_space** %9, align 8
  store %struct.i915_ggtt_view* %2, %struct.i915_ggtt_view** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %18 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = call %struct.drm_i915_private* @to_i915(%struct.TYPE_8__* %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %14, align 8
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %23 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32 @lockdep_assert_held(i32* %26)
  %28 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %29 = call i64 @i915_gem_object_never_bind_ggtt(%struct.drm_i915_gem_object* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.i915_vma* @ERR_PTR(i32 %33)
  store %struct.i915_vma* %34, %struct.i915_vma** %7, align 8
  br label %203

35:                                               ; preds = %6
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @PIN_MAPPABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %35
  %41 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %10, align 8
  %42 = icmp ne %struct.i915_ggtt_view* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %10, align 8
  %45 = getelementptr inbounds %struct.i915_ggtt_view, %struct.i915_ggtt_view* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @I915_GGTT_VIEW_NORMAL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %43, %40
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %51 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %55 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %53, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @E2BIG, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.i915_vma* @ERR_PTR(i32 %61)
  store %struct.i915_vma* %62, %struct.i915_vma** %7, align 8
  br label %203

63:                                               ; preds = %49
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @PIN_NONBLOCK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %70 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %74 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 2
  %78 = icmp sgt i32 %72, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.i915_vma* @ERR_PTR(i32 %81)
  store %struct.i915_vma* %82, %struct.i915_vma** %7, align 8
  br label %203

83:                                               ; preds = %68, %63
  br label %84

84:                                               ; preds = %83, %43, %35
  %85 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %86 = load %struct.i915_address_space*, %struct.i915_address_space** %9, align 8
  %87 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %10, align 8
  %88 = call %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object* %85, %struct.i915_address_space* %86, %struct.i915_ggtt_view* %87)
  store %struct.i915_vma* %88, %struct.i915_vma** %15, align 8
  %89 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %90 = call i64 @IS_ERR(%struct.i915_vma* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  store %struct.i915_vma* %93, %struct.i915_vma** %7, align 8
  br label %203

94:                                               ; preds = %84
  %95 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @i915_vma_misplaced(%struct.i915_vma* %95, i32 %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %162

101:                                              ; preds = %94
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @PIN_NONBLOCK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %138

106:                                              ; preds = %101
  %107 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %108 = call i64 @i915_vma_is_pinned(%struct.i915_vma* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %112 = call i64 @i915_vma_is_active(%struct.i915_vma* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110, %106
  %115 = load i32, i32* @ENOSPC, align 4
  %116 = sub nsw i32 0, %115
  %117 = call %struct.i915_vma* @ERR_PTR(i32 %116)
  store %struct.i915_vma* %117, %struct.i915_vma** %7, align 8
  br label %203

118:                                              ; preds = %110
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @PIN_MAPPABLE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %118
  %124 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %125 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %128 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sdiv i32 %130, 2
  %132 = icmp sgt i32 %126, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = load i32, i32* @ENOSPC, align 4
  %135 = sub nsw i32 0, %134
  %136 = call %struct.i915_vma* @ERR_PTR(i32 %135)
  store %struct.i915_vma* %136, %struct.i915_vma** %7, align 8
  br label %203

137:                                              ; preds = %123, %118
  br label %138

138:                                              ; preds = %137, %101
  %139 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %140 = call i64 @i915_vma_is_pinned(%struct.i915_vma* %139)
  %141 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %142 = call i32 @i915_ggtt_offset(%struct.i915_vma* %141)
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @PIN_MAPPABLE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %152 = call i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma* %151)
  %153 = call i32 @WARN(i64 %140, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str, i64 0, i64 0), i32 %142, i32 %143, i32 %150, i32 %152)
  %154 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %155 = call i32 @i915_vma_unbind(%struct.i915_vma* %154)
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %138
  %159 = load i32, i32* %16, align 4
  %160 = call %struct.i915_vma* @ERR_PTR(i32 %159)
  store %struct.i915_vma* %160, %struct.i915_vma** %7, align 8
  br label %203

161:                                              ; preds = %138
  br label %162

162:                                              ; preds = %161, %94
  %163 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %164 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %162
  %168 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %169 = call i32 @i915_gem_object_is_tiled(%struct.drm_i915_gem_object* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %190, label %171

171:                                              ; preds = %167
  %172 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %173 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %172, i32 0, i32 1
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = call i32 @mutex_lock(i32* %175)
  %177 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %178 = call i32 @i915_vma_revoke_fence(%struct.i915_vma* %177)
  store i32 %178, i32* %16, align 4
  %179 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %180 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %179, i32 0, i32 1
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %171
  %187 = load i32, i32* %16, align 4
  %188 = call %struct.i915_vma* @ERR_PTR(i32 %187)
  store %struct.i915_vma* %188, %struct.i915_vma** %7, align 8
  br label %203

189:                                              ; preds = %171
  br label %190

190:                                              ; preds = %189, %167, %162
  %191 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @i915_vma_pin(%struct.i915_vma* %191, i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load i32, i32* %16, align 4
  %200 = call %struct.i915_vma* @ERR_PTR(i32 %199)
  store %struct.i915_vma* %200, %struct.i915_vma** %7, align 8
  br label %203

201:                                              ; preds = %190
  %202 = load %struct.i915_vma*, %struct.i915_vma** %15, align 8
  store %struct.i915_vma* %202, %struct.i915_vma** %7, align 8
  br label %203

203:                                              ; preds = %201, %198, %186, %158, %133, %114, %92, %79, %59, %31
  %204 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  ret %struct.i915_vma* %204
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.TYPE_8__*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @i915_gem_object_never_bind_ggtt(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.i915_vma* @ERR_PTR(i32) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object*, %struct.i915_address_space*, %struct.i915_ggtt_view*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i64 @i915_vma_misplaced(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i64 @i915_vma_is_pinned(%struct.i915_vma*) #1

declare dso_local i64 @i915_vma_is_active(%struct.i915_vma*) #1

declare dso_local i32 @WARN(i64, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @i915_ggtt_offset(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_is_map_and_fenceable(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_unbind(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_is_tiled(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_vma_revoke_fence(%struct.i915_vma*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
