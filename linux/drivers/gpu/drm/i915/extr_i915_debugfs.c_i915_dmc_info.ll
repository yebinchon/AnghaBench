; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_dmc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_dmc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32, %struct.intel_csr }
%struct.intel_csr = type { i32, i32*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fw loaded: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"path: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"version: %d.%d\0A\00", align 1
@TGL_DMC_DEBUG_DC5_COUNT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@TGL_DMC_DEBUG_DC6_COUNT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@BXT_CSR_DC3_DC5_COUNT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@SKL_CSR_DC3_DC5_COUNT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@SKL_CSR_DC5_DC6_COUNT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"DC3 -> DC5 count: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"DC5 -> DC6 count: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"program base: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ssp base: 0x%08x\0A\00", align 1
@CSR_SSP_BASE = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"htp: 0x%08x\0A\00", align 1
@CSR_HTP_SKL = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_dmc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_dmc_info(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_csr*, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @node_to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  %16 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = call i32 @HAS_CSR(%struct.drm_i915_private* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %115

23:                                               ; preds = %2
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 1
  store %struct.intel_csr* %25, %struct.intel_csr** %8, align 8
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = call i32 @intel_runtime_pm_get(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %30 = load %struct.intel_csr*, %struct.intel_csr** %8, align 8
  %31 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @yesno(i32 %34)
  %36 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load %struct.intel_csr*, %struct.intel_csr** %8, align 8
  %39 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.intel_csr*, %struct.intel_csr** %8, align 8
  %43 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %23
  br label %95

47:                                               ; preds = %23
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load %struct.intel_csr*, %struct.intel_csr** %8, align 8
  %50 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @CSR_VERSION_MAJOR(i32 %51)
  %53 = load %struct.intel_csr*, %struct.intel_csr** %8, align 8
  %54 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @CSR_VERSION_MINOR(i32 %55)
  %57 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %56)
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %59 = call i32 @INTEL_GEN(%struct.drm_i915_private* %58)
  %60 = icmp sge i32 %59, 12
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 bitcast (%struct.TYPE_11__* @TGL_DMC_DEBUG_DC5_COUNT to i8*), i64 8, i1 false)
  %63 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 bitcast (%struct.TYPE_11__* @TGL_DMC_DEBUG_DC6_COUNT to i8*), i64 8, i1 false)
  br label %79

64:                                               ; preds = %47
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %66 = call i64 @IS_BROXTON(%struct.drm_i915_private* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 bitcast (%struct.TYPE_11__* @BXT_CSR_DC3_DC5_COUNT to i8*), i64 8, i1 false)
  br label %72

70:                                               ; preds = %64
  %71 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 bitcast (%struct.TYPE_11__* @SKL_CSR_DC3_DC5_COUNT to i8*), i64 8, i1 false)
  br label %72

72:                                               ; preds = %70, %68
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %74 = call i32 @IS_GEN9_LP(%struct.drm_i915_private* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 bitcast (%struct.TYPE_11__* @SKL_CSR_DC5_DC6_COUNT to i8*), i64 8, i1 false)
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @I915_READ(i64 %82)
  %84 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @I915_READ(i64 %91)
  %93 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88, %79
  br label %95

95:                                               ; preds = %94, %46
  %96 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %97 = call i64 @CSR_PROGRAM(i32 0)
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i64 %97, i64* %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @I915_READ(i64 %100)
  %102 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CSR_SSP_BASE, i32 0, i32 0), align 8
  %105 = call i32 @I915_READ(i64 %104)
  %106 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @CSR_HTP_SKL, i32 0, i32 0), align 8
  %109 = call i32 @I915_READ(i64 %108)
  %110 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %112 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @intel_runtime_pm_put(i32* %112, i32 %113)
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %95, %20
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @HAS_CSR(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @CSR_VERSION_MAJOR(i32) #1

declare dso_local i32 @CSR_VERSION_MINOR(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i64) #1

declare dso_local i64 @CSR_PROGRAM(i32) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
