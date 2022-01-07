; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_is_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_is_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.TYPE_10__, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.tasklet_struct }
%struct.TYPE_9__ = type { i32 }
%struct.tasklet_struct = type { i32, i32 (i32)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_engine_is_idle(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.tasklet_struct*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @intel_gt_is_wedged(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %13 = call i32 @intel_engine_pm_is_awake(%struct.intel_engine_cs* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %74

16:                                               ; preds = %11
  %17 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %18 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %17, i32 0, i32 0
  %19 = call i64 @execlists_active(%struct.TYPE_10__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %16
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %23 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  store %struct.tasklet_struct* %24, %struct.tasklet_struct** %4, align 8
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %26 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @synchronize_hardirq(i32 %32)
  %34 = call i32 (...) @local_bh_disable()
  %35 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %36 = call i64 @tasklet_trylock(%struct.tasklet_struct* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %21
  %39 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %40 = call i64 @__tasklet_is_enabled(%struct.tasklet_struct* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %44 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %43, i32 0, i32 1
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %47 = getelementptr inbounds %struct.tasklet_struct, %struct.tasklet_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %45(i32 %48)
  br label %50

50:                                               ; preds = %42, %38
  %51 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %52 = call i32 @tasklet_unlock(%struct.tasklet_struct* %51)
  br label %53

53:                                               ; preds = %50, %21
  %54 = call i32 (...) @local_bh_enable()
  %55 = load %struct.tasklet_struct*, %struct.tasklet_struct** %4, align 8
  %56 = call i32 @tasklet_unlock_wait(%struct.tasklet_struct* %55)
  %57 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %58 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %57, i32 0, i32 0
  %59 = call i64 @execlists_active(%struct.TYPE_10__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %74

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %16
  %64 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %65 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = call i32 @RB_EMPTY_ROOT(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %74

71:                                               ; preds = %63
  %72 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %73 = call i32 @ring_is_idle(%struct.intel_engine_cs* %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %70, %61, %15, %10
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @intel_gt_is_wedged(i32) #1

declare dso_local i32 @intel_engine_pm_is_awake(%struct.intel_engine_cs*) #1

declare dso_local i64 @execlists_active(%struct.TYPE_10__*) #1

declare dso_local i32 @synchronize_hardirq(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @tasklet_trylock(%struct.tasklet_struct*) #1

declare dso_local i64 @__tasklet_is_enabled(%struct.tasklet_struct*) #1

declare dso_local i32 @tasklet_unlock(%struct.tasklet_struct*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @tasklet_unlock_wait(%struct.tasklet_struct*) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @ring_is_idle(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
