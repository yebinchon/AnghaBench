; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_get_cmd_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_get_cmd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_info = type { i32 }
%struct.intel_gvt = type { i32 }

@INVALID_OP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_info* (%struct.intel_gvt*, i64, i32)* @get_cmd_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_info* @get_cmd_info(%struct.intel_gvt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.cmd_info*, align 8
  %5 = alloca %struct.intel_gvt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @get_opcode(i64 %9, i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @INVALID_OP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.cmd_info* null, %struct.cmd_info** %4, align 8
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call %struct.cmd_info* @find_cmd_entry(%struct.intel_gvt* %17, i64 %18, i32 %19)
  store %struct.cmd_info* %20, %struct.cmd_info** %4, align 8
  br label %21

21:                                               ; preds = %16, %15
  %22 = load %struct.cmd_info*, %struct.cmd_info** %4, align 8
  ret %struct.cmd_info* %22
}

declare dso_local i64 @get_opcode(i64, i32) #1

declare dso_local %struct.cmd_info* @find_cmd_entry(%struct.intel_gvt*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
