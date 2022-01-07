; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_init_hash_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_cmd_parser.c_init_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 }
%struct.drm_i915_cmd_table = type { i32, %struct.drm_i915_cmd_descriptor* }
%struct.drm_i915_cmd_descriptor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cmd_node = type { i32, %struct.drm_i915_cmd_descriptor* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*, %struct.drm_i915_cmd_table*, i32)* @init_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hash_table(%struct.intel_engine_cs* %0, %struct.drm_i915_cmd_table* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_engine_cs*, align 8
  %6 = alloca %struct.drm_i915_cmd_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_i915_cmd_table*, align 8
  %11 = alloca %struct.drm_i915_cmd_descriptor*, align 8
  %12 = alloca %struct.cmd_node*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %5, align 8
  store %struct.drm_i915_cmd_table* %1, %struct.drm_i915_cmd_table** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %14 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @hash_init(i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %65, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  %22 = load %struct.drm_i915_cmd_table*, %struct.drm_i915_cmd_table** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.drm_i915_cmd_table, %struct.drm_i915_cmd_table* %22, i64 %24
  store %struct.drm_i915_cmd_table* %25, %struct.drm_i915_cmd_table** %10, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %61, %21
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.drm_i915_cmd_table*, %struct.drm_i915_cmd_table** %10, align 8
  %29 = getelementptr inbounds %struct.drm_i915_cmd_table, %struct.drm_i915_cmd_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %26
  %33 = load %struct.drm_i915_cmd_table*, %struct.drm_i915_cmd_table** %10, align 8
  %34 = getelementptr inbounds %struct.drm_i915_cmd_table, %struct.drm_i915_cmd_table* %33, i32 0, i32 1
  %35 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %35, i64 %37
  store %struct.drm_i915_cmd_descriptor* %38, %struct.drm_i915_cmd_descriptor** %11, align 8
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.cmd_node* @kmalloc(i32 16, i32 %39)
  store %struct.cmd_node* %40, %struct.cmd_node** %12, align 8
  %41 = load %struct.cmd_node*, %struct.cmd_node** %12, align 8
  %42 = icmp ne %struct.cmd_node* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %69

46:                                               ; preds = %32
  %47 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %11, align 8
  %48 = load %struct.cmd_node*, %struct.cmd_node** %12, align 8
  %49 = getelementptr inbounds %struct.cmd_node, %struct.cmd_node* %48, i32 0, i32 1
  store %struct.drm_i915_cmd_descriptor* %47, %struct.drm_i915_cmd_descriptor** %49, align 8
  %50 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %5, align 8
  %51 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cmd_node*, %struct.cmd_node** %12, align 8
  %54 = getelementptr inbounds %struct.cmd_node, %struct.cmd_node* %53, i32 0, i32 0
  %55 = load %struct.drm_i915_cmd_descriptor*, %struct.drm_i915_cmd_descriptor** %11, align 8
  %56 = getelementptr inbounds %struct.drm_i915_cmd_descriptor, %struct.drm_i915_cmd_descriptor* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cmd_header_key(i32 %58)
  %60 = call i32 @hash_add(i32 %52, i32* %54, i32 %59)
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %26

64:                                               ; preds = %26
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %17

68:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @hash_init(i32) #1

declare dso_local %struct.cmd_node* @kmalloc(i32, i32) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @cmd_header_key(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
