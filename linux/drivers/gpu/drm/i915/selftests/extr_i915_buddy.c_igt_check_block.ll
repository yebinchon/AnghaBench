; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_buddy.c_igt_check_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_buddy.c_igt_check_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_buddy_mm = type { i32 }
%struct.i915_buddy_block = type { i64 }

@I915_BUDDY_ALLOCATED = common dso_local global i32 0, align 4
@I915_BUDDY_FREE = common dso_local global i32 0, align 4
@I915_BUDDY_SPLIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"block state mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"block size smaller than min size\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"block size not power of two\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"block size not aligned to min size\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"block offset not aligned to min size\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"block offset not aligned to block size\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"buddy has gone fishing\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"buddy has wrong offset\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"buddy size mismatch\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"block and its buddy are free\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_buddy_mm*, %struct.i915_buddy_block*)* @igt_check_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_check_block(%struct.i915_buddy_mm* %0, %struct.i915_buddy_block* %1) #0 {
  %3 = alloca %struct.i915_buddy_mm*, align 8
  %4 = alloca %struct.i915_buddy_block*, align 8
  %5 = alloca %struct.i915_buddy_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i915_buddy_mm* %0, %struct.i915_buddy_mm** %3, align 8
  store %struct.i915_buddy_block* %1, %struct.i915_buddy_block** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %4, align 8
  %11 = call i32 @i915_buddy_block_state(%struct.i915_buddy_block* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @I915_BUDDY_ALLOCATED, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @I915_BUDDY_FREE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @I915_BUDDY_SPLIT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %19, %15, %2
  %28 = load %struct.i915_buddy_mm*, %struct.i915_buddy_mm** %3, align 8
  %29 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %4, align 8
  %30 = call i32 @i915_buddy_block_size(%struct.i915_buddy_mm* %28, %struct.i915_buddy_block* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %4, align 8
  %32 = call i32 @i915_buddy_block_offset(%struct.i915_buddy_block* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.i915_buddy_mm*, %struct.i915_buddy_mm** %3, align 8
  %35 = getelementptr inbounds %struct.i915_buddy_mm, %struct.i915_buddy_mm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %27
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @is_power_of_2(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.i915_buddy_mm*, %struct.i915_buddy_mm** %3, align 8
  %53 = getelementptr inbounds %struct.i915_buddy_mm, %struct.i915_buddy_mm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IS_ALIGNED(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.i915_buddy_mm*, %struct.i915_buddy_mm** %3, align 8
  %64 = getelementptr inbounds %struct.i915_buddy_mm, %struct.i915_buddy_mm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @IS_ALIGNED(i32 %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @IS_ALIGNED(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %4, align 8
  %83 = call %struct.i915_buddy_block* @get_buddy(%struct.i915_buddy_block* %82)
  store %struct.i915_buddy_block* %83, %struct.i915_buddy_block** %5, align 8
  %84 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %85 = icmp ne %struct.i915_buddy_block* %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %4, align 8
  %88 = getelementptr inbounds %struct.i915_buddy_block, %struct.i915_buddy_block* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %91, %86, %81
  %96 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %97 = icmp ne %struct.i915_buddy_block* %96, null
  br i1 %97, label %98, label %133

98:                                               ; preds = %95
  %99 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %100 = call i32 @i915_buddy_block_offset(%struct.i915_buddy_block* %99)
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = xor i32 %101, %102
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %105, %98
  %110 = load %struct.i915_buddy_mm*, %struct.i915_buddy_mm** %3, align 8
  %111 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %112 = call i32 @i915_buddy_block_size(%struct.i915_buddy_mm* %110, %struct.i915_buddy_block* %111)
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %115, %109
  %120 = load %struct.i915_buddy_block*, %struct.i915_buddy_block** %5, align 8
  %121 = call i32 @i915_buddy_block_state(%struct.i915_buddy_block* %120)
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @I915_BUDDY_FREE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %128, %124, %119
  br label %133

133:                                              ; preds = %132, %95
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i32 @i915_buddy_block_state(%struct.i915_buddy_block*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @i915_buddy_block_size(%struct.i915_buddy_mm*, %struct.i915_buddy_block*) #1

declare dso_local i32 @i915_buddy_block_offset(%struct.i915_buddy_block*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.i915_buddy_block* @get_buddy(%struct.i915_buddy_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
