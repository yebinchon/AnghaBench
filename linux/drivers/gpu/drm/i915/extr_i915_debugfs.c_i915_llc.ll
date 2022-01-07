; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_llc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_llc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"LLC: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s: %uMB\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"eDRAM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"eLLC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_llc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_llc(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @node_to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %5, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %12 = call i32 @INTEL_GEN(%struct.drm_i915_private* %11)
  %13 = icmp sgt i32 %12, 8
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = call i32 @HAS_LLC(%struct.drm_i915_private* %16)
  %18 = call i32 @yesno(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %29)
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @HAS_LLC(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
