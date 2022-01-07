; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_handle_guest_write_page_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_handle_guest_write_page_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_6__, %struct.intel_vgpu* }
%struct.TYPE_6__ = type { i32 }
%struct.intel_vgpu = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.1*)*, i32 (%struct.intel_gvt_gtt_entry.2*)*, i64 (%struct.intel_gvt_gtt_entry.3*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type opaque
%struct.intel_gvt_gtt_entry.1 = type opaque
%struct.intel_gvt_gtt_entry.2 = type opaque
%struct.intel_gvt_gtt_entry.3 = type opaque
%struct.intel_gvt_gtt_entry.4 = type { i64, i32 }

@GTT_64K_PTE_STRIDE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"remove splited 64K shadow entries\0A\00", align 1
@GTT_TYPE_PPGTT_PTE_2M_ENTRY = common dso_local global i64 0, align 8
@GTT_TYPE_PPGTT_PTE_1G_ENTRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"fail: shadow page %p guest entry 0x%llx type %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.4*, i64)* @ppgtt_handle_guest_write_page_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_handle_guest_write_page_table(%struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_gvt_gtt_entry.4* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %6 = alloca %struct.intel_gvt_gtt_entry.4*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.intel_vgpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %11 = alloca %struct.intel_gvt_gtt_entry.4, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  store %struct.intel_gvt_gtt_entry.4* %1, %struct.intel_gvt_gtt_entry.4** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %15, i32 0, i32 1
  %17 = load %struct.intel_vgpu*, %struct.intel_vgpu** %16, align 8
  store %struct.intel_vgpu* %17, %struct.intel_vgpu** %8, align 8
  %18 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %23 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %26, align 8
  store %struct.intel_gvt_gtt_pte_ops* %27, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %28 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %29 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry*)** %29, align 8
  %31 = load %struct.intel_gvt_gtt_entry.4*, %struct.intel_gvt_gtt_entry.4** %6, align 8
  %32 = bitcast %struct.intel_gvt_gtt_entry.4* %31 to %struct.intel_gvt_gtt_entry*
  %33 = call i32 %30(%struct.intel_gvt_gtt_entry* %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @ppgtt_get_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %34, %struct.intel_gvt_gtt_entry.4* %11, i64 %35)
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %3
  %40 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %41 = load %struct.intel_gvt_gtt_entry.4*, %struct.intel_gvt_gtt_entry.4** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ppgtt_handle_guest_entry_add(%struct.intel_vgpu_ppgtt_spt* %40, %struct.intel_gvt_gtt_entry.4* %41, i64 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %161

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %3
  %49 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @ppgtt_handle_guest_entry_removal(%struct.intel_vgpu_ppgtt_spt* %49, %struct.intel_gvt_gtt_entry.4* %11, i64 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %161

55:                                               ; preds = %48
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %160, label %58

58:                                               ; preds = %55
  %59 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %60 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %59, i32 0, i32 4
  %61 = load i64 (%struct.intel_gvt_gtt_entry.3*)*, i64 (%struct.intel_gvt_gtt_entry.3*)** %60, align 8
  %62 = bitcast %struct.intel_gvt_gtt_entry.4* %11 to %struct.intel_gvt_gtt_entry.3*
  %63 = call i64 %61(%struct.intel_gvt_gtt_entry.3* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %58
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* @GTT_64K_PTE_STRIDE, align 8
  %68 = urem i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %107, label %70

70:                                               ; preds = %65
  %71 = call i32 @gvt_vdbg_mm(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %103, %70
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @GTT_64K_PTE_STRIDE, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %72
  %78 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %79 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %78, i32 0, i32 3
  %80 = load i32 (%struct.intel_gvt_gtt_entry.2*)*, i32 (%struct.intel_gvt_gtt_entry.2*)** %79, align 8
  %81 = bitcast %struct.intel_gvt_gtt_entry.4* %11 to %struct.intel_gvt_gtt_entry.2*
  %82 = call i32 %80(%struct.intel_gvt_gtt_entry.2* %81)
  %83 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %84 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %83, i32 0, i32 1
  %85 = load i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)** %84, align 8
  %86 = bitcast %struct.intel_gvt_gtt_entry.4* %11 to %struct.intel_gvt_gtt_entry.0*
  %87 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %88 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 %85(%struct.intel_gvt_gtt_entry.0* %86, i32 %95)
  %97 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %98, %100
  %102 = call i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %97, %struct.intel_gvt_gtt_entry.4* %11, i64 %101)
  br label %103

103:                                              ; preds = %77
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %72

106:                                              ; preds = %72
  br label %159

107:                                              ; preds = %65, %58
  %108 = getelementptr inbounds %struct.intel_gvt_gtt_entry.4, %struct.intel_gvt_gtt_entry.4* %11, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @GTT_TYPE_PPGTT_PTE_2M_ENTRY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.intel_gvt_gtt_entry.4, %struct.intel_gvt_gtt_entry.4* %11, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @GTT_TYPE_PPGTT_PTE_1G_ENTRY, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %112, %107
  %118 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %119 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %118, i32 0, i32 2
  %120 = load i32 (%struct.intel_gvt_gtt_entry.1*)*, i32 (%struct.intel_gvt_gtt_entry.1*)** %119, align 8
  %121 = bitcast %struct.intel_gvt_gtt_entry.4* %11 to %struct.intel_gvt_gtt_entry.1*
  %122 = call i32 %120(%struct.intel_gvt_gtt_entry.1* %121)
  %123 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %124 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %123, i32 0, i32 1
  %125 = load i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)** %124, align 8
  %126 = bitcast %struct.intel_gvt_gtt_entry.4* %11 to %struct.intel_gvt_gtt_entry.0*
  %127 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %128 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 %125(%struct.intel_gvt_gtt_entry.0* %126, i32 %135)
  %137 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %138 = load i64, i64* %7, align 8
  %139 = call i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %137, %struct.intel_gvt_gtt_entry.4* %11, i64 %138)
  br label %158

