; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c_i915_gem_object_pin_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c_i915_gem_object_pin_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@ENXIO = common dso_local global i32 0, align 4
@I915_MAP_OVERRIDE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @i915_gem_object_pin_map(%struct.drm_i915_gem_object* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %11 = call i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  store i8* %20, i8** %3, align 8
  br label %144

21:                                               ; preds = %2
  %22 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %23 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock_interruptible(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = call i8* @ERR_PTR(i32 %29)
  store i8* %30, i8** %3, align 8
  br label %144

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @I915_MAP_OVERRIDE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @I915_MAP_OVERRIDE, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %43 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @atomic_inc_not_zero(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %31
  %48 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %49 = call i32 @i915_gem_object_has_pages(%struct.drm_i915_gem_object* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %47
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %57 = call i32 @i915_gem_object_has_pinned_pages(%struct.drm_i915_gem_object* %56)
  %58 = call i32 @GEM_BUG_ON(i32 %57)
  %59 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %60 = call i32 @____i915_gem_object_get_pages(%struct.drm_i915_gem_object* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %141

64:                                               ; preds = %55
  %65 = call i32 (...) @smp_mb__before_atomic()
  br label %66

66:                                               ; preds = %64, %47
  %67 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %68 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @atomic_inc(i32* %69)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %66, %31
  %72 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %73 = call i32 @i915_gem_object_has_pages(%struct.drm_i915_gem_object* %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @GEM_BUG_ON(i32 %76)
  %78 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %79 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i8* @page_unpack_bits(i32* %81, i32* %6)
  store i8* %82, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %110

85:                                               ; preds = %71
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %9, align 4
  br label %136

95:                                               ; preds = %89
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @is_vmalloc_addr(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @vunmap(i8* %100)
  br label %106

102:                                              ; preds = %95
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @kmap_to_page(i8* %103)
  %105 = call i32 @kunmap(i32 %104)
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %108 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  store i32* null, i32** %109, align 8
  store i8* null, i8** %8, align 8
  br label %110

110:                                              ; preds = %106, %85, %71
  %111 = load i8*, i8** %8, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %129, label %113

113:                                              ; preds = %110
  %114 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i8* @i915_gem_object_map(%struct.drm_i915_gem_object* %114, i32 %115)
  store i8* %116, i8** %8, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  br label %136

122:                                              ; preds = %113
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32* @page_pack_bits(i8* %123, i32 %124)
  %126 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %127 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i32* %125, i32** %128, align 8
  br label %129

129:                                              ; preds = %122, %110
  br label %130

130:                                              ; preds = %141, %129
  %131 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %132 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i8*, i8** %8, align 8
  store i8* %135, i8** %3, align 8
  br label %144

136:                                              ; preds = %119, %92
  %137 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %138 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = call i32 @atomic_dec(i32* %139)
  br label %141

141:                                              ; preds = %136, %63
  %142 = load i32, i32* %9, align 4
  %143 = call i8* @ERR_PTR(i32 %142)
  store i8* %143, i8** %8, align 8
  br label %130

144:                                              ; preds = %130, %28, %17
  %145 = load i8*, i8** %3, align 8
  ret i8* %145
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i915_gem_object_has_struct_page(%struct.drm_i915_gem_object*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @i915_gem_object_has_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_object_has_pinned_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @____i915_gem_object_get_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i8* @page_unpack_bits(i32*, i32*) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i32 @vunmap(i8*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @kmap_to_page(i8*) #1

declare dso_local i8* @i915_gem_object_map(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32* @page_pack_bits(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
