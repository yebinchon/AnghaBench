; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_store_data_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_mi_store_data_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_mi_store_data_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_mi_store_data_imm(%struct.parser_exec_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parser_exec_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %3, align 8
  %12 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %13 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %4, align 4
  %20 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %21 = call i32 @cmd_length(%struct.parser_exec_state* %20)
  %22 = sub nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %27 = call i32 @cmd_val(%struct.parser_exec_state* %26, i32 2)
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %6, align 4
  %32 = call i32 @CMD_LEN(i32 2)
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %33 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %34 = call i32 @cmd_val(%struct.parser_exec_state* %33, i32 0)
  %35 = and i32 %34, 4194304
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

38:                                               ; preds = %1
  %39 = call i64 @DWORD_FIELD(i32 0, i32 21, i32 21)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %46 = call i32 @cmd_length(%struct.parser_exec_state* %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @gvt_check_valid_cmd_length(i32 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %2, align 4
  br label %93

53:                                               ; preds = %44
  %54 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %55 = call i32 @cmd_val(%struct.parser_exec_state* %54, i32 2)
  %56 = call i32 @GENMASK(i32 31, i32 2)
  %57 = and i32 %55, %56
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %82

61:                                               ; preds = %53
  %62 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %63 = call i32 @cmd_val(%struct.parser_exec_state* %62, i32 1)
  %64 = call i32 @GENMASK(i32 31, i32 2)
  %65 = and i32 %63, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %8, align 8
  %67 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %68 = call i32 @cmd_val(%struct.parser_exec_state* %67, i32 2)
  %69 = call i32 @GENMASK(i32 15, i32 0)
  %70 = and i32 %68, %69
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = shl i64 %72, 32
  %74 = load i64, i64* %8, align 8
  %75 = or i64 %73, %74
  store i64 %75, i64* %7, align 8
  %76 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %77 = call i32 @cmd_val(%struct.parser_exec_state* %76, i32 1)
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %61, %53
  %83 = load %struct.parser_exec_state*, %struct.parser_exec_state** %3, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = add i64 %84, %88
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @cmd_address_audit(%struct.parser_exec_state* %83, i64 %89, i32 %90, i32 0)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %82, %51, %37
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @cmd_length(%struct.parser_exec_state*) #1

declare dso_local i32 @cmd_val(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @CMD_LEN(i32) #1

declare dso_local i64 @DWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @gvt_check_valid_cmd_length(i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @cmd_address_audit(%struct.parser_exec_state*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
