; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i915_pipestat_enable_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_i915_pipestat_enable_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32*, i32 }

@PIPE_A_PSR_STATUS_VLV = common dso_local global i32 0, align 4
@PIPE_B_PSR_STATUS_VLV = common dso_local global i32 0, align 4
@PIPE_FIFO_UNDERRUN_STATUS = common dso_local global i32 0, align 4
@SPRITE0_FLIP_DONE_INT_EN_VLV = common dso_local global i32 0, align 4
@SPRITE1_FLIP_DONE_INT_EN_VLV = common dso_local global i32 0, align 4
@SPRITE0_FLIP_DONE_INT_STATUS_VLV = common dso_local global i32 0, align 4
@SPRITE1_FLIP_DONE_INT_STATUS_VLV = common dso_local global i32 0, align 4
@PIPESTAT_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@PIPESTAT_INT_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pipe %c: enable_mask=0x%x, status_mask=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_pipestat_enable_mask(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 16
  store i32 %16, i32* %7, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 1
  %19 = call i32 @lockdep_assert_held(i32* %18)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = call i32 @INTEL_GEN(%struct.drm_i915_private* %20)
  %22 = icmp slt i32 %21, 5
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %65

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PIPE_A_PSR_STATUS_VLV, align 4
  %27 = and i32 %25, %26
  %28 = call i64 @WARN_ON_ONCE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %86

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PIPE_B_PSR_STATUS_VLV, align 4
  %34 = and i32 %32, %33
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %86

38:                                               ; preds = %31
  %39 = load i32, i32* @PIPE_FIFO_UNDERRUN_STATUS, align 4
  %40 = load i32, i32* @SPRITE0_FLIP_DONE_INT_EN_VLV, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SPRITE1_FLIP_DONE_INT_EN_VLV, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SPRITE0_FLIP_DONE_INT_STATUS_VLV, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %38
  %52 = load i32, i32* @SPRITE0_FLIP_DONE_INT_EN_VLV, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %38
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SPRITE1_FLIP_DONE_INT_STATUS_VLV, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @SPRITE1_FLIP_DONE_INT_EN_VLV, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %55
  br label %65

65:                                               ; preds = %64, %23
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PIPESTAT_INT_ENABLE_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @PIPESTAT_INT_STATUS_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi i1 [ true, %65 ], [ %76, %71 ]
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @pipe_name(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @WARN_ONCE(i32 %79, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %77, %37, %30
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
