; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_pool.c_intel_engine_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_pool.c_intel_engine_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_pool = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_pool_init(%struct.intel_engine_pool* %0) #0 {
  %2 = alloca %struct.intel_engine_pool*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_engine_pool* %0, %struct.intel_engine_pool** %2, align 8
  %4 = load %struct.intel_engine_pool*, %struct.intel_engine_pool** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_pool, %struct.intel_engine_pool* %4, i32 0, i32 1
  %6 = call i32 @spin_lock_init(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.intel_engine_pool*, %struct.intel_engine_pool** %2, align 8
  %10 = getelementptr inbounds %struct.intel_engine_pool, %struct.intel_engine_pool* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load %struct.intel_engine_pool*, %struct.intel_engine_pool** %2, align 8
  %16 = getelementptr inbounds %struct.intel_engine_pool, %struct.intel_engine_pool* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %7

25:                                               ; preds = %7
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
