; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_relocate_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_relocate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.i915_vma = type { i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_gem_relocation_entry = type { i32, i32, i32, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"reloc with multiple write domains: target %d offset %d read %08x write %08x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I915_GEM_GPU_DOMAINS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"reloc with read/write non-GPU domains: target %d offset %d read %08x write %08x\00", align 1
@EXEC_OBJECT_WRITE = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_INSTRUCTION = common dso_local global i32 0, align 4
@PIN_GLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Unexpected failure to bind target VMA!\00", align 1
@DBG_FORCE_RELOC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"Relocation beyond object bounds: target %d offset %d size %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Relocation not 4-byte aligned: target %d offset %d.\0A\00", align 1
@EXEC_OBJECT_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*, %struct.i915_vma*, %struct.drm_i915_gem_relocation_entry*)* @eb_relocate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_relocate_entry(%struct.i915_execbuffer* %0, %struct.i915_vma* %1, %struct.drm_i915_gem_relocation_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_execbuffer*, align 8
  %6 = alloca %struct.i915_vma*, align 8
  %7 = alloca %struct.drm_i915_gem_relocation_entry*, align 8
  %8 = alloca %struct.i915_vma*, align 8
  %9 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %5, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %6, align 8
  store %struct.drm_i915_gem_relocation_entry* %2, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %10 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %11 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.i915_vma* @eb_get_vma(%struct.i915_execbuffer* %10, i32 %13)
  store %struct.i915_vma* %14, %struct.i915_vma** %8, align 8
  %15 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %16 = icmp ne %struct.i915_vma* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %195

24:                                               ; preds = %3
  %25 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %26 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %29 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %27, %31
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %24
  %36 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %37 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %40 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %43 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %46 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %195

51:                                               ; preds = %24
  %52 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %56 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %54, %57
  %59 = load i32, i32* @I915_GEM_GPU_DOMAINS, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %51
  %65 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %66 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %69 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %75 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %195

80:                                               ; preds = %51
  %81 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %82 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %119

85:                                               ; preds = %80
  %86 = load i32, i32* @EXEC_OBJECT_WRITE, align 4
  %87 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %88 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %93 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @I915_GEM_DOMAIN_INSTRUCTION, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %85
  %98 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %99 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @IS_GEN(i32 %100, i32 6)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %105 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %106 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @PIN_GLOBAL, align 4
  %111 = call i32 @i915_vma_bind(%struct.i915_vma* %104, i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @WARN_ONCE(i32 %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %4, align 4
  br label %195

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %97, %85
  br label %119

119:                                              ; preds = %118, %80
  %120 = load i32, i32* @DBG_FORCE_RELOC, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %119
  %123 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %124 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @gen8_canonical_addr(i32 %126)
  %128 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %129 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %195

133:                                              ; preds = %122, %119
  %134 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %135 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %138 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %141 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 8, i32 4
  %147 = sub nsw i32 %139, %146
  %148 = icmp sgt i32 %136, %147
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %133
  %153 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %154 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %157 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %160 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %155, i32 %158, i32 %161)
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %195

165:                                              ; preds = %133
  %166 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %167 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 3
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %165
  %173 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %174 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %177 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %175, i32 %178)
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %4, align 4
  br label %195

182:                                              ; preds = %165
  %183 = load i32, i32* @EXEC_OBJECT_ASYNC, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %186 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, %184
  store i32 %189, i32* %187, align 4
  %190 = load %struct.i915_vma*, %struct.i915_vma** %6, align 8
  %191 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %192 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %5, align 8
  %193 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %194 = call i32 @relocate_entry(%struct.i915_vma* %190, %struct.drm_i915_gem_relocation_entry* %191, %struct.i915_execbuffer* %192, %struct.i915_vma* %193)
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %182, %172, %152, %132, %115, %64, %35, %21
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local %struct.i915_vma* @eb_get_vma(%struct.i915_execbuffer*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, ...) #1

declare dso_local i64 @IS_GEN(i32, i32) #1

declare dso_local i32 @i915_vma_bind(%struct.i915_vma*, i32, i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @gen8_canonical_addr(i32) #1

declare dso_local i32 @relocate_entry(%struct.i915_vma*, %struct.drm_i915_gem_relocation_entry*, %struct.i915_execbuffer*, %struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
