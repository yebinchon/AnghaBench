; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_execlist.c_emulate_execlist_ctx_schedule_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_execlist.c_emulate_execlist_ctx_schedule_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_execlist = type { %struct.execlist_ctx_descriptor_format*, %struct.intel_vgpu_execlist_slot*, %struct.intel_vgpu_execlist_slot*, %struct.intel_vgpu* }
%struct.intel_vgpu_execlist_slot = type { %struct.execlist_ctx_descriptor_format* }
%struct.intel_vgpu = type { i32 }
%struct.execlist_ctx_descriptor_format = type { i64 }
%struct.execlist_context_status_format = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"schedule out context id %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"schedule out context is not running context,ctx id %x running ctx id %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"ctx 1 valid, ctx/ctx 0 is scheduled-out\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"need to switch virtual execlist slot\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_execlist*, %struct.execlist_ctx_descriptor_format*)* @emulate_execlist_ctx_schedule_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulate_execlist_ctx_schedule_out(%struct.intel_vgpu_execlist* %0, %struct.execlist_ctx_descriptor_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu_execlist*, align 8
  %5 = alloca %struct.execlist_ctx_descriptor_format*, align 8
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca %struct.intel_vgpu_execlist_slot*, align 8
  %8 = alloca %struct.intel_vgpu_execlist_slot*, align 8
  %9 = alloca %struct.execlist_ctx_descriptor_format*, align 8
  %10 = alloca %struct.execlist_ctx_descriptor_format*, align 8
  %11 = alloca %struct.execlist_context_status_format, align 8
  store %struct.intel_vgpu_execlist* %0, %struct.intel_vgpu_execlist** %4, align 8
  store %struct.execlist_ctx_descriptor_format* %1, %struct.execlist_ctx_descriptor_format** %5, align 8
  %12 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %12, i32 0, i32 3
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %13, align 8
  store %struct.intel_vgpu* %14, %struct.intel_vgpu** %6, align 8
  %15 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %15, i32 0, i32 2
  %17 = load %struct.intel_vgpu_execlist_slot*, %struct.intel_vgpu_execlist_slot** %16, align 8
  store %struct.intel_vgpu_execlist_slot* %17, %struct.intel_vgpu_execlist_slot** %7, align 8
  %18 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %18, i32 0, i32 1
  %20 = load %struct.intel_vgpu_execlist_slot*, %struct.intel_vgpu_execlist_slot** %19, align 8
  store %struct.intel_vgpu_execlist_slot* %20, %struct.intel_vgpu_execlist_slot** %8, align 8
  %21 = load %struct.intel_vgpu_execlist_slot*, %struct.intel_vgpu_execlist_slot** %7, align 8
  %22 = getelementptr inbounds %struct.intel_vgpu_execlist_slot, %struct.intel_vgpu_execlist_slot* %21, i32 0, i32 0
  %23 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %22, align 8
  %24 = getelementptr inbounds %struct.execlist_ctx_descriptor_format, %struct.execlist_ctx_descriptor_format* %23, i64 0
  store %struct.execlist_ctx_descriptor_format* %24, %struct.execlist_ctx_descriptor_format** %9, align 8
  %25 = load %struct.intel_vgpu_execlist_slot*, %struct.intel_vgpu_execlist_slot** %7, align 8
  %26 = getelementptr inbounds %struct.intel_vgpu_execlist_slot, %struct.intel_vgpu_execlist_slot* %25, i32 0, i32 0
  %27 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %26, align 8
  %28 = getelementptr inbounds %struct.execlist_ctx_descriptor_format, %struct.execlist_ctx_descriptor_format* %27, i64 1
  store %struct.execlist_ctx_descriptor_format* %28, %struct.execlist_ctx_descriptor_format** %10, align 8
  %29 = call i32 @memset(%struct.execlist_context_status_format* %11, i32 0, i32 24)
  %30 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %5, align 8
  %31 = getelementptr inbounds %struct.execlist_ctx_descriptor_format, %struct.execlist_ctx_descriptor_format* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, ...) @gvt_dbg_el(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %5, align 8
  %35 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %36 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %35, i32 0, i32 0
  %37 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %36, align 8
  %38 = call i64 @same_context(%struct.execlist_ctx_descriptor_format* %34, %struct.execlist_ctx_descriptor_format* %37)
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %2
  %45 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %5, align 8
  %46 = getelementptr inbounds %struct.execlist_ctx_descriptor_format, %struct.execlist_ctx_descriptor_format* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %49 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %48, i32 0, i32 0
  %50 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %49, align 8
  %51 = getelementptr inbounds %struct.execlist_ctx_descriptor_format, %struct.execlist_ctx_descriptor_format* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %130

56:                                               ; preds = %2
  %57 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %10, align 8
  %58 = call i64 @valid_context(%struct.execlist_ctx_descriptor_format* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %9, align 8
  %62 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %5, align 8
  %63 = call i64 @same_context(%struct.execlist_ctx_descriptor_format* %61, %struct.execlist_ctx_descriptor_format* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @gvt_dbg_el(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %10, align 8
  %68 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %69 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %68, i32 0, i32 0
  store %struct.execlist_ctx_descriptor_format* %67, %struct.execlist_ctx_descriptor_format** %69, align 8
  %70 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %71 = call i32 @emulate_execlist_status(%struct.intel_vgpu_execlist* %70)
  %72 = getelementptr inbounds %struct.execlist_context_status_format, %struct.execlist_context_status_format* %11, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.execlist_context_status_format, %struct.execlist_context_status_format* %11, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %5, align 8
  %75 = getelementptr inbounds %struct.execlist_ctx_descriptor_format, %struct.execlist_ctx_descriptor_format* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.execlist_context_status_format, %struct.execlist_context_status_format* %11, i32 0, i32 4
  store i64 %76, i64* %77, align 8
  %78 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %79 = call i32 @emulate_csb_update(%struct.intel_vgpu_execlist* %78, %struct.execlist_context_status_format* %11, i32 0)
  br label %129

80:                                               ; preds = %60, %56
  %81 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %10, align 8
  %82 = call i64 @valid_context(%struct.execlist_ctx_descriptor_format* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %9, align 8
  %86 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %5, align 8
  %87 = call i64 @same_context(%struct.execlist_ctx_descriptor_format* %85, %struct.execlist_ctx_descriptor_format* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %84, %80
  %90 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %10, align 8
  %91 = call i64 @valid_context(%struct.execlist_ctx_descriptor_format* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %89
  %94 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %10, align 8
  %95 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %5, align 8
  %96 = call i64 @same_context(%struct.execlist_ctx_descriptor_format* %94, %struct.execlist_ctx_descriptor_format* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %93, %84
  %99 = call i32 (i8*, ...) @gvt_dbg_el(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %101 = call i32 @switch_virtual_execlist_slot(%struct.intel_vgpu_execlist* %100)
  %102 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %103 = call i32 @emulate_execlist_status(%struct.intel_vgpu_execlist* %102)
  %104 = getelementptr inbounds %struct.execlist_context_status_format, %struct.execlist_context_status_format* %11, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = getelementptr inbounds %struct.execlist_context_status_format, %struct.execlist_context_status_format* %11, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format** %5, align 8
  %107 = getelementptr inbounds %struct.execlist_ctx_descriptor_format, %struct.execlist_ctx_descriptor_format* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.execlist_context_status_format, %struct.execlist_context_status_format* %11, i32 0, i32 4
  store i64 %108, i64* %109, align 8
  %110 = load %struct.intel_vgpu_execlist_slot*, %struct.intel_vgpu_execlist_slot** %8, align 8
  %111 = icmp ne %struct.intel_vgpu_execlist_slot* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %98
  %113 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %114 = call i32 @emulate_csb_update(%struct.intel_vgpu_execlist* %113, %struct.execlist_context_status_format* %11, i32 0)
  br label %123

115:                                              ; preds = %98
  %116 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %117 = call i32 @emulate_csb_update(%struct.intel_vgpu_execlist* %116, %struct.execlist_context_status_format* %11, i32 1)
  %118 = call i32 @memset(%struct.execlist_context_status_format* %11, i32 0, i32 24)
  %119 = getelementptr inbounds %struct.execlist_context_status_format, %struct.execlist_context_status_format* %11, i32 0, i32 3
  store i32 1, i32* %119, align 4
  %120 = getelementptr inbounds %struct.execlist_context_status_format, %struct.execlist_context_status_format* %11, i32 0, i32 4
  store i64 0, i64* %120, align 8
  %121 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %4, align 8
  %122 = call i32 @emulate_csb_update(%struct.intel_vgpu_execlist* %121, %struct.execlist_context_status_format* %11, i32 0)
  br label %123

123:                                              ; preds = %115, %112
  br label %128

124:                                              ; preds = %93, %89
  %125 = call i64 @WARN_ON(i32 1)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %130

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %65
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %124, %44
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @memset(%struct.execlist_context_status_format*, i32, i32) #1

declare dso_local i32 @gvt_dbg_el(i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @same_context(%struct.execlist_ctx_descriptor_format*, %struct.execlist_ctx_descriptor_format*) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i64, i64) #1

declare dso_local i64 @valid_context(%struct.execlist_ctx_descriptor_format*) #1

declare dso_local i32 @emulate_execlist_status(%struct.intel_vgpu_execlist*) #1

declare dso_local i32 @emulate_csb_update(%struct.intel_vgpu_execlist*, %struct.execlist_context_status_format*, i32) #1

declare dso_local i32 @switch_virtual_execlist_slot(%struct.intel_vgpu_execlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
