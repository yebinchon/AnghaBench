; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_force_nonpriv_reg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_force_nonpriv_reg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"lri\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Unexpected forcenonpriv 0x%x write from cmd %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Unexpected forcenonpriv 0x%x LRI write, value=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*, i32, i32, i8*)* @force_nonpriv_reg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @force_nonpriv_reg_handler(%struct.parser_exec_state* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parser_exec_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.intel_gvt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_i915_private*, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load %struct.parser_exec_state*, %struct.parser_exec_state** %6, align 8
  %16 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.intel_gvt*, %struct.intel_gvt** %18, align 8
  store %struct.intel_gvt* %19, %struct.intel_gvt** %10, align 8
  %20 = load %struct.parser_exec_state*, %struct.parser_exec_state** %6, align 8
  %21 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.intel_gvt*, %struct.intel_gvt** %23, align 8
  %25 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %24, i32 0, i32 0
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %25, align 8
  store %struct.drm_i915_private* %26, %struct.drm_i915_private** %14, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %4
  %31 = load %struct.parser_exec_state*, %struct.parser_exec_state** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %32, 1
  %34 = call i32 @cmd_val(%struct.parser_exec_state* %31, i32 %33)
  store i32 %34, i32* %11, align 4
  br label %41

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 (i8*, i32, ...) @gvt_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %36, i8* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %74

41:                                               ; preds = %30
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %43, align 8
  %45 = load %struct.parser_exec_state*, %struct.parser_exec_state** %6, align 8
  %46 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %44, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @RING_NOPID(i32 %52)
  %54 = call i32 @i915_mmio_reg_offset(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.intel_gvt*, %struct.intel_gvt** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @intel_gvt_in_force_nonpriv_whitelist(%struct.intel_gvt* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i8*, i32, ...) @gvt_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.parser_exec_state*, %struct.parser_exec_state** %6, align 8
  %68 = load %struct.parser_exec_state*, %struct.parser_exec_state** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @cmd_ptr(%struct.parser_exec_state* %68, i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @patch_value(%struct.parser_exec_state* %67, i32 %70, i32 %71)
  store i32 0, i32* %5, align 4
  br label %74

73:                                               ; preds = %59, %41
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %63, %35
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @gvt_err(i8*, i32, ...) #1

declare dso_local i32 @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @RING_NOPID(i32) #1

declare dso_local i32 @intel_gvt_in_force_nonpriv_whitelist(%struct.intel_gvt*, i32) #1

declare dso_local i32 @patch_value(%struct.parser_exec_state*, i32, i32) #1

declare dso_local i32 @cmd_ptr(%struct.parser_exec_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
