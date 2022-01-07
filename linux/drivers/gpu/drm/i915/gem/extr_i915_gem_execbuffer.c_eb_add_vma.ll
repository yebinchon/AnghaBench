; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_add_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_add_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { i32*, i32, %struct.TYPE_5__*, %struct.i915_vma*, %struct.TYPE_4__, %struct.i915_vma**, i32, i32, i32*, %struct.drm_i915_gem_exec_object2* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.drm_i915_gem_exec_object2 = type { i32, i32, i64, i32 }
%struct.i915_vma = type { i32*, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@__EXEC_VALIDATED = common dso_local global i32 0, align 4
@EXEC_OBJECT_PINNED = common dso_local global i32 0, align 4
@__EXEC_OBJECT_NEEDS_BIAS = common dso_local global i32 0, align 4
@EXEC_OBJECT_NEEDS_FENCE = common dso_local global i32 0, align 4
@UPDATE = common dso_local global i32 0, align 4
@__EXEC_HAS_RELOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*, i32, i32, %struct.i915_vma*)* @eb_add_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_add_vma(%struct.i915_execbuffer* %0, i32 %1, i32 %2, %struct.i915_vma* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i915_execbuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i915_vma*, align 8
  %10 = alloca %struct.drm_i915_gem_exec_object2*, align 8
  %11 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.i915_vma* %3, %struct.i915_vma** %9, align 8
  %12 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %13 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %12, i32 0, i32 9
  %14 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %14, i64 %16
  store %struct.drm_i915_gem_exec_object2* %17, %struct.drm_i915_gem_exec_object2** %10, align 8
  %18 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %19 = call i32 @i915_vma_is_closed(%struct.i915_vma* %18)
  %20 = call i32 @GEM_BUG_ON(i32 %19)
  %21 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %22 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @__EXEC_VALIDATED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %4
  %30 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %31 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %32 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %33 = call i32 @eb_validate_vma(%struct.i915_execbuffer* %30, %struct.drm_i915_gem_exec_object2* %31, %struct.i915_vma* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %210

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %42 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %50 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %52 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %51, i32 0, i32 4
  %53 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %54 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %53, i32 0, i32 8
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %60 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @hash_32(i32 %58, i32 %61)
  %63 = getelementptr inbounds i32, i32* %55, i64 %62
  %64 = call i32 @hlist_add_head(i32* %52, i32* %63)
  br label %65

65:                                               ; preds = %45, %40
  %66 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %67 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %72 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %71, i32 0, i32 3
  %73 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %74 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %73, i32 0, i32 6
  %75 = call i32 @list_add_tail(i32* %72, i32* %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %78 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %79 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %78, i32 0, i32 5
  %80 = load %struct.i915_vma**, %struct.i915_vma*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.i915_vma*, %struct.i915_vma** %80, i64 %82
  store %struct.i915_vma* %77, %struct.i915_vma** %83, align 8
  %84 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %85 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %88 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  %93 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %94 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %100 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %150

104:                                              ; preds = %76
  %105 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %106 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %111 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @EXEC_OBJECT_PINNED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %109
  %121 = load i32, i32* @__EXEC_OBJECT_NEEDS_BIAS, align 4
  %122 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %123 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %121
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %120, %109, %104
  %131 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %132 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load i32, i32* @EXEC_OBJECT_NEEDS_FENCE, align 4
  %138 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %139 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %137
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %136, %130
  %147 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %148 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %149 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %148, i32 0, i32 3
  store %struct.i915_vma* %147, %struct.i915_vma** %149, align 8
  br label %150

150:                                              ; preds = %146, %76
  store i32 0, i32* %11, align 4
  %151 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %152 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %153 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %154 = call i64 @eb_pin_vma(%struct.i915_execbuffer* %151, %struct.drm_i915_gem_exec_object2* %152, %struct.i915_vma* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %182

156:                                              ; preds = %150
  %157 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %158 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %161 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %159, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %156
  %166 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %167 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @UPDATE, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %10, align 8
  %173 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @__EXEC_HAS_RELOC, align 4
  %175 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %176 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %175, i32 0, i32 2
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %174
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %165, %156
  br label %208

182:                                              ; preds = %150
  %183 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %184 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %185 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @eb_unreserve_vma(%struct.i915_vma* %183, i32* %186)
  %188 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %189 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %188, i32 0, i32 2
  %190 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %6, align 8
  %191 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %190, i32 0, i32 1
  %192 = call i32 @list_add_tail(i32* %189, i32* %191)
  %193 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %194 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %193, i32 0, i32 1
  %195 = call i64 @drm_mm_node_allocated(%struct.TYPE_6__* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %182
  %198 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %199 = call i32 @i915_vma_unbind(%struct.i915_vma* %198)
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %197, %182
  %201 = load i32, i32* %11, align 4
  %202 = call i64 @unlikely(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = load %struct.i915_vma*, %struct.i915_vma** %9, align 8
  %206 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %205, i32 0, i32 0
  store i32* null, i32** %206, align 8
  br label %207

207:                                              ; preds = %204, %200
  br label %208

208:                                              ; preds = %207, %181
  %209 = load i32, i32* %11, align 4
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %208, %37
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_vma_is_closed(%struct.i915_vma*) #1

declare dso_local i32 @eb_validate_vma(%struct.i915_execbuffer*, %struct.drm_i915_gem_exec_object2*, %struct.i915_vma*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i64 @hash_32(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @eb_pin_vma(%struct.i915_execbuffer*, %struct.drm_i915_gem_exec_object2*, %struct.i915_vma*) #1

declare dso_local i32 @eb_unreserve_vma(%struct.i915_vma*, i32*) #1

declare dso_local i64 @drm_mm_node_allocated(%struct.TYPE_6__*) #1

declare dso_local i32 @i915_vma_unbind(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
