; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_gen11_lock_sfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_gen11_lock_sfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GEN11_VCS_SFC_FORCED_LOCK_BIT = common dso_local global i32 0, align 4
@GEN11_VCS_SFC_LOCK_ACK_BIT = common dso_local global i32 0, align 4
@GEN11_VCS_SFC_USAGE_BIT = common dso_local global i32 0, align 4
@GEN11_VECS_SFC_FORCED_LOCK_BIT = common dso_local global i32 0, align 4
@GEN11_VECS_SFC_LOCK_ACK_BIT = common dso_local global i32 0, align 4
@GEN11_VECS_SFC_USAGE_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Wait for SFC forced lock ack failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @gen11_lock_sfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen11_lock_sfc(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %14 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %13, i32 0, i32 3
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %14, align 8
  store %struct.intel_uncore* %15, %struct.intel_uncore** %4, align 8
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_2__* @RUNTIME_INFO(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %23 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %62 [
    i32 129, label %25
    i32 128, label %48
  ]

25:                                               ; preds = %1
  %26 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %27 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %86

34:                                               ; preds = %25
  %35 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %36 = call i32 @GEN11_VCS_SFC_FORCED_LOCK(%struct.intel_engine_cs* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @GEN11_VCS_SFC_FORCED_LOCK_BIT, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %39 = call i32 @GEN11_VCS_SFC_LOCK_STATUS(%struct.intel_engine_cs* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @GEN11_VCS_SFC_LOCK_ACK_BIT, align 4
  store i32 %40, i32* %9, align 4
  %41 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %42 = call i32 @GEN11_VCS_SFC_LOCK_STATUS(%struct.intel_engine_cs* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @GEN11_VCS_SFC_USAGE_BIT, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %45 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @GEN11_VCS_SFC_RESET_BIT(i32 %46)
  store i32 %47, i32* %12, align 4
  br label %63

48:                                               ; preds = %1
  %49 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %50 = call i32 @GEN11_VECS_SFC_FORCED_LOCK(%struct.intel_engine_cs* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @GEN11_VECS_SFC_FORCED_LOCK_BIT, align 4
  store i32 %51, i32* %8, align 4
  %52 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %53 = call i32 @GEN11_VECS_SFC_LOCK_ACK(%struct.intel_engine_cs* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @GEN11_VECS_SFC_LOCK_ACK_BIT, align 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %56 = call i32 @GEN11_VECS_SFC_USAGE(%struct.intel_engine_cs* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @GEN11_VECS_SFC_USAGE_BIT, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %59 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @GEN11_VECS_SFC_RESET_BIT(i32 %60)
  store i32 %61, i32* %12, align 4
  br label %63

62:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

63:                                               ; preds = %48, %34
  %64 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @rmw_set_fw(%struct.intel_uncore* %64, i32 %65, i32 %66)
  %68 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @__intel_wait_for_register_fw(%struct.intel_uncore* %68, i32 %69, i32 %70, i32 %71, i32 1000, i32 0, i32* null)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %86

76:                                               ; preds = %63
  %77 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %77, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %83, %74, %62, %33
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_2__* @RUNTIME_INFO(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @GEN11_VCS_SFC_FORCED_LOCK(%struct.intel_engine_cs*) #1

declare dso_local i32 @GEN11_VCS_SFC_LOCK_STATUS(%struct.intel_engine_cs*) #1

declare dso_local i32 @GEN11_VCS_SFC_RESET_BIT(i32) #1

declare dso_local i32 @GEN11_VECS_SFC_FORCED_LOCK(%struct.intel_engine_cs*) #1

declare dso_local i32 @GEN11_VECS_SFC_LOCK_ACK(%struct.intel_engine_cs*) #1

declare dso_local i32 @GEN11_VECS_SFC_USAGE(%struct.intel_engine_cs*) #1

declare dso_local i32 @GEN11_VECS_SFC_RESET_BIT(i32) #1

declare dso_local i32 @rmw_set_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i64 @__intel_wait_for_register_fw(%struct.intel_uncore*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
