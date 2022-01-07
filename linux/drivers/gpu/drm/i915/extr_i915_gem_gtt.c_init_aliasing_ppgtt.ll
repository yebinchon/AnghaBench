; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_init_aliasing_ppgtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_init_aliasing_ppgtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ggtt = type { %struct.TYPE_6__, %struct.i915_ppgtt* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.i915_ppgtt = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32, i32)*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ggtt_bind_vma = common dso_local global i64 0, align 8
@aliasing_gtt_bind_vma = common dso_local global i64 0, align 8
@ggtt_unbind_vma = common dso_local global i64 0, align 8
@aliasing_gtt_unbind_vma = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_ggtt*)* @init_aliasing_ppgtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_aliasing_ppgtt(%struct.i915_ggtt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_ggtt*, align 8
  %4 = alloca %struct.i915_ppgtt*, align 8
  %5 = alloca i32, align 4
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %3, align 8
  %6 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %7 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.i915_ppgtt* @i915_ppgtt_create(i32 %9)
  store %struct.i915_ppgtt* %10, %struct.i915_ppgtt** %4, align 8
  %11 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %12 = call i64 @IS_ERR(%struct.i915_ppgtt* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.i915_ppgtt* %15)
  store i32 %16, i32* %2, align 4
  br label %85

17:                                               ; preds = %1
  %18 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %19 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %23 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @GEM_WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %80

33:                                               ; preds = %17
  %34 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %35 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %36, align 8
  %38 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %39 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %38, i32 0, i32 0
  %40 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %41 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %37(%struct.TYPE_7__* %39, i32 0, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %80

48:                                               ; preds = %33
  %49 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %50 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %51 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %50, i32 0, i32 1
  store %struct.i915_ppgtt* %49, %struct.i915_ppgtt** %51, align 8
  %52 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %53 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ggtt_bind_vma, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @GEM_BUG_ON(i32 %59)
  %61 = load i64, i64* @aliasing_gtt_bind_vma, align 8
  %62 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %63 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  %66 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %67 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ggtt_unbind_vma, align 8
  %72 = icmp ne i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @GEM_BUG_ON(i32 %73)
  %75 = load i64, i64* @aliasing_gtt_unbind_vma, align 8
  %76 = load %struct.i915_ggtt*, %struct.i915_ggtt** %3, align 8
  %77 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i64 %75, i64* %79, align 8
  store i32 0, i32* %2, align 4
  br label %85

80:                                               ; preds = %47, %30
  %81 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %82 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %81, i32 0, i32 0
  %83 = call i32 @i915_vm_put(%struct.TYPE_7__* %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %48, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.i915_ppgtt* @i915_ppgtt_create(i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_ppgtt*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_ppgtt*) #1

declare dso_local i64 @GEM_WARN_ON(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_vm_put(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
