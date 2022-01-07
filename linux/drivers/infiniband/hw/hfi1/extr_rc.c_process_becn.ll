; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_process_becn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_process_becn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, %struct.cca_timer* }
%struct.cca_timer = type { i64, i32 }
%struct.cc_state = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@OPA_MAX_SLS = common dso_local global i64 0, align 8
@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_becn(%struct.hfi1_pportdata* %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.hfi1_pportdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.cca_timer*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.cc_state*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @OPA_MAX_SLS, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %132

26:                                               ; preds = %6
  %27 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %28 = call %struct.cc_state* @get_cc_state(%struct.hfi1_pportdata* %27)
  store %struct.cc_state* %28, %struct.cc_state** %19, align 8
  %29 = load %struct.cc_state*, %struct.cc_state** %19, align 8
  %30 = icmp ne %struct.cc_state* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %132

32:                                               ; preds = %26
  %33 = load %struct.cc_state*, %struct.cc_state** %19, align 8
  %34 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %17, align 8
  %37 = load %struct.cc_state*, %struct.cc_state** %19, align 8
  %38 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %15, align 8
  %45 = load %struct.cc_state*, %struct.cc_state** %19, align 8
  %46 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %16, align 8
  %53 = load %struct.cc_state*, %struct.cc_state** %19, align 8
  %54 = getelementptr inbounds %struct.cc_state, %struct.cc_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %18, align 8
  %61 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %62 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %61, i32 0, i32 0
  %63 = load i64, i64* %20, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %66 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %65, i32 0, i32 1
  %67 = load %struct.cca_timer*, %struct.cca_timer** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.cca_timer, %struct.cca_timer* %67, i64 %68
  store %struct.cca_timer* %69, %struct.cca_timer** %13, align 8
  %70 = load %struct.cca_timer*, %struct.cca_timer** %13, align 8
  %71 = getelementptr inbounds %struct.cca_timer, %struct.cca_timer* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %17, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %32
  %76 = load %struct.cca_timer*, %struct.cca_timer** %13, align 8
  %77 = getelementptr inbounds %struct.cca_timer, %struct.cca_timer* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %15, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i64, i64* %17, align 8
  %82 = icmp sle i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i64, i64* %15, align 8
  %85 = load %struct.cca_timer*, %struct.cca_timer** %13, align 8
  %86 = getelementptr inbounds %struct.cca_timer, %struct.cca_timer* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %93

89:                                               ; preds = %75
  %90 = load i64, i64* %17, align 8
  %91 = load %struct.cca_timer*, %struct.cca_timer** %13, align 8
  %92 = getelementptr inbounds %struct.cca_timer, %struct.cca_timer* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %95 = call i32 @set_link_ipg(%struct.hfi1_pportdata* %94)
  br label %96

96:                                               ; preds = %93, %32
  %97 = load %struct.cca_timer*, %struct.cca_timer** %13, align 8
  %98 = getelementptr inbounds %struct.cca_timer, %struct.cca_timer* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %14, align 8
  %100 = load %struct.cca_timer*, %struct.cca_timer** %13, align 8
  %101 = getelementptr inbounds %struct.cca_timer, %struct.cca_timer* %100, i32 0, i32 1
  %102 = call i32 @hrtimer_active(i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %96
  %105 = load i64, i64* %16, align 8
  %106 = mul nsw i64 1024, %105
  store i64 %106, i64* %21, align 8
  %107 = load %struct.cca_timer*, %struct.cca_timer** %13, align 8
  %108 = getelementptr inbounds %struct.cca_timer, %struct.cca_timer* %107, i32 0, i32 1
  %109 = load i64, i64* %21, align 8
  %110 = call i32 @ns_to_ktime(i64 %109)
  %111 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %112 = call i32 @hrtimer_start(i32* %108, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %104, %96
  %114 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %115 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %114, i32 0, i32 0
  %116 = load i64, i64* %20, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load i64, i64* %18, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %113
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %18, align 8
  %123 = icmp uge i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %7, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @log_cca_event(%struct.hfi1_pportdata* %125, i64 %126, i32 %127, i32 %128, i32 %129, i64 %130)
  br label %132

132:                                              ; preds = %25, %31, %124, %120, %113
  ret void
}

declare dso_local %struct.cc_state* @get_cc_state(%struct.hfi1_pportdata*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_link_ipg(%struct.hfi1_pportdata*) #1

declare dso_local i32 @hrtimer_active(i32*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @log_cca_event(%struct.hfi1_pportdata*, i64, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
