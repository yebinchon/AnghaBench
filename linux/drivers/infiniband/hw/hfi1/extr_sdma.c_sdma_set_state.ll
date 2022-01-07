; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_set_state_action = type { i64, i64, i64, i64, i64, i64 }
%struct.sdma_engine = type { %struct.sdma_state }
%struct.sdma_state = type { i64, i64, i32, i32, i32 }

@sdma_action_table = common dso_local global %struct.sdma_set_state_action* null, align 8
@sdma_state_names = common dso_local global i32* null, align 8
@sdma_state_s99_running = common dso_local global i32 0, align 4
@SDMA_SENDCTRL_OP_ENABLE = common dso_local global i32 0, align 4
@SDMA_SENDCTRL_OP_INTENABLE = common dso_local global i32 0, align 4
@SDMA_SENDCTRL_OP_HALT = common dso_local global i32 0, align 4
@SDMA_SENDCTRL_OP_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*, i32)* @sdma_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_set_state(%struct.sdma_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.sdma_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdma_state*, align 8
  %6 = alloca %struct.sdma_set_state_action*, align 8
  %7 = alloca i32, align 4
  store %struct.sdma_engine* %0, %struct.sdma_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %9 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %8, i32 0, i32 0
  store %struct.sdma_state* %9, %struct.sdma_state** %5, align 8
  %10 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** @sdma_action_table, align 8
  store %struct.sdma_set_state_action* %10, %struct.sdma_set_state_action** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %12 = load i32*, i32** @sdma_state_names, align 8
  %13 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %14 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @sdma_state_names, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @trace_hfi1_sdma_state(%struct.sdma_engine* %11, i32 %17, i32 %22)
  %24 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %25 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %28 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %30 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %33 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %37 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %39 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @sdma_state_s99_running, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ne i64 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %2
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @sdma_state_s99_running, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %50 = call i32 @sdma_flush(%struct.sdma_engine* %49)
  br label %51

51:                                               ; preds = %48, %44, %2
  %52 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %52, i64 %54
  %56 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* @SDMA_SENDCTRL_OP_ENABLE, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %51
  %64 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %64, i64 %66
  %68 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = load i32, i32* @SDMA_SENDCTRL_OP_INTENABLE, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %63
  %76 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %76, i64 %78
  %80 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32, i32* @SDMA_SENDCTRL_OP_HALT, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %83, %75
  %88 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %88, i64 %90
  %92 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @SDMA_SENDCTRL_OP_CLEANUP, align 4
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %95, %87
  %100 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %101 = load i32, i32* %4, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %100, i64 %102
  %104 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %109 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %108, i32 0, i32 4
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %99
  %111 = load %struct.sdma_set_state_action*, %struct.sdma_set_state_action** %6, align 8
  %112 = load i32, i32* %4, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %111, i64 %113
  %115 = getelementptr inbounds %struct.sdma_set_state_action, %struct.sdma_set_state_action* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %120 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %119, i32 0, i32 4
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %110
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %124 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.sdma_engine*, %struct.sdma_engine** %3, align 8
  %126 = load %struct.sdma_state*, %struct.sdma_state** %5, align 8
  %127 = getelementptr inbounds %struct.sdma_state, %struct.sdma_state* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @sdma_sendctrl(%struct.sdma_engine* %125, i32 %128)
  ret void
}

declare dso_local i32 @trace_hfi1_sdma_state(%struct.sdma_engine*, i32, i32) #1

declare dso_local i32 @sdma_flush(%struct.sdma_engine*) #1

declare dso_local i32 @sdma_sendctrl(%struct.sdma_engine*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
