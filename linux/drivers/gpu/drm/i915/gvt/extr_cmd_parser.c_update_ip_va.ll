; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_update_ip_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_update_ip_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser_exec_state = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@RING_BUFFER_INSTRUCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parser_exec_state*)* @update_ip_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ip_va(%struct.parser_exec_state* %0) #0 {
  %2 = alloca %struct.parser_exec_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.parser_exec_state* %0, %struct.parser_exec_state** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %6 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %9 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %113

16:                                               ; preds = %1
  %17 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %18 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RING_BUFFER_INSTRUCTION, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %107

22:                                               ; preds = %16
  %23 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %24 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %27 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  store i64 %29, i64* %4, align 8
  %30 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %31 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %34 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %32, %35
  br i1 %36, label %37, label %91

37:                                               ; preds = %22
  %38 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %39 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %42 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %47 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %53 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %56 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  store i64 %58, i64* %3, align 8
  br label %90

59:                                               ; preds = %45, %37
  %60 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %61 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %64 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp uge i64 %62, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %59
  %68 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %69 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %72 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ule i64 %70, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %78 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub i64 %76, %79
  %81 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %82 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %85 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = sub i64 %83, %86
  %88 = add i64 %80, %87
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %75, %67, %59
  br label %90

90:                                               ; preds = %89, %51
  br label %99

91:                                               ; preds = %22
  %92 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %93 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %96 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %94, %97
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %91, %90
  %100 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %101 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %102, %103
  %105 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %106 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %105, i32 0, i32 7
  store i64 %104, i64* %106, align 8
  br label %113

107:                                              ; preds = %16
  %108 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %109 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.parser_exec_state*, %struct.parser_exec_state** %2, align 8
  %112 = getelementptr inbounds %struct.parser_exec_state, %struct.parser_exec_state* %111, i32 0, i32 7
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %15, %107, %99
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
