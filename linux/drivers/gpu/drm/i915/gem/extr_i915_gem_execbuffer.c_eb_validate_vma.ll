; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_validate_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_validate_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { i32, i32, %struct.TYPE_2__, %struct.drm_i915_gem_exec_object2* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.drm_i915_gem_exec_object2 = type { i32, i32, i32, i64, i64 }
%struct.i915_vma = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EXEC_OBJECT_PINNED = common dso_local global i32 0, align 4
@I915_GTT_PAGE_MASK = common dso_local global i32 0, align 4
@EXEC_OBJECT_PAD_TO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Object [handle %d, index %d] appears more than once in object list\0A\00", align 1
@EXEC_OBJECT_NEEDS_FENCE = common dso_local global i32 0, align 4
@EXEC_OBJECT_NEEDS_GTT = common dso_local global i32 0, align 4
@__EXEC_OBJECT_NEEDS_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*, %struct.drm_i915_gem_exec_object2*, %struct.i915_vma*)* @eb_validate_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_validate_vma(%struct.i915_execbuffer* %0, %struct.drm_i915_gem_exec_object2* %1, %struct.i915_vma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_execbuffer*, align 8
  %6 = alloca %struct.drm_i915_gem_exec_object2*, align 8
  %7 = alloca %struct.i915_vma*, align 8
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %5, align 8
  store %struct.drm_i915_gem_exec_object2* %1, %struct.drm_i915_gem_exec_object2** %6, align 8
  store %struct.i915_vma* %2, %struct.i915_vma** %7, align 8
  %8 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %9 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %12 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %10, %13
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %172

20:                                               ; preds = %3
  %21 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @is_power_of_2(i64 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi i1 [ false, %20 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %172

40:                                               ; preds = %32
  %41 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @EXEC_OBJECT_PINNED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %49 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @I915_GTT_PAGE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = call i32 @gen8_canonical_addr(i32 %55)
  %57 = icmp ne i32 %50, %56
  br label %58

58:                                               ; preds = %47, %40
  %59 = phi i1 [ false, %40 ], [ %57, %47 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %172

66:                                               ; preds = %58
  %67 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %68 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @EXEC_OBJECT_PAD_TO_SIZE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %75 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @offset_in_page(i64 %76)
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %172

83:                                               ; preds = %73
  br label %87

84:                                               ; preds = %66
  %85 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %86 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %83
  %88 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %89 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %95 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %98 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %99 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %98, i32 0, i32 3
  %100 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %99, align 8
  %101 = ptrtoint %struct.drm_i915_gem_exec_object2* %97 to i64
  %102 = ptrtoint %struct.drm_i915_gem_exec_object2* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 32
  %105 = trunc i64 %104 to i32
  %106 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %172

109:                                              ; preds = %87
  %110 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %111 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @gen8_noncanonical_addr(i32 %112)
  %114 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %115 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %117 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %109
  %122 = load i32, i32* @EXEC_OBJECT_NEEDS_FENCE, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %125 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %156

128:                                              ; preds = %109
  %129 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %130 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @EXEC_OBJECT_NEEDS_FENCE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %128
  %136 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %137 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %135, %128
  %142 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %143 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @i915_gem_object_is_tiled(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %141
  %148 = load i32, i32* @EXEC_OBJECT_NEEDS_GTT, align 4
  %149 = load i32, i32* @__EXEC_OBJECT_NEEDS_MAP, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %152 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %147, %141, %135
  br label %156

156:                                              ; preds = %155, %121
  %157 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %158 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @EXEC_OBJECT_PINNED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %156
  %164 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %165 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %168 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %163, %156
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %171, %93, %80, %63, %37, %17
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @gen8_canonical_addr(i32) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @gen8_noncanonical_addr(i32) #1

declare dso_local i64 @i915_gem_object_is_tiled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
