; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_gen11_unlock_sfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_gen11_unlock_sfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GEN11_VCS_SFC_FORCED_LOCK_BIT = common dso_local global i32 0, align 4
@GEN11_VECS_SFC_FORCED_LOCK_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @gen11_unlock_sfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen11_unlock_sfc(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %8 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %7, i32 0, i32 3
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  store %struct.intel_uncore* %9, %struct.intel_uncore** %3, align 8
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %11 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_2__* @RUNTIME_INFO(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %36 [
    i32 129, label %19
    i32 128, label %32
  ]

19:                                               ; preds = %1
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %21 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %42

28:                                               ; preds = %19
  %29 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %30 = call i32 @GEN11_VCS_SFC_FORCED_LOCK(%struct.intel_engine_cs* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @GEN11_VCS_SFC_FORCED_LOCK_BIT, align 4
  store i32 %31, i32* %6, align 4
  br label %37

32:                                               ; preds = %1
  %33 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %34 = call i32 @GEN11_VECS_SFC_FORCED_LOCK(%struct.intel_engine_cs* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @GEN11_VECS_SFC_FORCED_LOCK_BIT, align 4
  store i32 %35, i32* %6, align 4
  br label %37

36:                                               ; preds = %1
  br label %42

37:                                               ; preds = %32, %28
  %38 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @rmw_clear_fw(%struct.intel_uncore* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %36, %27
  ret void
}

declare dso_local %struct.TYPE_2__* @RUNTIME_INFO(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @GEN11_VCS_SFC_FORCED_LOCK(%struct.intel_engine_cs*) #1

declare dso_local i32 @GEN11_VECS_SFC_FORCED_LOCK(%struct.intel_engine_cs*) #1

declare dso_local i32 @rmw_clear_fw(%struct.intel_uncore*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
