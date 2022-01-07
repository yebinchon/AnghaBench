; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_virtual_submit_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_virtual_submit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.virtual_engine = type { %struct.TYPE_10__, %struct.i915_request* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s: rq=%llx:%lld\0A\00", align 1
@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_request*)* @virtual_submit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtual_submit_request(%struct.i915_request* %0) #0 {
  %2 = alloca %struct.i915_request*, align 8
  %3 = alloca %struct.virtual_engine*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i64, align 8
  store %struct.i915_request* %0, %struct.i915_request** %2, align 8
  %6 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %7 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.virtual_engine* @to_virtual_engine(i32 %8)
  store %struct.virtual_engine* %9, %struct.virtual_engine** %3, align 8
  %10 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %11 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %19 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GEM_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %21)
  %23 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %24 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to void (%struct.i915_request*)*
  %28 = icmp ne void (%struct.i915_request*)* %27, @virtual_submit_request
  %29 = zext i1 %28 to i32
  %30 = call i32 @GEM_BUG_ON(i32 %29)
  %31 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %32 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %38 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %37, i32 0, i32 1
  %39 = load %struct.i915_request*, %struct.i915_request** %38, align 8
  store %struct.i915_request* %39, %struct.i915_request** %4, align 8
  %40 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %41 = icmp ne %struct.i915_request* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %1
  %43 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %44 = call i64 @i915_request_completed(%struct.i915_request* %43)
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @GEM_BUG_ON(i32 %47)
  %49 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %50 = call i32 @__i915_request_submit(%struct.i915_request* %49)
  %51 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %52 = call i32 @i915_request_put(%struct.i915_request* %51)
  br label %53

53:                                               ; preds = %42, %1
  %54 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %55 = call i64 @i915_request_completed(%struct.i915_request* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %59 = call i32 @__i915_request_submit(%struct.i915_request* %58)
  %60 = load i32, i32* @INT_MIN, align 4
  %61 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %62 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %66 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %65, i32 0, i32 1
  store %struct.i915_request* null, %struct.i915_request** %66, align 8
  br label %96

67:                                               ; preds = %53
  %68 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %69 = call i32 @rq_prio(%struct.i915_request* %68)
  %70 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %71 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %75 = call %struct.i915_request* @i915_request_get(%struct.i915_request* %74)
  %76 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %77 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %76, i32 0, i32 1
  store %struct.i915_request* %75, %struct.i915_request** %77, align 8
  %78 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %79 = call i32 @virtual_queue(%struct.virtual_engine* %78)
  %80 = call i32 @list_empty(i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @GEM_BUG_ON(i32 %83)
  %85 = load %struct.i915_request*, %struct.i915_request** %2, align 8
  %86 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %89 = call i32 @virtual_queue(%struct.virtual_engine* %88)
  %90 = call i32 @list_move_tail(i32* %87, i32 %89)
  %91 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %92 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = call i32 @tasklet_schedule(i32* %94)
  br label %96

96:                                               ; preds = %67, %57
  %97 = load %struct.virtual_engine*, %struct.virtual_engine** %3, align 8
  %98 = getelementptr inbounds %struct.virtual_engine, %struct.virtual_engine* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  ret void
}

declare dso_local %struct.virtual_engine* @to_virtual_engine(i32) #1

declare dso_local i32 @GEM_TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @i915_request_completed(%struct.i915_request*) #1

declare dso_local i32 @__i915_request_submit(%struct.i915_request*) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

declare dso_local i32 @rq_prio(%struct.i915_request*) #1

declare dso_local %struct.i915_request* @i915_request_get(%struct.i915_request*) #1

declare dso_local i32 @list_empty(i32) #1

declare dso_local i32 @virtual_queue(%struct.virtual_engine*) #1

declare dso_local i32 @list_move_tail(i32*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
