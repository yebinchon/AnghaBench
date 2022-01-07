; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_sync_oos_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_sync_oos_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.TYPE_3__, %struct.intel_gvt_device_info }
%struct.TYPE_3__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (i32*, %struct.intel_gvt_gtt_entry*, i32, i32, i32, %struct.intel_vgpu*)*, i32 (i32*, %struct.intel_gvt_gtt_entry.0*, i32, i32, i32, %struct.intel_vgpu*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type opaque
%struct.intel_gvt_device_info = type { i32 }
%struct.intel_vgpu_oos_page = type { i32*, i32, %struct.intel_vgpu_ppgtt_spt* }
%struct.intel_vgpu_ppgtt_spt = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.intel_gvt_gtt_entry.1 = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, %struct.intel_vgpu_oos_page*)* @sync_oos_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_oos_page(%struct.intel_vgpu* %0, %struct.intel_vgpu_oos_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.intel_vgpu_oos_page*, align 8
  %6 = alloca %struct.intel_gvt_device_info*, align 8
  %7 = alloca %struct.intel_gvt*, align 8
  %8 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %9 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %10 = alloca %struct.intel_gvt_gtt_entry.1, align 8
  %11 = alloca %struct.intel_gvt_gtt_entry.1, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store %struct.intel_vgpu_oos_page* %1, %struct.intel_vgpu_oos_page** %5, align 8
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %14, i32 0, i32 1
  %16 = load %struct.intel_gvt*, %struct.intel_gvt** %15, align 8
  %17 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %16, i32 0, i32 1
  store %struct.intel_gvt_device_info* %17, %struct.intel_gvt_device_info** %6, align 8
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %18, i32 0, i32 1
  %20 = load %struct.intel_gvt*, %struct.intel_gvt** %19, align 8
  store %struct.intel_gvt* %20, %struct.intel_gvt** %7, align 8
  %21 = load %struct.intel_gvt*, %struct.intel_gvt** %7, align 8
  %22 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %23, align 8
  store %struct.intel_gvt_gtt_pte_ops* %24, %struct.intel_gvt_gtt_pte_ops** %8, align 8
  %25 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %26 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %25, i32 0, i32 2
  %27 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %26, align 8
  store %struct.intel_vgpu_ppgtt_spt* %27, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %28 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %29 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %35 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %36 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @trace_oos_change(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.intel_vgpu_ppgtt_spt* %34, i32 %38)
  %40 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %41 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @get_entry_type(i32 %43)
  %45 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %11, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %10, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %11, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %10, i32 0, i32 0
  store i64 0, i64* %48, align 8
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %129, %2
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %52 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %6, align 8
  %53 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %51, %54
  %56 = icmp slt i32 %50, %55
  br i1 %56, label %57, label %132

57:                                               ; preds = %49
  %58 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %8, align 8
  %59 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %58, i32 0, i32 1
  %60 = load i32 (i32*, %struct.intel_gvt_gtt_entry.0*, i32, i32, i32, %struct.intel_vgpu*)*, i32 (i32*, %struct.intel_gvt_gtt_entry.0*, i32, i32, i32, %struct.intel_vgpu*)** %59, align 8
  %61 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %62 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast %struct.intel_gvt_gtt_entry.1* %10 to %struct.intel_gvt_gtt_entry.0*
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %67 = call i32 %60(i32* %63, %struct.intel_gvt_gtt_entry.0* %64, i32 %65, i32 0, i32 0, %struct.intel_vgpu* %66)
  %68 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %8, align 8
  %69 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %68, i32 0, i32 1
  %70 = load i32 (i32*, %struct.intel_gvt_gtt_entry.0*, i32, i32, i32, %struct.intel_vgpu*)*, i32 (i32*, %struct.intel_gvt_gtt_entry.0*, i32, i32, i32, %struct.intel_vgpu*)** %69, align 8
  %71 = bitcast %struct.intel_gvt_gtt_entry.1* %11 to %struct.intel_gvt_gtt_entry.0*
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %74 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PAGE_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %80 = call i32 %70(i32* null, %struct.intel_gvt_gtt_entry.0* %71, i32 %72, i32 1, i32 %78, %struct.intel_vgpu* %79)
  %81 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %10, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %11, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %57
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %89 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @test_and_clear_bit(i32 %87, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %129

94:                                               ; preds = %86, %57
  %95 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %96 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %99 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %102 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %103 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %11, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @trace_oos_sync(i32 %97, i32 %100, %struct.intel_vgpu_ppgtt_spt* %101, i32 %105, i64 %107, i32 %108)
  %110 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %111 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @ppgtt_populate_shadow_entry(%struct.intel_vgpu* %110, %struct.intel_vgpu_ppgtt_spt* %111, i32 %112, %struct.intel_gvt_gtt_entry.1* %11)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %94
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %3, align 4
  br label %139

118:                                              ; preds = %94
  %119 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %8, align 8
  %120 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %119, i32 0, i32 0
  %121 = load i32 (i32*, %struct.intel_gvt_gtt_entry*, i32, i32, i32, %struct.intel_vgpu*)*, i32 (i32*, %struct.intel_gvt_gtt_entry*, i32, i32, i32, %struct.intel_vgpu*)** %120, align 8
  %122 = load %struct.intel_vgpu_oos_page*, %struct.intel_vgpu_oos_page** %5, align 8
  %123 = getelementptr inbounds %struct.intel_vgpu_oos_page, %struct.intel_vgpu_oos_page* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = bitcast %struct.intel_gvt_gtt_entry.1* %11 to %struct.intel_gvt_gtt_entry*
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %128 = call i32 %121(i32* %124, %struct.intel_gvt_gtt_entry* %125, i32 %126, i32 0, i32 0, %struct.intel_vgpu* %127)
  br label %129

129:                                              ; preds = %118, %93
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %49

132:                                              ; preds = %49
  %133 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %134 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %9, align 8
  %137 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %136, i32 0, i32 0
  %138 = call i32 @list_del_init(i32* %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %132, %116
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @trace_oos_change(i32, i8*, i32, %struct.intel_vgpu_ppgtt_spt*, i32) #1

declare dso_local i32 @get_entry_type(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @trace_oos_sync(i32, i32, %struct.intel_vgpu_ppgtt_spt*, i32, i64, i32) #1

declare dso_local i32 @ppgtt_populate_shadow_entry(%struct.intel_vgpu*, %struct.intel_vgpu_ppgtt_spt*, i32, %struct.intel_gvt_gtt_entry.1*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
