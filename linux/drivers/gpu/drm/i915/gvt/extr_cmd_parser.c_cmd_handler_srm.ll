; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_srm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_srm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"srm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_srm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_srm(%struct.parser_exec_state* %0) #0 {
  %2 = alloca %struct.parser_exec_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %2, align 8
  %8 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %9 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %17 = call i32 @cmd_length(%struct.parser_exec_state* %16)
  store i32 %17, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %65, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %24 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @cmd_reg(%struct.parser_exec_state* %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cmd_reg_handler(%struct.parser_exec_state* %23, i32 %26, i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %73

34:                                               ; preds = %22
  %35 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %36 = call i32 @cmd_val(%struct.parser_exec_state* %35, i32 0)
  %37 = and i32 %36, 4194304
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i64 @cmd_gma(%struct.parser_exec_state* %40, i32 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 8
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 2
  %50 = call i32 @cmd_gma_hi(%struct.parser_exec_state* %47, i32 %49)
  %51 = shl i32 %50, 32
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %4, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %46, %39
  %56 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @cmd_address_audit(%struct.parser_exec_state* %56, i64 %57, i32 4, i32 0)
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %73

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %34
  %66 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %67 = call i64 @gmadr_dw_number(%struct.parser_exec_state* %66)
  %68 = add nsw i64 %67, 1
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %18

73:                                               ; preds = %63, %33, %18
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @cmd_length(%struct.parser_exec_state*) #1

declare dso_local i32 @cmd_reg_handler(%struct.parser_exec_state*, i32, i32, i8*) #1

declare dso_local i32 @cmd_reg(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local i64 @cmd_gma(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @cmd_gma_hi(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @cmd_address_audit(%struct.parser_exec_state*, i64, i32, i32) #1

declare dso_local i64 @gmadr_dw_number(%struct.parser_exec_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
