; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lspcon = type { i32 }

@DRM_LSPCON_MODE_PCON = common dso_local global i64 0, align 8
@DRM_LSPCON_MODE_LS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"LSPCON resume failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"LSPCON resume success\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lspcon_resume(%struct.intel_lspcon* %0) #0 {
  %2 = alloca %struct.intel_lspcon*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_lspcon* %0, %struct.intel_lspcon** %2, align 8
  %4 = load %struct.intel_lspcon*, %struct.intel_lspcon** %2, align 8
  %5 = call i64 @lspcon_wake_native_aux_ch(%struct.intel_lspcon* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i64, i64* @DRM_LSPCON_MODE_PCON, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load %struct.intel_lspcon*, %struct.intel_lspcon** %2, align 8
  %11 = call i32 @lspcon_resume_in_pcon_wa(%struct.intel_lspcon* %10)
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @DRM_LSPCON_MODE_LS, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = load %struct.intel_lspcon*, %struct.intel_lspcon** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @lspcon_wait_mode(%struct.intel_lspcon* %15, i32 %16)
  %18 = load i64, i64* @DRM_LSPCON_MODE_PCON, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %30

21:                                               ; preds = %14
  %22 = load %struct.intel_lspcon*, %struct.intel_lspcon** %2, align 8
  %23 = load i64, i64* @DRM_LSPCON_MODE_PCON, align 8
  %24 = call i64 @lspcon_change_mode(%struct.intel_lspcon* %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %30

28:                                               ; preds = %21
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %20, %28, %26
  ret void
}

declare dso_local i64 @lspcon_wake_native_aux_ch(%struct.intel_lspcon*) #1

declare dso_local i32 @lspcon_resume_in_pcon_wa(%struct.intel_lspcon*) #1

declare dso_local i64 @lspcon_wait_mode(%struct.intel_lspcon*, i32) #1

declare dso_local i64 @lspcon_change_mode(%struct.intel_lspcon*, i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
