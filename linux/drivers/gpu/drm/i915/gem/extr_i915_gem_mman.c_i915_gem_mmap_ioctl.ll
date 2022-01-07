; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_mman.c_i915_gem_mmap_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_mman.c_i915_gem_mmap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_mmap = type { i32, i64, i32, i32, i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.vm_area_struct = type { i32, i32 }

@I915_MMAP_WC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@X86_FEATURE_PAT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@EINTR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_mmap_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_mmap*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_i915_gem_mmap*
  store %struct.drm_i915_gem_mmap* %14, %struct.drm_i915_gem_mmap** %8, align 8
  %15 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @I915_MMAP_WC, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %163

25:                                               ; preds = %3
  %26 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %27 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @I915_MMAP_WC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @X86_FEATURE_PAT, align 4
  %34 = call i32 @boot_cpu_has(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %163

39:                                               ; preds = %32, %25
  %40 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %41 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file* %40, i32 %43)
  store %struct.drm_i915_gem_object* %44, %struct.drm_i915_gem_object** %9, align 8
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %46 = icmp ne %struct.drm_i915_gem_object* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %163

50:                                               ; preds = %39
  %51 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* @ENXIO, align 8
  %58 = sub i64 0, %57
  store i64 %58, i64* %10, align 8
  br label %158

59:                                               ; preds = %50
  %60 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %61 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %64 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %67 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @range_overflows(i32 %62, i32 %65, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %59
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %10, align 8
  br label %158

76:                                               ; preds = %59
  %77 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %78 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %82 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PROT_READ, align 4
  %85 = load i32, i32* @PROT_WRITE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @MAP_SHARED, align 4
  %88 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %89 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @vm_mmap(i32 %80, i32 0, i32 %83, i32 %86, i32 %87, i32 %90)
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i64 @IS_ERR_VALUE(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %76
  br label %158

96:                                               ; preds = %76
  %97 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %98 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @I915_MMAP_WC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %152

103:                                              ; preds = %96
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.mm_struct*, %struct.mm_struct** %105, align 8
  store %struct.mm_struct* %106, %struct.mm_struct** %11, align 8
  %107 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %108 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %107, i32 0, i32 0
  %109 = call i64 @down_write_killable(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i64, i64* @EINTR, align 8
  %113 = sub i64 0, %112
  store i64 %113, i64* %10, align 8
  br label %158

114:                                              ; preds = %103
  %115 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %115, i64 %116)
  store %struct.vm_area_struct* %117, %struct.vm_area_struct** %12, align 8
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %119 = icmp ne %struct.vm_area_struct* %118, null
  br i1 %119, label %120, label %140

120:                                              ; preds = %114
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %122 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %123 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %128 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @__vma_matches(%struct.vm_area_struct* %121, i32 %125, i64 %126, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %120
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %134 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @vm_get_page_prot(i32 %135)
  %137 = call i32 @pgprot_writecombine(i32 %136)
  %138 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %139 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  br label %143

140:                                              ; preds = %120, %114
  %141 = load i64, i64* @ENOMEM, align 8
  %142 = sub i64 0, %141
  store i64 %142, i64* %10, align 8
  br label %143

143:                                              ; preds = %140, %132
  %144 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %145 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %144, i32 0, i32 0
  %146 = call i32 @up_write(i32* %145)
  %147 = load i64, i64* %10, align 8
  %148 = call i64 @IS_ERR_VALUE(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %158

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151, %96
  %153 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %154 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %153)
  %155 = load i64, i64* %10, align 8
  %156 = load %struct.drm_i915_gem_mmap*, %struct.drm_i915_gem_mmap** %8, align 8
  %157 = getelementptr inbounds %struct.drm_i915_gem_mmap, %struct.drm_i915_gem_mmap* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  store i32 0, i32* %4, align 4
  br label %163

158:                                              ; preds = %150, %111, %95, %72, %56
  %159 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %160 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %159)
  %161 = load i64, i64* %10, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %158, %152, %47, %36, %22
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i64 @range_overflows(i32, i32, i64) #1

declare dso_local i64 @vm_mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @__vma_matches(%struct.vm_area_struct*, i32, i64, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @vm_get_page_prot(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
