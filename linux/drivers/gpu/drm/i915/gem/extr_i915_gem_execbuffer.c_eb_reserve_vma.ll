; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_reserve_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_reserve_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_execbuffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i915_vma = type { i32*, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_gem_exec_object2 = type { i32, i32, i32 }

@PIN_USER = common dso_local global i32 0, align 4
@PIN_NONBLOCK = common dso_local global i32 0, align 4
@EXEC_OBJECT_NEEDS_GTT = common dso_local global i32 0, align 4
@PIN_GLOBAL = common dso_local global i32 0, align 4
@EXEC_OBJECT_SUPPORTS_48B_ADDRESS = common dso_local global i32 0, align 4
@PIN_ZONE_4G = common dso_local global i32 0, align 4
@__EXEC_OBJECT_NEEDS_MAP = common dso_local global i32 0, align 4
@PIN_MAPPABLE = common dso_local global i32 0, align 4
@EXEC_OBJECT_PINNED = common dso_local global i32 0, align 4
@PIN_OFFSET_FIXED = common dso_local global i32 0, align 4
@__EXEC_OBJECT_NEEDS_BIAS = common dso_local global i32 0, align 4
@BATCH_OFFSET_BIAS = common dso_local global i32 0, align 4
@PIN_OFFSET_BIAS = common dso_local global i32 0, align 4
@UPDATE = common dso_local global i32 0, align 4
@__EXEC_HAS_RELOC = common dso_local global i32 0, align 4
@EXEC_OBJECT_NEEDS_FENCE = common dso_local global i32 0, align 4
@__EXEC_OBJECT_HAS_FENCE = common dso_local global i32 0, align 4
@__EXEC_OBJECT_HAS_PIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_execbuffer*, %struct.i915_vma*)* @eb_reserve_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eb_reserve_vma(%struct.i915_execbuffer* %0, %struct.i915_vma* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_execbuffer*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca %struct.drm_i915_gem_exec_object2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %4, align 8
  store %struct.i915_vma* %1, %struct.i915_vma** %5, align 8
  %10 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %4, align 8
  %11 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %12 = call %struct.drm_i915_gem_exec_object2* @exec_entry(%struct.i915_execbuffer* %10, %struct.i915_vma* %11)
  store %struct.drm_i915_gem_exec_object2* %12, %struct.drm_i915_gem_exec_object2** %6, align 8
  %13 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %14 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @PIN_USER, align 4
  %18 = load i32, i32* @PIN_NONBLOCK, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @EXEC_OBJECT_NEEDS_GTT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @PIN_GLOBAL, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EXEC_OBJECT_SUPPORTS_48B_ADDRESS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @PIN_ZONE_4G, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %28
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @__EXEC_OBJECT_NEEDS_MAP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @PIN_MAPPABLE, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @EXEC_OBJECT_PINNED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PIN_OFFSET_FIXED, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @PIN_NONBLOCK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %75

63:                                               ; preds = %46
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @__EXEC_OBJECT_NEEDS_BIAS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @BATCH_OFFSET_BIAS, align 4
  %70 = load i32, i32* @PIN_OFFSET_BIAS, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %68, %63
  br label %75

75:                                               ; preds = %74, %51
  %76 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %77 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %78 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %81 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @i915_vma_pin(%struct.i915_vma* %76, i32 %79, i32 %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %152

89:                                               ; preds = %75
  %90 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %91 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %94 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %92, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %89
  %99 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %100 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @UPDATE, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %106 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @__EXEC_HAS_RELOC, align 4
  %108 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %4, align 8
  %109 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %107
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %98, %89
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @EXEC_OBJECT_NEEDS_FENCE, align 4
  %117 = and i32 %115, %116
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %114
  %121 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %122 = call i32 @i915_vma_pin_fence(%struct.i915_vma* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %128 = call i32 @i915_vma_unpin(%struct.i915_vma* %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %152

130:                                              ; preds = %120
  %131 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %132 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @__EXEC_OBJECT_HAS_FENCE, align 4
  %137 = load i32, i32* %7, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %135, %130
  br label %140

140:                                              ; preds = %139, %114
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @__EXEC_OBJECT_HAS_PIN, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %145 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  store i32 %143, i32* %146, align 4
  %147 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %6, align 8
  %148 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @eb_vma_misplaced(%struct.drm_i915_gem_exec_object2* %147, %struct.i915_vma* %148, i32 %149)
  %151 = call i32 @GEM_BUG_ON(i32 %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %140, %126, %87
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.drm_i915_gem_exec_object2* @exec_entry(%struct.i915_execbuffer*, %struct.i915_vma*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i915_vma_pin_fence(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @eb_vma_misplaced(%struct.drm_i915_gem_exec_object2*, %struct.i915_vma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
