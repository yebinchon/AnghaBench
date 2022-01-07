; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_validate_cmds_sorted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_validate_cmds_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32 }
%struct.drm_i915_cmd_table = type { i32, %struct.drm_i915_cmd_descriptor* }
%struct.drm_i915_cmd_descriptor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [81 x i8] c"CMD: %s [%d] command table not sorted: table=%d entry=%d cmd=0x%08X prev=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*, %struct.drm_i915_cmd_table*, i32)* @validate_cmds_sorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_cmds_sorted(%struct.intel_engine_cs* %0, %struct.drm_i915_cmd_table* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca %struct.drm_i915_cmd_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_i915_cmd_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_i915_cmd_descriptor*, align 8
  %14 = alloca i64, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %5, align 8
  store %struct.drm_i915_cmd_table* %1, %struct.drm_i915_cmd_table** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %9, align 4
  %15 = load %struct.drm_i915_cmd_table*, %struct.drm_i915_cmd_table** %6, align 8
  %16 = icmp ne %struct.drm_i915_cmd_table* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  store i32 1, i32* %4, align 4
  br label %79

21:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %74, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  %27 = load %struct.drm_i915_cmd_table*, %struct.drm_i915_cmd_table** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.drm_i915_cmd_table, %struct.drm_i915_cmd_table* %27, i64 %29
  store %struct.drm_i915_cmd_table* %30, %struct.drm_i915_cmd_table** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %70, %26
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.drm_i915_cmd_table*, %struct.drm_i915_cmd_table** %10, align 8
  %34 = getelementptr inbounds %struct.drm_i915_cmd_table, %struct.drm_i915_cmd_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %31
  %38 = load %struct.drm_i915_cmd_table*, %struct.drm_i915_cmd_table** %10, align 8
  %39 = getelementptr inbounds %struct.drm_i915_cmd_table, %struct.drm_i915_cmd_table* %38, i32 0, i32 1
  %40 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %40, i64 %42
  store %struct.drm_i915_cmd_descriptor* %43, %struct.drm_i915_cmd_descriptor** %13, align 8
  %44 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %13, align 8
  %45 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %13, align 8
  %49 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %47, %51
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %37
  %57 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %58 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %61 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %63, i32 %64, i64 %65, i64 %66)
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %56, %37
  %69 = load i64, i64* %14, align 8
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %12, align 4
  br label %31

73:                                               ; preds = %31
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %22

77:                                               ; preds = %22
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
