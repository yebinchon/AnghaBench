; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_psr_source_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_psr_source_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@psr_source_status.live_status = internal constant [11 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"CAPTURE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"CAPTURE_FS\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SLEEP\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"BUFON_FW\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ML_UP\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"SU_STANDBY\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"FAST_SLEEP\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"DEEP_SLEEP\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"BUF_ON\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"TG_ON\00", align 1
@EDP_PSR2_STATUS = common dso_local global i32 0, align 4
@EDP_PSR2_STATUS_STATE_MASK = common dso_local global i64 0, align 8
@EDP_PSR2_STATUS_STATE_SHIFT = common dso_local global i64 0, align 8
@psr_source_status.live_status.12 = internal constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"SRDONACK\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"SRDENT\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"BUFOFF\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"BUFON\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"AUXACK\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"SRDOFFACK\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"SRDENT_ON\00", align 1
@EDP_PSR_STATUS = common dso_local global i32 0, align 4
@EDP_PSR_STATUS_STATE_MASK = common dso_local global i64 0, align 8
@EDP_PSR_STATUS_STATE_SHIFT = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [32 x i8] c"Source PSR status: %s [0x%08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.seq_file*)* @psr_source_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psr_source_status(%struct.drm_i915_private* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load i32, i32* @EDP_PSR2_STATUS, align 4
  %15 = call i64 @I915_READ(i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @EDP_PSR2_STATUS_STATE_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @EDP_PSR2_STATUS_STATE_SHIFT, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @psr_source_status.live_status, i64 0, i64 0))
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds [11 x i8*], [11 x i8*]* @psr_source_status.live_status, i64 0, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %24, %13
  br label %45

29:                                               ; preds = %2
  %30 = load i32, i32* @EDP_PSR_STATUS, align 4
  %31 = call i64 @I915_READ(i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @EDP_PSR_STATUS_STATE_MASK, align 8
  %34 = and i64 %32, %33
  %35 = load i64, i64* @EDP_PSR_STATUS_STATE_SHIFT, align 8
  %36 = lshr i64 %34, %35
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @psr_source_status.live_status.12, i64 0, i64 0))
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds [8 x i8*], [8 x i8*]* @psr_source_status.live_status.12, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %7, align 8
  br label %44

44:                                               ; preds = %40, %29
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i8* %47, i64 %48)
  ret void
}

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
