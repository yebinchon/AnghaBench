; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_vlv_drpc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_vlv_drpc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32 }

@VLV_GTLC_PW_STATUS = common dso_local global i32 0, align 4
@GEN6_RC_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"RC6 Enabled: %s\0A\00", align 1
@GEN7_RC_CTL_TO_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Render Power Well: %s\0A\00", align 1
@VLV_GTLC_PW_RENDER_STATUS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Media Power Well: %s\0A\00", align 1
@VLV_GTLC_PW_MEDIA_STATUS_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Render RC6 residency since boot:\00", align 1
@VLV_GT_RENDER_RC6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Media RC6 residency since boot:\00", align 1
@VLV_GT_MEDIA_RC6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*)* @vlv_drpc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_drpc_info(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.drm_i915_private* @node_to_i915(i32 %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %3, align 8
  %10 = load i32, i32* @VLV_GTLC_PW_STATUS, align 4
  %11 = call i32 @I915_READ(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @GEN6_RC_CONTROL, align 4
  %13 = call i32 @I915_READ(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @GEN7_RC_CTL_TO_MODE, align 4
  %17 = call i32 @GEN6_RC_CTL_EI_MODE(i32 1)
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = call i8* @yesno(i32 %19)
  %21 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @VLV_GTLC_PW_RENDER_STATUS_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %29 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @VLV_GTLC_PW_MEDIA_STATUS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %37 = call i32 @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %39 = load i32, i32* @VLV_GT_RENDER_RC6, align 4
  %40 = call i32 @print_rc6_res(%struct.seq_file* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %42 = load i32, i32* @VLV_GT_MEDIA_RC6, align 4
  %43 = call i32 @print_rc6_res(%struct.seq_file* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %45 = call i32 @i915_forcewake_domains(%struct.seq_file* %44, i32* null)
  ret i32 %45
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i8* @yesno(i32) #1

declare dso_local i32 @GEN6_RC_CTL_EI_MODE(i32) #1

declare dso_local i32 @print_rc6_res(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @i915_forcewake_domains(%struct.seq_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