140:                                              ; preds = %112
  %141 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %142 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %141, i32 0, i32 1
  %143 = load i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)** %142, align 8
  %144 = bitcast %struct.intel_gvt_gtt_entry.4* %11 to %struct.intel_gvt_gtt_entry.0*
  %145 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %146 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 %143(%struct.intel_gvt_gtt_entry.0* %144, i32 %153)
  %155 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %156 = load i64, i64* %7, align 8
  %157 = call i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %155, %struct.intel_gvt_gtt_entry.4* %11, i64 %156)
  br label %158

158:                                              ; preds = %140, %117
  br label %159

159:                                              ; preds = %158, %106
  br label %160

160:                                              ; preds = %159, %55
  store i32 0, i32* %4, align 4
  br label %171

161:                                              ; preds = %54, %46
  %162 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %163 = load %struct.intel_gvt_gtt_entry.4*, %struct.intel_gvt_gtt_entry.4** %6, align 8
  %164 = getelementptr inbounds %struct.intel_gvt_gtt_entry.4, %struct.intel_gvt_gtt_entry.4* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.intel_gvt_gtt_entry.4*, %struct.intel_gvt_gtt_entry.4** %6, align 8
  %167 = getelementptr inbounds %struct.intel_gvt_gtt_entry.4, %struct.intel_gvt_gtt_entry.4* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.intel_vgpu_ppgtt_spt* %162, i32 %165, i64 %168)
  %170 = load i32, i32* %14, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %161, %160
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @ppgtt_get_shadow_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.4*, i64) #1

declare dso_local i32 @ppgtt_handle_guest_entry_add(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.4*, i64) #1

declare dso_local i32 @ppgtt_handle_guest_entry_removal(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.4*, i64) #1

declare dso_local i32 @gvt_vdbg_mm(i8*) #1

declare dso_local i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.4*, i64) #1

declare dso_local i32 @gvt_vgpu_err(i8*, %struct.intel_vgpu_ppgtt_spt*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
