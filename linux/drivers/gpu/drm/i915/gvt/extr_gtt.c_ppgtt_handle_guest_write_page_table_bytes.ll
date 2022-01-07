; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_handle_guest_write_page_table_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_handle_guest_write_page_table_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_14__, %struct.TYPE_10__, i32, %struct.intel_vgpu* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.intel_vgpu = type { %struct.TYPE_12__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.intel_gvt_device_info, %struct.TYPE_8__ }
%struct.intel_gvt_device_info = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (i32, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.intel_vgpu*)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type opaque
%struct.intel_gvt_gtt_entry.1 = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GTT_TYPE_PPGTT_PTE_64K_ENTRY = common dso_local global i64 0, align 8
@GTT_64K_PTE_STRIDE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Ignore write to unused PTE entry, index %lu\0A\00", align 1
@enable_out_of_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_ppgtt_spt*, i32, i8*, i32)* @ppgtt_handle_guest_write_page_table_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_handle_guest_write_page_table_bytes(%struct.intel_vgpu_ppgtt_spt* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_vgpu*, align 8
  %11 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %12 = alloca %struct.intel_gvt_device_info*, align 8
  %13 = alloca %struct.intel_gvt_gtt_entry.1, align 8
  %14 = alloca %struct.intel_gvt_gtt_entry.1, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %18, i32 0, i32 3
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %19, align 8
  store %struct.intel_vgpu* %20, %struct.intel_vgpu** %10, align 8
  %21 = load %struct.intel_vgpu*, %struct.intel_vgpu** %10, align 8
  %22 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %25, align 8
  store %struct.intel_gvt_gtt_pte_ops* %26, %struct.intel_gvt_gtt_pte_ops** %11, align 8
  %27 = load %struct.intel_vgpu*, %struct.intel_vgpu** %10, align 8
  %28 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store %struct.intel_gvt_device_info* %30, %struct.intel_gvt_device_info** %12, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %31, %33
  %35 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %12, align 8
  %36 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %34, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %15, align 8
  %40 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @ppgtt_get_guest_entry(%struct.intel_vgpu_ppgtt_spt* %40, %struct.intel_gvt_gtt_entry.1* %13, i64 %41)
  %43 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %13, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GTT_TYPE_PPGTT_PTE_64K_ENTRY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %4
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* @GTT_64K_PTE_STRIDE, align 8
  %50 = urem i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i64, i64* %15, align 8
  %54 = call i32 @gvt_vdbg_mm(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %53)
  store i32 0, i32* %5, align 4
  br label %165

55:                                               ; preds = %47, %4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.intel_gvt_device_info*, %struct.intel_gvt_device_info** %12, align 8
  %58 = getelementptr inbounds %struct.intel_gvt_device_info, %struct.intel_gvt_device_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @ppgtt_handle_guest_write_page_table(%struct.intel_vgpu_ppgtt_spt* %62, %struct.intel_gvt_gtt_entry.1* %13, i64 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %5, align 4
  br label %165

69:                                               ; preds = %61
  br label %114

70:                                               ; preds = %55
  %71 = load i64, i64* %15, align 8
  %72 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %73 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @test_bit(i64 %71, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %110, label %77

77:                                               ; preds = %70
  %78 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %79 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %17, align 4
  %82 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %83 = load i64, i64* %15, align 8
  %84 = call i32 @ppgtt_get_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %82, %struct.intel_gvt_gtt_entry.1* %14, i64 %83)
  %85 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %86 = load i64, i64* %15, align 8
  %87 = call i32 @ppgtt_handle_guest_entry_removal(%struct.intel_vgpu_ppgtt_spt* %85, %struct.intel_gvt_gtt_entry.1* %14, i64 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %5, align 4
  br label %165

92:                                               ; preds = %77
  %93 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %11, align 8
  %94 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %93, i32 0, i32 1
  %95 = load i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)** %94, align 8
  %96 = bitcast %struct.intel_gvt_gtt_entry.1* %14 to %struct.intel_gvt_gtt_entry.0*
  %97 = load %struct.intel_vgpu*, %struct.intel_vgpu** %10, align 8
  %98 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 %95(%struct.intel_gvt_gtt_entry.0* %96, i32 %105)
  %107 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %107, %struct.intel_gvt_gtt_entry.1* %14, i64 %108)
  br label %110

110:                                              ; preds = %92, %70
  %111 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %112 = load i64, i64* %15, align 8
  %113 = call i32 @ppgtt_set_post_shadow(%struct.intel_vgpu_ppgtt_spt* %111, i64 %112)
  br label %114

114:                                              ; preds = %110, %69
  %115 = load i32, i32* @enable_out_of_sync, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %165

118:                                              ; preds = %114
  %119 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %120 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %125 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = icmp ne %struct.TYPE_13__* %127, null
  br i1 %128, label %129, label %143

129:                                              ; preds = %118
  %130 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %11, align 8
  %131 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %130, i32 0, i32 0
  %132 = load i32 (i32, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.intel_vgpu*)*, i32 (i32, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.intel_vgpu*)** %131, align 8
  %133 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %134 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = bitcast %struct.intel_gvt_gtt_entry.1* %13 to %struct.intel_gvt_gtt_entry*
  %140 = load i64, i64* %15, align 8
  %141 = load %struct.intel_vgpu*, %struct.intel_vgpu** %10, align 8
  %142 = call i32 %132(i32 %138, %struct.intel_gvt_gtt_entry* %139, i64 %140, i32 0, i32 0, %struct.intel_vgpu* %141)
  br label %143

143:                                              ; preds = %129, %118
  %144 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %145 = call i64 @can_do_out_of_sync(%struct.intel_vgpu_ppgtt_spt* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %143
  %148 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %149 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = icmp ne %struct.TYPE_13__* %151, null
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %155 = call i32 @ppgtt_allocate_oos_page(%struct.intel_vgpu_ppgtt_spt* %154)
  br label %156

156:                                              ; preds = %153, %147
  %157 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %6, align 8
  %158 = call i32 @ppgtt_set_guest_page_oos(%struct.intel_vgpu_ppgtt_spt* %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %16, align 4
  store i32 %162, i32* %5, align 4
  br label %165

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %143
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %161, %117, %90, %67, %52
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @ppgtt_get_guest_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.1*, i64) #1

declare dso_local i32 @gvt_vdbg_mm(i8*, i64) #1

declare dso_local i32 @ppgtt_handle_guest_write_page_table(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.1*, i64) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @ppgtt_get_shadow_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.1*, i64) #1

declare dso_local i32 @ppgtt_handle_guest_entry_removal(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.1*, i64) #1

declare dso_local i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.1*, i64) #1

declare dso_local i32 @ppgtt_set_post_shadow(%struct.intel_vgpu_ppgtt_spt*, i64) #1

declare dso_local i64 @can_do_out_of_sync(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @ppgtt_allocate_oos_page(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @ppgtt_set_guest_page_oos(%struct.intel_vgpu_ppgtt_spt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
