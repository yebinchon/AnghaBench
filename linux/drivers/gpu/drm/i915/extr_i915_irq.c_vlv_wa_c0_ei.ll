; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_vlv_wa_c0_ei.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_vlv_wa_c0_ei.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_rps }
%struct.intel_rps = type { %struct.intel_rps_ei, %struct.TYPE_4__ }
%struct.intel_rps_ei = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@GEN6_PM_RP_UP_EI_EXPIRED = common dso_local global i32 0, align 4
@GEN6_PM_RP_UP_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_PM_RP_DOWN_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @vlv_wa_c0_ei to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_wa_c0_ei(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_rps*, align 8
  %7 = alloca %struct.intel_rps_ei*, align 8
  %8 = alloca %struct.intel_rps_ei, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.intel_rps* %16, %struct.intel_rps** %6, align 8
  %17 = load %struct.intel_rps*, %struct.intel_rps** %6, align 8
  %18 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %17, i32 0, i32 0
  store %struct.intel_rps_ei* %18, %struct.intel_rps_ei** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GEN6_PM_RP_UP_EI_EXPIRED, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

24:                                               ; preds = %2
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = call i32 @vlv_c0_read(%struct.drm_i915_private* %25, %struct.intel_rps_ei* %8)
  %27 = load %struct.intel_rps_ei*, %struct.intel_rps_ei** %7, align 8
  %28 = getelementptr inbounds %struct.intel_rps_ei, %struct.intel_rps_ei* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.intel_rps_ei, %struct.intel_rps_ei* %8, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.intel_rps_ei*, %struct.intel_rps_ei** %7, align 8
  %35 = getelementptr inbounds %struct.intel_rps_ei, %struct.intel_rps_ei* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ktime_us_delta(i64 %33, i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = getelementptr inbounds %struct.intel_rps_ei, %struct.intel_rps_ei* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.intel_rps_ei*, %struct.intel_rps_ei** %7, align 8
  %46 = getelementptr inbounds %struct.intel_rps_ei, %struct.intel_rps_ei* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %12, align 4
  %49 = getelementptr inbounds %struct.intel_rps_ei, %struct.intel_rps_ei* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.intel_rps_ei*, %struct.intel_rps_ei** %7, align 8
  %52 = getelementptr inbounds %struct.intel_rps_ei, %struct.intel_rps_ei* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @max(i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %58, 25600000
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.intel_rps*, %struct.intel_rps** %6, align 8
  %63 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %61, %65
  %67 = icmp sgt i32 %60, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %31
  %69 = load i32, i32* @GEN6_PM_RP_UP_THRESHOLD, align 4
  store i32 %69, i32* %9, align 4
  br label %82

70:                                               ; preds = %31
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.intel_rps*, %struct.intel_rps** %6, align 8
  %74 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %72, %76
  %78 = icmp slt i32 %71, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @GEN6_PM_RP_DOWN_THRESHOLD, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %79, %70
  br label %82

82:                                               ; preds = %81, %68
  br label %83

83:                                               ; preds = %82, %24
  %84 = load %struct.intel_rps*, %struct.intel_rps** %6, align 8
  %85 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %84, i32 0, i32 0
  %86 = bitcast %struct.intel_rps_ei* %85 to i8*
  %87 = bitcast %struct.intel_rps_ei* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 16, i1 false)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %23
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @vlv_c0_read(%struct.drm_i915_private*, %struct.intel_rps_ei*) #1

declare dso_local i32 @ktime_us_delta(i64, i64) #1

declare dso_local i32 @max(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
