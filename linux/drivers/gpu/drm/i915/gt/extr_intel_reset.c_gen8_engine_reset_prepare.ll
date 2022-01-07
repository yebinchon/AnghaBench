; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_gen8_engine_reset_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_gen8_engine_reset_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@RESET_CTL_CAT_ERROR = common dso_local global i32 0, align 4
@RESET_CTL_READY_TO_RESET = common dso_local global i32 0, align 4
@RESET_CTL_REQUEST_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%s reset request timed out: {request: %08x, RESET_CTL: %08x}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @gen8_engine_reset_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen8_engine_reset_prepare(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %11 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %10, i32 0, i32 2
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %11, align 8
  store %struct.intel_uncore* %12, %struct.intel_uncore** %4, align 8
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %14 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @RING_RESET_CTL(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @RESET_CTL_CAT_ERROR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @RESET_CTL_CAT_ERROR, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @RESET_CTL_CAT_ERROR, align 4
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %38

27:                                               ; preds = %1
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @RESET_CTL_READY_TO_RESET, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @RESET_CTL_REQUEST_RESET, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @RESET_CTL_READY_TO_RESET, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @RESET_CTL_READY_TO_RESET, align 4
  store i32 %35, i32* %8, align 4
  br label %37

36:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %62

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @_MASKED_BIT_ENABLE(i32 %41)
  %43 = call i32 @intel_uncore_write_fw(%struct.intel_uncore* %39, i32 %40, i32 %42)
  %44 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @__intel_wait_for_register_fw(%struct.intel_uncore* %44, i32 %45, i32 %46, i32 %47, i32 700, i32 0, i32* null)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %38
  %52 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %53 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @intel_uncore_read_fw(%struct.intel_uncore* %56, i32 %57)
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %51, %38
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %36
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @RING_RESET_CTL(i32) #1

declare dso_local i32 @intel_uncore_read_fw(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_write_fw(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @__intel_wait_for_register_fw(%struct.intel_uncore*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
