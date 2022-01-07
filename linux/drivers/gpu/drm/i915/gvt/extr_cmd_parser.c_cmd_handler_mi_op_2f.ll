; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_op_2f.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_op_2f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_mi_op_2f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_mi_op_2f(%struct.parser_exec_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parser_exec_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %3, align 8
  %10 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %11 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %19 = call i32 @cmd_val(%struct.parser_exec_state* %18, i32 0)
  %20 = call i32 @GENMASK(i32 20, i32 19)
  %21 = and i32 %19, %20
  %22 = ashr i32 %21, 19
  %23 = shl i32 1, %22
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = call i32 @CMD_LEN(i32 1)
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %29 = call i32 @cmd_val(%struct.parser_exec_state* %28, i32 0)
  %30 = and i32 %29, 4194304
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %2, align 4
  br label %73

34:                                               ; preds = %1
  %35 = call i32 @DWORD_FIELD(i32 0, i32 20, i32 19)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 8
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %42 = call i32 @cmd_length(%struct.parser_exec_state* %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @gvt_check_valid_cmd_length(i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %2, align 4
  br label %73

49:                                               ; preds = %40
  %50 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %51 = call i32 @cmd_val(%struct.parser_exec_state* %50, i32 1)
  %52 = call i32 @GENMASK(i32 31, i32 2)
  %53 = and i32 %51, %52
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %6, align 8
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %59 = call i32 @cmd_val(%struct.parser_exec_state* %58, i32 2)
  %60 = call i32 @GENMASK(i32 15, i32 0)
  %61 = and i32 %59, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = shl i64 %63, 32
  %65 = load i64, i64* %6, align 8
  %66 = or i64 %64, %65
  store i64 %66, i64* %6, align 8
  br label %67

67:                                               ; preds = %57, %49
  %68 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @cmd_address_audit(%struct.parser_exec_state* %68, i64 %69, i32 %70, i32 0)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %67, %47, %32
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @CMD_LEN(i32) #1

declare dso_local i32 @DWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @gvt_check_valid_cmd_length(i32, i32) #1

declare dso_local i32 @cmd_length(%struct.parser_exec_state*) #1

declare dso_local i32 @cmd_address_audit(%struct.parser_exec_state*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
