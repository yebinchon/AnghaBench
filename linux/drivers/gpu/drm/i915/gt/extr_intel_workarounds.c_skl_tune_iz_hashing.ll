; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_skl_tune_iz_hashing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_skl_tune_iz_hashing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@GEN7_GT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, %struct.i915_wa_list*)* @skl_tune_iz_hashing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_tune_iz_hashing(%struct.intel_engine_cs* %0, %struct.i915_wa_list* %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_wa_list*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %4, align 8
  %9 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %10 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = bitcast [3 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 24, i1 false)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %46, %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %14, 3
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = call %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @is_power_of_2(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  br label %46

29:                                               ; preds = %16
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = call %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ffs(i32 %38)
  %40 = sub nsw i64 %39, 1
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub nsw i64 3, %41
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 %44
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %29, %28
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %13

49:                                               ; preds = %13
  %50 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %51 = load i64, i64* %50, align 16
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %59 = load i64, i64* %58, align 16
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %81

62:                                               ; preds = %57, %53, %49
  %63 = load i32, i32* @GEN7_GT_MODE, align 4
  %64 = call i32 @GEN9_IZ_HASHING_MASK(i32 2)
  %65 = call i32 @GEN9_IZ_HASHING_MASK(i32 1)
  %66 = or i32 %64, %65
  %67 = call i32 @GEN9_IZ_HASHING_MASK(i32 0)
  %68 = or i32 %66, %67
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 2
  %70 = load i64, i64* %69, align 16
  %71 = call i32 @GEN9_IZ_HASHING(i32 2, i64 %70)
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @GEN9_IZ_HASHING(i32 1, i64 %73)
  %75 = or i32 %71, %74
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %77 = load i64, i64* %76, align 16
  %78 = call i32 @GEN9_IZ_HASHING(i32 0, i64 %77)
  %79 = or i32 %75, %78
  %80 = call i32 @WA_SET_FIELD_MASKED(i32 %63, i32 %68, i32 %79)
  br label %81

81:                                               ; preds = %62, %61
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @is_power_of_2(i32) #2

declare dso_local %struct.TYPE_4__* @RUNTIME_INFO(%struct.drm_i915_private*) #2

declare dso_local i64 @ffs(i32) #2

declare dso_local i32 @WA_SET_FIELD_MASKED(i32, i32, i32) #2

declare dso_local i32 @GEN9_IZ_HASHING_MASK(i32) #2

declare dso_local i32 @GEN9_IZ_HASHING(i32, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
