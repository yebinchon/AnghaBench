; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_populate_spt_by_guest_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_populate_spt_by_guest_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.intel_vgpu = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry.0*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type opaque
%struct.intel_gvt_gtt_entry.1 = type { i32, i32 }

@GTT_TYPE_PPGTT_PDE_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"reshadow PDE since ips changed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"fail: shadow page %p guest entry 0x%llx type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_vgpu_ppgtt_spt* (%struct.intel_vgpu*, %struct.intel_gvt_gtt_entry.1*)* @ppgtt_populate_spt_by_guest_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_vgpu_ppgtt_spt* @ppgtt_populate_spt_by_guest_entry(%struct.intel_vgpu* %0, %struct.intel_gvt_gtt_entry.1* %1) #0 {
  %3 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.intel_gvt_gtt_entry.1*, align 8
  %6 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %7 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store %struct.intel_gvt_gtt_entry.1* %1, %struct.intel_gvt_gtt_entry.1** %5, align 8
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %15, align 8
  store %struct.intel_gvt_gtt_pte_ops* %16, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  store %struct.intel_vgpu_ppgtt_spt* null, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %5, align 8
  %18 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_next_pt_type(i32 %19)
  %21 = call i32 @gtt_type_is_pt(i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @GEM_BUG_ON(i32 %24)
  %26 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %5, align 8
  %27 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GTT_TYPE_PPGTT_PDE_ENTRY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %2
  %32 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %33 = call i64 @vgpu_ips_enabled(%struct.intel_vgpu* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %37 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %36, i32 0, i32 1
  %38 = load i64 (%struct.intel_gvt_gtt_entry.0*)*, i64 (%struct.intel_gvt_gtt_entry.0*)** %37, align 8
  %39 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %5, align 8
  %40 = bitcast %struct.intel_gvt_gtt_entry.1* %39 to %struct.intel_gvt_gtt_entry.0*
  %41 = call i64 %38(%struct.intel_gvt_gtt_entry.0* %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %35, %31
  %44 = phi i1 [ false, %31 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %2
  %47 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %48 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %49 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %48, i32 0, i32 0
  %50 = load i32 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry*)** %49, align 8
  %51 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %5, align 8
  %52 = bitcast %struct.intel_gvt_gtt_entry.1* %51 to %struct.intel_gvt_gtt_entry*
  %53 = call i32 %50(%struct.intel_gvt_gtt_entry* %52)
  %54 = call %struct.intel_vgpu_ppgtt_spt* @intel_vgpu_find_spt_by_gfn(%struct.intel_vgpu* %47, i32 %53)
  store %struct.intel_vgpu_ppgtt_spt* %54, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %55 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %56 = icmp ne %struct.intel_vgpu_ppgtt_spt* %55, null
  br i1 %56, label %57, label %86

57:                                               ; preds = %46
  %58 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %59 = call i32 @ppgtt_get_spt(%struct.intel_vgpu_ppgtt_spt* %58)
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %62 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %60, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %69 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = call i32 @gvt_dbg_mm(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %73 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clear_page(i32 %75)
  %77 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %78 = call i32 @ppgtt_populate_spt(%struct.intel_vgpu_ppgtt_spt* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %66
  %82 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %83 = call i32 @ppgtt_put_spt(%struct.intel_vgpu_ppgtt_spt* %82)
  br label %149

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84, %57
  br label %144

86:                                               ; preds = %46
  %87 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %5, align 8
  %88 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @get_next_pt_type(i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @gtt_type_is_pt(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %149

97:                                               ; preds = %86
  %98 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %101 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %100, i32 0, i32 0
  %102 = load i32 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry*)** %101, align 8
  %103 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %5, align 8
  %104 = bitcast %struct.intel_gvt_gtt_entry.1* %103 to %struct.intel_gvt_gtt_entry*
  %105 = call i32 %102(%struct.intel_gvt_gtt_entry* %104)
  %106 = load i32, i32* %8, align 4
  %107 = call %struct.intel_vgpu_ppgtt_spt* @ppgtt_alloc_spt_gfn(%struct.intel_vgpu* %98, i32 %99, i32 %105, i32 %106)
  store %struct.intel_vgpu_ppgtt_spt* %107, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %108 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %109 = call i64 @IS_ERR(%struct.intel_vgpu_ppgtt_spt* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %113 = call i32 @PTR_ERR(%struct.intel_vgpu_ppgtt_spt* %112)
  store i32 %113, i32* %9, align 4
  br label %149

114:                                              ; preds = %97
  %115 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %116 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %117 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @intel_vgpu_enable_page_track(%struct.intel_vgpu* %115, i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %146

124:                                              ; preds = %114
  %125 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %126 = call i32 @ppgtt_populate_spt(%struct.intel_vgpu_ppgtt_spt* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %146

130:                                              ; preds = %124
  %131 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %132 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %135 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %136 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %140 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @trace_spt_change(i32 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.intel_vgpu_ppgtt_spt* %134, i32 %138, i32 %142)
  br label %144

144:                                              ; preds = %130, %85
  %145 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  store %struct.intel_vgpu_ppgtt_spt* %145, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  br label %160

146:                                              ; preds = %129, %123
  %147 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %148 = call i32 @ppgtt_free_spt(%struct.intel_vgpu_ppgtt_spt* %147)
  store %struct.intel_vgpu_ppgtt_spt* null, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  br label %149

149:                                              ; preds = %146, %111, %94, %81
  %150 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %151 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %5, align 8
  %152 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %5, align 8
  %155 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), %struct.intel_vgpu_ppgtt_spt* %150, i32 %153, i32 %156)
  %158 = load i32, i32* %9, align 4
  %159 = call %struct.intel_vgpu_ppgtt_spt* @ERR_PTR(i32 %158)
  store %struct.intel_vgpu_ppgtt_spt* %159, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  br label %160

160:                                              ; preds = %149, %144
  %161 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  ret %struct.intel_vgpu_ppgtt_spt* %161
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @gtt_type_is_pt(i32) #1

declare dso_local i32 @get_next_pt_type(i32) #1

declare dso_local i64 @vgpu_ips_enabled(%struct.intel_vgpu*) #1

declare dso_local %struct.intel_vgpu_ppgtt_spt* @intel_vgpu_find_spt_by_gfn(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @ppgtt_get_spt(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @gvt_dbg_mm(i8*) #1

declare dso_local i32 @clear_page(i32) #1

declare dso_local i32 @ppgtt_populate_spt(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @ppgtt_put_spt(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local %struct.intel_vgpu_ppgtt_spt* @ppgtt_alloc_spt_gfn(%struct.intel_vgpu*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @intel_vgpu_enable_page_track(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @trace_spt_change(i32, i8*, %struct.intel_vgpu_ppgtt_spt*, i32, i32) #1

declare dso_local i32 @ppgtt_free_spt(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @gvt_vgpu_err(i8*, %struct.intel_vgpu_ppgtt_spt*, i32, i32) #1

declare dso_local %struct.intel_vgpu_ppgtt_spt* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
