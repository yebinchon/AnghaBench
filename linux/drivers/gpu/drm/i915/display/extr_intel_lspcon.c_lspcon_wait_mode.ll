; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_wait_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_wait_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lspcon = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Waiting for LSPCON mode %s to settle\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"LSPCON mode hasn't settled\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Current LSPCON mode %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lspcon*, i32)* @lspcon_wait_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lspcon_wait_mode(%struct.intel_lspcon* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_lspcon*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_lspcon* %0, %struct.intel_lspcon** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %7 = call i32 @lspcon_get_current_mode(%struct.intel_lspcon* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @lspcon_mode_name(i32 %13)
  %15 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.intel_lspcon*, %struct.intel_lspcon** %3, align 8
  %17 = call i32 @lspcon_get_current_mode(%struct.intel_lspcon* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @wait_for(i32 %20, i32 400)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %12
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @lspcon_mode_name(i32 %29)
  %31 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @lspcon_get_current_mode(%struct.intel_lspcon*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @lspcon_mode_name(i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
