; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_print_sseu_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_print_sseu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sseu_dev_info = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Available\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"  %s Slice Mask: %04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"  %s Slice Total: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"  %s Subslice Total: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"  %s Slice%i subslices: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"  %s EU Total: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"  %s EU Per Subslice: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"  Has Pooled EU: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"  Min EU in pool: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"  Has Slice Power Gating: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"  Has Subslice Power Gating: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"  Has EU Power Gating: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32, %struct.sseu_dev_info*)* @i915_print_sseu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_print_sseu_info(%struct.seq_file* %0, i32 %1, %struct.sseu_dev_info* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sseu_dev_info*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sseu_dev_info* %2, %struct.sseu_dev_info** %6, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @node_to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %17, i8** %8, align 8
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %21 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %19, i32 %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %27 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hweight8(i32 %28)
  %30 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %25, i32 %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %34 = call i32 @intel_sseu_subslice_total(%struct.sseu_dev_info* %33)
  %35 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %32, i32 %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %51, %3
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %39 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fls(i32 %40)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @intel_sseu_subslices_per_slice(%struct.sseu_dev_info* %47, i32 %48)
  %50 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %36

54:                                               ; preds = %36
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %58 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %56, i32 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %64 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %62, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %54
  br label %114

70:                                               ; preds = %54
  %71 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %73 = call i64 @HAS_POOLED_EU(%struct.drm_i915_private* %72)
  %74 = call i32 @yesno(i64 %73)
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %76)
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %79 = call i64 @HAS_POOLED_EU(%struct.drm_i915_private* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %83 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %84 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %81, %70
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %92 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @yesno(i64 %93)
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %96)
  %98 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %99 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %100 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @yesno(i64 %101)
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %104)
  %106 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %107 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %108 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @yesno(i64 %109)
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %89, %69
  ret void
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @intel_sseu_subslice_total(%struct.sseu_dev_info*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @intel_sseu_subslices_per_slice(%struct.sseu_dev_info*, i32) #1

declare dso_local i32 @yesno(i64) #1

declare dso_local i64 @HAS_POOLED_EU(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
