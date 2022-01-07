; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_guc_log_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_guc_log_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_info_node* }
%struct.drm_info_node = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.drm_i915_gem_object* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@I915_MAP_WC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to pin object\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"(log data unaccessible)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_guc_log_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_guc_log_dump(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_info_node*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.drm_info_node*, %struct.drm_info_node** %13, align 8
  store %struct.drm_info_node* %14, %struct.drm_info_node** %6, align 8
  %15 = load %struct.drm_info_node*, %struct.drm_info_node** %6, align 8
  %16 = call %struct.drm_i915_private* @node_to_i915(%struct.drm_info_node* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %7, align 8
  %17 = load %struct.drm_info_node*, %struct.drm_info_node** %6, align 8
  %18 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %9, align 8
  store i32 0, i32* %11, align 4
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %27 = call i32 @HAS_GT_UC(%struct.drm_i915_private* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %123

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %39, align 8
  store %struct.drm_i915_gem_object* %40, %struct.drm_i915_gem_object** %9, align 8
  br label %61

41:                                               ; preds = %32
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %58, align 8
  store %struct.drm_i915_gem_object* %59, %struct.drm_i915_gem_object** %9, align 8
  br label %60

60:                                               ; preds = %50, %41
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %63 = icmp ne %struct.drm_i915_gem_object* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %123

65:                                               ; preds = %61
  %66 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %67 = load i32, i32* @I915_MAP_WC, align 4
  %68 = call i32* @i915_gem_object_pin_map(%struct.drm_i915_gem_object* %66, i32 %67)
  store i32* %68, i32** %10, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i64 @IS_ERR(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %75 = call i32 @seq_puts(%struct.seq_file* %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @PTR_ERR(i32* %76)
  store i32 %77, i32* %3, align 4
  br label %123

78:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %115, %78
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %83 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = udiv i64 %86, 4
  %88 = icmp ult i64 %81, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %79
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %101, i32 %107, i32 %113)
  br label %115

115:                                              ; preds = %89
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 4
  store i32 %117, i32* %11, align 4
  br label %79

118:                                              ; preds = %79
  %119 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %120 = call i32 @seq_putc(%struct.seq_file* %119, i8 signext 10)
  %121 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %122 = call i32 @i915_gem_object_unpin_map(%struct.drm_i915_gem_object* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %72, %64, %29
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.drm_i915_private* @node_to_i915(%struct.drm_info_node*) #1

declare dso_local i32 @HAS_GT_UC(%struct.drm_i915_private*) #1

declare dso_local i32* @i915_gem_object_pin_map(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @i915_gem_object_unpin_map(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
