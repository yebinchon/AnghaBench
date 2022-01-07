; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_dereg_clean_qps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_dereg_clean_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_mregion = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rvt_dev_info = type { i32 }

@rvt_dereg_clean_qp_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_mregion*)* @rvt_dereg_clean_qps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvt_dereg_clean_qps(%struct.rvt_mregion* %0) #0 {
  %2 = alloca %struct.rvt_mregion*, align 8
  %3 = alloca %struct.rvt_dev_info*, align 8
  store %struct.rvt_mregion* %0, %struct.rvt_mregion** %2, align 8
  %4 = load %struct.rvt_mregion*, %struct.rvt_mregion** %2, align 8
  %5 = getelementptr inbounds %struct.rvt_mregion, %struct.rvt_mregion* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %8)
  store %struct.rvt_dev_info* %9, %struct.rvt_dev_info** %3, align 8
  %10 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %11 = load %struct.rvt_mregion*, %struct.rvt_mregion** %2, align 8
  %12 = ptrtoint %struct.rvt_mregion* %11 to i32
  %13 = load i32, i32* @rvt_dereg_clean_qp_cb, align 4
  %14 = call i32 @rvt_qp_iter(%struct.rvt_dev_info* %10, i32 %12, i32 %13)
  ret void
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @rvt_qp_iter(%struct.rvt_dev_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
