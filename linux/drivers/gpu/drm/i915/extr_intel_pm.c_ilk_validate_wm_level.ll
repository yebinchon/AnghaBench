; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_validate_wm_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_validate_wm_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ilk_wm_maximums = type { i64, i64, i64 }
%struct.intel_wm_level = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Primary WM%d too large %u (max %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Sprite WM%d too large %u (max %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Cursor WM%d too large %u (max %u)\0A\00", align 1
@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ilk_wm_maximums*, %struct.intel_wm_level*)* @ilk_validate_wm_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ilk_validate_wm_level(i32 %0, %struct.ilk_wm_maximums* %1, %struct.intel_wm_level* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ilk_wm_maximums*, align 8
  %7 = alloca %struct.intel_wm_level*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ilk_wm_maximums* %1, %struct.ilk_wm_maximums** %6, align 8
  store %struct.intel_wm_level* %2, %struct.intel_wm_level** %7, align 8
  %9 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %10 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %142

14:                                               ; preds = %3
  %15 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %16 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %19 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %14
  %23 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %24 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %27 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %32 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %35 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %33, %36
  br label %38

38:                                               ; preds = %30, %22, %14
  %39 = phi i1 [ false, %22 ], [ false, %14 ], [ %37, %30 ]
  %40 = zext i1 %39 to i32
  %41 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %42 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %44 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %140

48:                                               ; preds = %38
  %49 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %50 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %140, label %53

53:                                               ; preds = %48
  %54 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %55 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %58 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %64 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %67 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %62, i64 %65, i64 %68)
  br label %70

70:                                               ; preds = %61, %53
  %71 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %72 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %75 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %81 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %84 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %79, i64 %82, i64 %85)
  br label %87

87:                                               ; preds = %78, %70
  %88 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %89 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %92 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %98 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %101 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %96, i64 %99, i64 %102)
  br label %104

104:                                              ; preds = %95, %87
  %105 = load i32, i32* @u32, align 4
  %106 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %107 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %110 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i8* @min_t(i32 %105, i64 %108, i64 %111)
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %115 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @u32, align 4
  %117 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %118 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %121 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @min_t(i32 %116, i64 %119, i64 %122)
  %124 = ptrtoint i8* %123 to i64
  %125 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %126 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %125, i32 0, i32 2
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* @u32, align 4
  %128 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %129 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %6, align 8
  %132 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = call i8* @min_t(i32 %127, i64 %130, i64 %133)
  %135 = ptrtoint i8* %134 to i64
  %136 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %137 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %136, i32 0, i32 3
  store i64 %135, i64* %137, align 8
  %138 = load %struct.intel_wm_level*, %struct.intel_wm_level** %7, align 8
  %139 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  br label %140

140:                                              ; preds = %104, %48, %38
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %140, %13
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i64, i64) #1

declare dso_local i8* @min_t(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
