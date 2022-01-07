; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen7_is_valid_mux_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_gen7_is_valid_mux_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@HALF_SLICE_CHICKEN2 = common dso_local global i32 0, align 4
@MICRO_BP0_0 = common dso_local global i32 0, align 4
@NOA_WRITE = common dso_local global i32 0, align 4
@OA_PERFCNT1_LO = common dso_local global i32 0, align 4
@OA_PERFCNT2_HI = common dso_local global i32 0, align 4
@OA_PERFMATRIX_LO = common dso_local global i32 0, align 4
@OA_PERFMATRIX_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i64)* @gen7_is_valid_mux_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen7_is_valid_mux_addr(%struct.drm_i915_private* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i32, i32* @HALF_SLICE_CHICKEN2, align 4
  %7 = call i64 @i915_mmio_reg_offset(i32 %6)
  %8 = icmp eq i64 %5, %7
  br i1 %8, label %41, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @MICRO_BP0_0, align 4
  %12 = call i64 @i915_mmio_reg_offset(i32 %11)
  %13 = icmp sge i64 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @NOA_WRITE, align 4
  %17 = call i64 @i915_mmio_reg_offset(i32 %16)
  %18 = icmp sle i64 %15, %17
  br i1 %18, label %41, label %19

19:                                               ; preds = %14, %9
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @OA_PERFCNT1_LO, align 4
  %22 = call i64 @i915_mmio_reg_offset(i32 %21)
  %23 = icmp sge i64 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @OA_PERFCNT2_HI, align 4
  %27 = call i64 @i915_mmio_reg_offset(i32 %26)
  %28 = icmp sle i64 %25, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %24, %19
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* @OA_PERFMATRIX_LO, align 4
  %32 = call i64 @i915_mmio_reg_offset(i32 %31)
  %33 = icmp sge i64 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i64, i64* %4, align 8
  %36 = load i32, i32* @OA_PERFMATRIX_HI, align 4
  %37 = call i64 @i915_mmio_reg_offset(i32 %36)
  %38 = icmp sle i64 %35, %37
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br label %41

41:                                               ; preds = %39, %24, %14, %2
  %42 = phi i1 [ true, %24 ], [ true, %14 ], [ true, %2 ], [ %40, %39 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i64 @i915_mmio_reg_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
