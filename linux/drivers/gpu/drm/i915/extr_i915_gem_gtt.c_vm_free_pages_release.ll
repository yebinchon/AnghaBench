; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_vm_free_pages_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_vm_free_pages_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_address_space = type { %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { i32, %struct.pagevec }
%struct.pagevec = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PAGEVEC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_address_space*, i32)* @vm_free_pages_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_free_pages_release(%struct.i915_address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_address_space*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pagevec*, align 8
  %6 = alloca %struct.pagevec, align 4
  store %struct.i915_address_space* %0, %struct.i915_address_space** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %8 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store %struct.pagevec* %9, %struct.pagevec** %5, align 8
  %10 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %11 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = call i32 @lockdep_assert_held(i32* %12)
  %14 = load %struct.pagevec*, %struct.pagevec** %5, align 8
  %15 = call i32 @pagevec_count(%struct.pagevec* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @GEM_BUG_ON(i32 %18)
  %20 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %21 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %2
  %25 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %26 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.pagevec*, %struct.pagevec** %5, align 8
  %31 = call i32 @stash_push_pagevec(i32* %29, %struct.pagevec* %30)
  %32 = load %struct.pagevec*, %struct.pagevec** %5, align 8
  %33 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %41

38:                                               ; preds = %24
  %39 = load i32, i32* @PAGEVEC_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  %43 = icmp sle i32 %34, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %69

45:                                               ; preds = %41
  %46 = load %struct.pagevec*, %struct.pagevec** %5, align 8
  %47 = bitcast %struct.pagevec* %6 to i8*
  %48 = bitcast %struct.pagevec* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  %49 = load %struct.pagevec*, %struct.pagevec** %5, align 8
  %50 = call i32 @pagevec_reinit(%struct.pagevec* %49)
  %51 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %52 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  store %struct.pagevec* %6, %struct.pagevec** %5, align 8
  %55 = load %struct.pagevec*, %struct.pagevec** %5, align 8
  %56 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pagevec*, %struct.pagevec** %5, align 8
  %59 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @set_pages_array_wb(i32 %57, i32 %60)
  %62 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %63 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  br label %66

66:                                               ; preds = %45, %2
  %67 = load %struct.pagevec*, %struct.pagevec** %5, align 8
  %68 = call i32 @__pagevec_release(%struct.pagevec* %67)
  br label %69

69:                                               ; preds = %66, %44
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @stash_push_pagevec(i32*, %struct.pagevec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pagevec_reinit(%struct.pagevec*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_pages_array_wb(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__pagevec_release(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
