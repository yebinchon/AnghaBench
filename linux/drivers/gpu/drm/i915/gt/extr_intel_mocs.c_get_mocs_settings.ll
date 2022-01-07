; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_get_mocs_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_get_mocs_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_mocs_table = type { i32, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32 }

@tigerlake_mocs_table = common dso_local global i8* null, align 8
@GEN11_NUM_MOCS_ENTRIES = common dso_local global i8* null, align 8
@icelake_mocs_table = common dso_local global i8* null, align 8
@skylake_mocs_table = common dso_local global i8* null, align 8
@GEN9_NUM_MOCS_ENTRIES = common dso_local global i8* null, align 8
@broxton_mocs_table = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Platform that should have a MOCS table does not.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_gt*, %struct.drm_i915_mocs_table*)* @get_mocs_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mocs_settings(%struct.intel_gt* %0, %struct.drm_i915_mocs_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca %struct.drm_i915_mocs_table*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store %struct.drm_i915_mocs_table* %1, %struct.drm_i915_mocs_table** %5, align 8
  %9 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %10 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %9, i32 0, i32 0
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %13 = call i32 @INTEL_GEN(%struct.drm_i915_private* %12)
  %14 = icmp sge i32 %13, 12
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i8*, i8** @tigerlake_mocs_table, align 8
  %17 = call i8* @ARRAY_SIZE(i8* %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %20 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @tigerlake_mocs_table, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_2__*
  %23 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %24 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %23, i32 0, i32 1
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load i8*, i8** @GEN11_NUM_MOCS_ENTRIES, align 8
  %26 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %27 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  store i32 1, i32* %7, align 4
  br label %92

28:                                               ; preds = %2
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %30 = call i64 @IS_GEN(%struct.drm_i915_private* %29, i32 11)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i8*, i8** @icelake_mocs_table, align 8
  %34 = call i8* @ARRAY_SIZE(i8* %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %37 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** @icelake_mocs_table, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_2__*
  %40 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %41 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %40, i32 0, i32 1
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %41, align 8
  %42 = load i8*, i8** @GEN11_NUM_MOCS_ENTRIES, align 8
  %43 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %44 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  store i32 1, i32* %7, align 4
  br label %91

45:                                               ; preds = %28
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %47 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %51 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %49, %45
  %54 = load i8*, i8** @skylake_mocs_table, align 8
  %55 = call i8* @ARRAY_SIZE(i8* %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %58 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i8*, i8** @GEN9_NUM_MOCS_ENTRIES, align 8
  %60 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %61 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** @skylake_mocs_table, align 8
  %63 = bitcast i8* %62 to %struct.TYPE_2__*
  %64 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %65 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %64, i32 0, i32 1
  store %struct.TYPE_2__* %63, %struct.TYPE_2__** %65, align 8
  store i32 1, i32* %7, align 4
  br label %90

66:                                               ; preds = %49
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %68 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i8*, i8** @broxton_mocs_table, align 8
  %72 = call i8* @ARRAY_SIZE(i8* %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %75 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** @GEN9_NUM_MOCS_ENTRIES, align 8
  %77 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %78 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** @broxton_mocs_table, align 8
  %80 = bitcast i8* %79 to %struct.TYPE_2__*
  %81 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %82 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %81, i32 0, i32 1
  store %struct.TYPE_2__* %80, %struct.TYPE_2__** %82, align 8
  store i32 1, i32* %7, align 4
  br label %89

83:                                               ; preds = %66
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %85 = call i32 @INTEL_GEN(%struct.drm_i915_private* %84)
  %86 = icmp sge i32 %85, 9
  %87 = zext i1 %86 to i32
  %88 = call i32 @WARN_ONCE(i32 %87, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %89

89:                                               ; preds = %83, %70
  br label %90

90:                                               ; preds = %89, %53
  br label %91

91:                                               ; preds = %90, %32
  br label %92

92:                                               ; preds = %91, %15
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %94 = call i64 @IS_GEN(%struct.drm_i915_private* %93, i32 9)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %92
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %120, %96
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %100 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %97
  %104 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %105 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @L3_ESC(i32 1)
  %113 = call i32 @L3_SCC(i32 7)
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = call i64 @WARN_ON(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %126

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %97

123:                                              ; preds = %97
  br label %124

124:                                              ; preds = %123, %92
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %124, %118
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @L3_ESC(i32) #1

declare dso_local i32 @L3_SCC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
