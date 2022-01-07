; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_add_rnr_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_add_rnr_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, i32 }

@RVT_S_WAIT_RNR = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_PINNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_add_rnr_timer(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %7 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %6, i32 0, i32 2
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load i32, i32* @RVT_S_WAIT_RNR, align 4
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @rvt_aeth_to_usec(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @trace_rvt_rnrnak_add(%struct.rvt_qp* %16, i32 %17)
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %20 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 1000, %21
  %23 = call i32 @ns_to_ktime(i32 %22)
  %24 = load i32, i32* @HRTIMER_MODE_REL_PINNED, align 4
  %25 = call i32 @hrtimer_start(i32* %20, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rvt_aeth_to_usec(i32) #1

declare dso_local i32 @trace_rvt_rnrnak_add(%struct.rvt_qp*, i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
