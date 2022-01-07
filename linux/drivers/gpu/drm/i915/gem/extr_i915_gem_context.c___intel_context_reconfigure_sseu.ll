; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___intel_context_reconfigure_sseu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c___intel_context_reconfigure_sseu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { %struct.intel_sseu, %struct.TYPE_2__* }
%struct.intel_sseu = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_context*, i32)* @__intel_context_reconfigure_sseu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__intel_context_reconfigure_sseu(%struct.intel_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sseu, align 4
  %5 = alloca %struct.intel_context*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.intel_sseu, %struct.intel_sseu* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.intel_context* %0, %struct.intel_context** %5, align 8
  %8 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %9 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @INTEL_GEN(i32 %12)
  %14 = icmp slt i32 %13, 8
  %15 = zext i1 %14 to i32
  %16 = call i32 @GEM_BUG_ON(i32 %15)
  %17 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %18 = call i32 @intel_context_lock_pinned(%struct.intel_context* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %25 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %24, i32 0, i32 0
  %26 = call i32 @memcmp(%struct.intel_sseu* %25, %struct.intel_sseu* %4, i32 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %42

29:                                               ; preds = %23
  %30 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %31 = getelementptr inbounds %struct.intel_sseu, %struct.intel_sseu* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gen8_modify_rpcs(%struct.intel_context* %30, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %38 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %37, i32 0, i32 0
  %39 = bitcast %struct.intel_sseu* %38 to i8*
  %40 = bitcast %struct.intel_sseu* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 4 %40, i64 4, i1 false)
  br label %41

41:                                               ; preds = %36, %29
  br label %42

42:                                               ; preds = %41, %28
  %43 = load %struct.intel_context*, %struct.intel_context** %5, align 8
  %44 = call i32 @intel_context_unlock_pinned(%struct.intel_context* %43)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %21
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @intel_context_lock_pinned(%struct.intel_context*) #1

declare dso_local i32 @memcmp(%struct.intel_sseu*, %struct.intel_sseu*, i32) #1

declare dso_local i32 @gen8_modify_rpcs(%struct.intel_context*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @intel_context_unlock_pinned(%struct.intel_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
