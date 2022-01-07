; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_dma_map_guest_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_kvmgt.c_kvmgt_dma_map_guest_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmgt_guest_info = type { %struct.intel_vgpu* }
%struct.intel_vgpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gvt_dma = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32*)* @kvmgt_dma_map_guest_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmgt_dma_map_guest_page(i64 %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kvmgt_guest_info*, align 8
  %11 = alloca %struct.intel_vgpu*, align 8
  %12 = alloca %struct.gvt_dma*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @handle_valid(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %132

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = inttoptr i64 %21 to %struct.kvmgt_guest_info*
  store %struct.kvmgt_guest_info* %22, %struct.kvmgt_guest_info** %10, align 8
  %23 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %10, align 8
  %24 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %23, i32 0, i32 0
  %25 = load %struct.intel_vgpu*, %struct.intel_vgpu** %24, align 8
  store %struct.intel_vgpu* %25, %struct.intel_vgpu** %11, align 8
  %26 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %10, align 8
  %27 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %26, i32 0, i32 0
  %28 = load %struct.intel_vgpu*, %struct.intel_vgpu** %27, align 8
  %29 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %10, align 8
  %33 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %32, i32 0, i32 0
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call %struct.gvt_dma* @__gvt_cache_find_gfn(%struct.intel_vgpu* %34, i64 %35)
  store %struct.gvt_dma* %36, %struct.gvt_dma** %12, align 8
  %37 = load %struct.gvt_dma*, %struct.gvt_dma** %12, align 8
  %38 = icmp ne %struct.gvt_dma* %37, null
  br i1 %38, label %61, label %39

39:                                               ; preds = %20
  %40 = load %struct.intel_vgpu*, %struct.intel_vgpu** %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @gvt_dma_map_page(%struct.intel_vgpu* %40, i64 %41, i32* %42, i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %124

48:                                               ; preds = %39
  %49 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %10, align 8
  %50 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %49, i32 0, i32 0
  %51 = load %struct.intel_vgpu*, %struct.intel_vgpu** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @__gvt_cache_add(%struct.intel_vgpu* %51, i64 %52, i32 %54, i64 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %117

60:                                               ; preds = %48
  br label %110

61:                                               ; preds = %20
  %62 = load %struct.gvt_dma*, %struct.gvt_dma** %12, align 8
  %63 = getelementptr inbounds %struct.gvt_dma, %struct.gvt_dma* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %61
  %68 = load %struct.intel_vgpu*, %struct.intel_vgpu** %11, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.gvt_dma*, %struct.gvt_dma** %12, align 8
  %71 = getelementptr inbounds %struct.gvt_dma, %struct.gvt_dma* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.gvt_dma*, %struct.gvt_dma** %12, align 8
  %74 = getelementptr inbounds %struct.gvt_dma, %struct.gvt_dma* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @gvt_dma_unmap_page(%struct.intel_vgpu* %68, i64 %69, i32 %72, i64 %75)
  %77 = load %struct.intel_vgpu*, %struct.intel_vgpu** %11, align 8
  %78 = load %struct.gvt_dma*, %struct.gvt_dma** %12, align 8
  %79 = call i32 @__gvt_cache_remove_entry(%struct.intel_vgpu* %77, %struct.gvt_dma* %78)
  %80 = load %struct.intel_vgpu*, %struct.intel_vgpu** %11, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @gvt_dma_map_page(%struct.intel_vgpu* %80, i64 %81, i32* %82, i64 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %67
  br label %124

88:                                               ; preds = %67
  %89 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %10, align 8
  %90 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %89, i32 0, i32 0
  %91 = load %struct.intel_vgpu*, %struct.intel_vgpu** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @__gvt_cache_add(%struct.intel_vgpu* %91, i64 %92, i32 %94, i64 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %117

100:                                              ; preds = %88
  br label %109

101:                                              ; preds = %61
  %102 = load %struct.gvt_dma*, %struct.gvt_dma** %12, align 8
  %103 = getelementptr inbounds %struct.gvt_dma, %struct.gvt_dma* %102, i32 0, i32 2
  %104 = call i32 @kref_get(i32* %103)
  %105 = load %struct.gvt_dma*, %struct.gvt_dma** %12, align 8
  %106 = getelementptr inbounds %struct.gvt_dma, %struct.gvt_dma* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %101, %100
  br label %110

110:                                              ; preds = %109, %60
  %111 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %10, align 8
  %112 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %111, i32 0, i32 0
  %113 = load %struct.intel_vgpu*, %struct.intel_vgpu** %112, align 8
  %114 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  store i32 0, i32* %5, align 4
  br label %132

117:                                              ; preds = %99, %59
  %118 = load %struct.intel_vgpu*, %struct.intel_vgpu** %11, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @gvt_dma_unmap_page(%struct.intel_vgpu* %118, i64 %119, i32 %121, i64 %122)
  br label %124

124:                                              ; preds = %117, %87, %47
  %125 = load %struct.kvmgt_guest_info*, %struct.kvmgt_guest_info** %10, align 8
  %126 = getelementptr inbounds %struct.kvmgt_guest_info, %struct.kvmgt_guest_info* %125, i32 0, i32 0
  %127 = load %struct.intel_vgpu*, %struct.intel_vgpu** %126, align 8
  %128 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %124, %110, %17
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @handle_valid(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.gvt_dma* @__gvt_cache_find_gfn(%struct.intel_vgpu*, i64) #1

declare dso_local i32 @gvt_dma_map_page(%struct.intel_vgpu*, i64, i32*, i64) #1

declare dso_local i32 @__gvt_cache_add(%struct.intel_vgpu*, i64, i32, i64) #1

declare dso_local i32 @gvt_dma_unmap_page(%struct.intel_vgpu*, i64, i32, i64) #1

declare dso_local i32 @__gvt_cache_remove_entry(%struct.intel_vgpu*, %struct.gvt_dma*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
