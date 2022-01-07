; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt.c_gen8_check_faults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt.c_gen8_check_faults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@GEN12_RING_FAULT_REG = common dso_local global i32 0, align 4
@GEN12_FAULT_TLB_DATA0 = common dso_local global i32 0, align 4
@GEN12_FAULT_TLB_DATA1 = common dso_local global i32 0, align 4
@GEN8_RING_FAULT_REG = common dso_local global i32 0, align 4
@GEN8_FAULT_TLB_DATA0 = common dso_local global i32 0, align 4
@GEN8_FAULT_TLB_DATA1 = common dso_local global i32 0, align 4
@RING_FAULT_VALID = common dso_local global i32 0, align 4
@FAULT_VA_HIGH_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"Unexpected fault\0A\09Addr: 0x%08x_%08x\0A\09Address space: %s\0A\09Engine ID: %d\0A\09Source ID: %d\0A\09Type: %d\0A\00", align 1
@FAULT_GTT_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"GGTT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"PPGTT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*)* @gen8_check_faults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_check_faults(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %11 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %12 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %11, i32 0, i32 1
  %13 = load %struct.intel_uncore*, %struct.intel_uncore** %12, align 8
  store %struct.intel_uncore* %13, %struct.intel_uncore** %3, align 8
  %14 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %15 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @INTEL_GEN(i32 %16)
  %18 = icmp sge i32 %17, 12
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @GEN12_RING_FAULT_REG, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @GEN12_FAULT_TLB_DATA0, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @GEN12_FAULT_TLB_DATA1, align 4
  store i32 %22, i32* %6, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @GEN8_RING_FAULT_REG, align 4
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @GEN8_FAULT_TLB_DATA0, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @GEN8_FAULT_TLB_DATA1, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @intel_uncore_read(%struct.intel_uncore* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @RING_FAULT_VALID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %27
  %36 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @intel_uncore_read(%struct.intel_uncore* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @intel_uncore_read(%struct.intel_uncore* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @FAULT_VA_HIGH_BITS, align 4
  %44 = and i32 %42, %43
  %45 = shl i32 %44, 44
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 12
  %48 = or i32 %45, %47
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @upper_32_bits(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @lower_32_bits(i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @FAULT_GTT_SEL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @GEN8_RING_FAULT_ENGINE_ID(i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @RING_FAULT_SRCID(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @RING_FAULT_FAULT_TYPE(i32 %63)
  %65 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52, i8* %58, i32 %60, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %35, %27
  ret void
}

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @GEN8_RING_FAULT_ENGINE_ID(i32) #1

declare dso_local i32 @RING_FAULT_SRCID(i32) #1

declare dso_local i32 @RING_FAULT_FAULT_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
