; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_gtt.c_shrink_boom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_gtt.c_shrink_boom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_address_space = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_i915_gem_object = type opaque
%struct.i915_vma = type { i32 }

@SZ_2M = common dso_local global i32 0, align 4
@SZ_1G = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@PIN_OFFSET_FIXED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i915_address_space*, i32, i32, i64)* @shrink_boom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_boom(%struct.drm_i915_private* %0, %struct.i915_address_space* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.i915_address_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca %struct.drm_i915_gem_object*, align 8
  %14 = alloca %struct.drm_i915_gem_object*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.i915_vma*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %7, align 8
  store %struct.i915_address_space* %1, %struct.i915_address_space** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %21 = load i32, i32* @SZ_2M, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  %23 = load i32, i32* @SZ_1G, align 4
  store i32 %23, i32* %22, align 4
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %126, %5
  %25 = load i32, i32* %16, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %129

29:                                               ; preds = %24
  %30 = load i32, i32* @PIN_USER, align 4
  %31 = load i32, i32* @PIN_OFFSET_FIXED, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %18, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %38 = load i32, i32* %18, align 4
  %39 = call %struct.i915_vma* @fake_dma_object(%struct.drm_i915_private* %37, i32 %38)
  %40 = bitcast %struct.i915_vma* %39 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %40, %struct.drm_i915_gem_object** %13, align 8
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %42 = bitcast %struct.drm_i915_gem_object* %41 to %struct.i915_vma*
  %43 = call i64 @IS_ERR(%struct.i915_vma* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %47 = bitcast %struct.drm_i915_gem_object* %46 to %struct.i915_vma*
  %48 = call i32 @PTR_ERR(%struct.i915_vma* %47)
  store i32 %48, i32* %6, align 4
  br label %142

49:                                               ; preds = %29
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %51 = bitcast %struct.drm_i915_gem_object* %50 to %struct.i915_vma*
  %52 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %53 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %51, %struct.i915_address_space* %52, i32* null)
  store %struct.i915_vma* %53, %struct.i915_vma** %19, align 8
  %54 = load %struct.i915_vma*, %struct.i915_vma** %19, align 8
  %55 = call i64 @IS_ERR(%struct.i915_vma* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.i915_vma*, %struct.i915_vma** %19, align 8
  %59 = call i32 @PTR_ERR(%struct.i915_vma* %58)
  store i32 %59, i32* %15, align 4
  br label %134

60:                                               ; preds = %49
  %61 = load %struct.i915_vma*, %struct.i915_vma** %19, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @i915_vma_pin(%struct.i915_vma* %61, i32 0, i32 0, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %134

67:                                               ; preds = %60
  %68 = load %struct.i915_vma*, %struct.i915_vma** %19, align 8
  %69 = call i32 @i915_vma_unpin(%struct.i915_vma* %68)
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %71 = load i32, i32* %18, align 4
  %72 = call %struct.i915_vma* @fake_dma_object(%struct.drm_i915_private* %70, i32 %71)
  %73 = bitcast %struct.i915_vma* %72 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %73, %struct.drm_i915_gem_object** %14, align 8
  %74 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %75 = bitcast %struct.drm_i915_gem_object* %74 to %struct.i915_vma*
  %76 = call i64 @IS_ERR(%struct.i915_vma* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %80 = bitcast %struct.drm_i915_gem_object* %79 to %struct.i915_vma*
  %81 = call i32 @PTR_ERR(%struct.i915_vma* %80)
  store i32 %81, i32* %15, align 4
  br label %134

82:                                               ; preds = %67
  %83 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %84 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 100, i32* %85, align 4
  %86 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %87 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  %89 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %90 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = call i32 @atomic_set(i32* %91, i32 -1)
  %93 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %94 = bitcast %struct.drm_i915_gem_object* %93 to %struct.i915_vma*
  %95 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %96 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %94, %struct.i915_address_space* %95, i32* null)
  store %struct.i915_vma* %96, %struct.i915_vma** %19, align 8
  %97 = load %struct.i915_vma*, %struct.i915_vma** %19, align 8
  %98 = call i64 @IS_ERR(%struct.i915_vma* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %82
  %101 = load %struct.i915_vma*, %struct.i915_vma** %19, align 8
  %102 = call i32 @PTR_ERR(%struct.i915_vma* %101)
  store i32 %102, i32* %15, align 4
  br label %130

103:                                              ; preds = %82
  %104 = load %struct.i915_vma*, %struct.i915_vma** %19, align 8
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %18, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @i915_vma_pin(%struct.i915_vma* %104, i32 0, i32 0, i32 %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %130

112:                                              ; preds = %103
  %113 = load %struct.i915_vma*, %struct.i915_vma** %19, align 8
  %114 = call i32 @i915_vma_unpin(%struct.i915_vma* %113)
  %115 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %116 = bitcast %struct.drm_i915_gem_object* %115 to %struct.i915_vma*
  %117 = call i32 @i915_gem_object_put(%struct.i915_vma* %116)
  %118 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %119 = bitcast %struct.drm_i915_gem_object* %118 to %struct.i915_vma*
  %120 = call i32 @i915_gem_object_put(%struct.i915_vma* %119)
  %121 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %122 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %121, i32 0, i32 0
  %123 = call i32 @memset(%struct.TYPE_2__* %122, i32 0, i32 12)
  %124 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %125 = call i32 @cleanup_freed_objects(%struct.drm_i915_private* %124)
  br label %126

126:                                              ; preds = %112
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %16, align 4
  br label %24

129:                                              ; preds = %24
  store i32 0, i32* %6, align 4
  br label %142

130:                                              ; preds = %111, %100
  %131 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %14, align 8
  %132 = bitcast %struct.drm_i915_gem_object* %131 to %struct.i915_vma*
  %133 = call i32 @i915_gem_object_put(%struct.i915_vma* %132)
  br label %134

134:                                              ; preds = %130, %78, %66, %57
  %135 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  %136 = bitcast %struct.drm_i915_gem_object* %135 to %struct.i915_vma*
  %137 = call i32 @i915_gem_object_put(%struct.i915_vma* %136)
  %138 = load %struct.i915_address_space*, %struct.i915_address_space** %8, align 8
  %139 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %138, i32 0, i32 0
  %140 = call i32 @memset(%struct.TYPE_2__* %139, i32 0, i32 12)
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %134, %129, %45
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.i915_vma* @fake_dma_object(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, %struct.i915_address_space*, i32*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @cleanup_freed_objects(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
