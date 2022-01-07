; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_lrr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_cmd_handler_lrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EBADRQC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"lrr-src\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"lrr-dst\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parser_exec_state*)* @cmd_handler_lrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_handler_lrr(%struct.parser_exec_state* %0) #0 {
  %2 = alloca %struct.parser_exec_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %7 = call i32 @cmd_length(%struct.parser_exec_state* %6)
  store i32 %7, i32* %5, align 4
  store i32 1, i32* %3, align 4
  br label %8

8:                                                ; preds = %71, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %74

12:                                               ; preds = %8
  %13 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %14 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_BROADWELL(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %12
  %23 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @cmd_reg_inhibit(%struct.parser_exec_state* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i64 @cmd_reg_inhibit(%struct.parser_exec_state* %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %22
  %34 = load i32, i32* @EBADRQC, align 4
  %35 = sub nsw i32 0, %34
  br label %37

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ 0, %36 ]
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %12
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %74

45:                                               ; preds = %41
  %46 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %47 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @cmd_reg(%struct.parser_exec_state* %47, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @cmd_reg_handler(%struct.parser_exec_state* %46, i32 %49, i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %74

57:                                               ; preds = %45
  %58 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %59 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @cmd_reg(%struct.parser_exec_state* %59, i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @cmd_reg_handler(%struct.parser_exec_state* %58, i32 %62, i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %74

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %3, align 4
  br label %8

74:                                               ; preds = %69, %56, %44, %8
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @cmd_length(%struct.parser_exec_state*) #1

declare dso_local i64 @IS_BROADWELL(i32) #1

declare dso_local i64 @cmd_reg_inhibit(%struct.parser_exec_state*, i32) #1

declare dso_local i32 @cmd_reg_handler(%struct.parser_exec_state*, i32, i32, i8*) #1

declare dso_local i32 @cmd_reg(%struct.parser_exec_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
