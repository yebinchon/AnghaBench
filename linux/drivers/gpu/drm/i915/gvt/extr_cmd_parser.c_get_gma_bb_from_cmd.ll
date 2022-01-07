; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_get_gma_bb_from_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_get_gma_bb_from_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { %struct.intel_vgpu* }
%struct.intel_vgpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"invalid gma bytes %d\0A\00", align 1
@INTEL_GVT_INVALID_ADDR = common dso_local global i64 0, align 8
@BATCH_BUFFER_ADDR_MASK = common dso_local global i64 0, align 8
@BATCH_BUFFER_ADDR_HIGH_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parser_exec_state*, i32)* @get_gma_bb_from_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_gma_bb_from_cmd(%struct.parser_exec_state* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.parser_exec_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.intel_vgpu*, align 8
  %10 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %12 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %11, i32 0, i32 0
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %12, align 8
  store %struct.intel_vgpu* %13, %struct.intel_vgpu** %9, align 8
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 8
  br label %25

25:                                               ; preds = %22, %2
  %26 = phi i1 [ false, %2 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i64, i64* @INTEL_GVT_INVALID_ADDR, align 8
  store i64 %33, i64* %3, align 8
  br label %57

34:                                               ; preds = %25
  %35 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @cmd_val(%struct.parser_exec_state* %35, i32 %36)
  %38 = load i64, i64* @BATCH_BUFFER_ADDR_MASK, align 8
  %39 = and i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %6, align 8
  br label %55

44:                                               ; preds = %34
  %45 = load %struct.parser_exec_state*, %struct.parser_exec_state** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i64 @cmd_val(%struct.parser_exec_state* %45, i32 %47)
  %49 = load i64, i64* @BATCH_BUFFER_ADDR_HIGH_MASK, align 8
  %50 = and i64 %48, %49
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = shl i64 %51, 32
  %53 = load i64, i64* %8, align 8
  %54 = or i64 %52, %53
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %44, %42
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %55, %30
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32) #1

declare dso_local i64 @cmd_val(%struct.parser_exec_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
