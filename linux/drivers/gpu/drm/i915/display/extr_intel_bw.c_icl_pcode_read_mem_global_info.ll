; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_icl_pcode_read_mem_global_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_icl_pcode_read_mem_global_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_qgv_info = type { i64, i32, i32, i32 }

@ICL_PCODE_MEM_SUBSYSYSTEM_INFO = common dso_local global i32 0, align 4
@ICL_PCODE_MEM_SS_READ_GLOBAL_INFO = common dso_local global i32 0, align 4
@INTEL_DRAM_DDR4 = common dso_local global i64 0, align 8
@INTEL_DRAM_DDR3 = common dso_local global i64 0, align 8
@INTEL_DRAM_LPDDR3 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_qgv_info*)* @icl_pcode_read_mem_global_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_pcode_read_mem_global_info(%struct.drm_i915_private* %0, %struct.intel_qgv_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_qgv_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_qgv_info* %1, %struct.intel_qgv_info** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = load i32, i32* @ICL_PCODE_MEM_SUBSYSYSTEM_INFO, align 4
  %10 = load i32, i32* @ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @sandybridge_pcode_read(%struct.drm_i915_private* %8, i32 %11, i32* %6, i32* null)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 15
  switch i32 %19, label %38 [
    i32 0, label %20
    i32 1, label %24
    i32 2, label %28
    i32 3, label %33
  ]

20:                                               ; preds = %17
  %21 = load i64, i64* @INTEL_DRAM_DDR4, align 8
  %22 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %23 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %42

24:                                               ; preds = %17
  %25 = load i64, i64* @INTEL_DRAM_DDR3, align 8
  %26 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %27 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %42

28:                                               ; preds = %17
  %29 = load i8*, i8** @INTEL_DRAM_LPDDR3, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %32 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %42

33:                                               ; preds = %17
  %34 = load i8*, i8** @INTEL_DRAM_LPDDR3, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %37 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %42

38:                                               ; preds = %17
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 15
  %41 = call i32 @MISSING_CASE(i32 %40)
  br label %42

42:                                               ; preds = %38, %33, %28, %24, %20
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 240
  %45 = ashr i32 %44, 4
  %46 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %47 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 3840
  %50 = ashr i32 %49, 8
  %51 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %52 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %54 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @INTEL_DRAM_DDR4, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 4, i32 8
  %60 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %61 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %42, %15
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @sandybridge_pcode_read(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
