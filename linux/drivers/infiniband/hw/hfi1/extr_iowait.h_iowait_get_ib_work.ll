; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_iowait.h_iowait_get_ib_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_iowait.h_iowait_get_ib_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iowait_work = type { i32 }
%struct.iowait = type { %struct.iowait_work* }

@IOWAIT_IB_SE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iowait_work* (%struct.iowait*)* @iowait_get_ib_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iowait_work* @iowait_get_ib_work(%struct.iowait* %0) #0 {
  %2 = alloca %struct.iowait*, align 8
  store %struct.iowait* %0, %struct.iowait** %2, align 8
  %3 = load %struct.iowait*, %struct.iowait** %2, align 8
  %4 = getelementptr inbounds %struct.iowait, %struct.iowait* %3, i32 0, i32 0
  %5 = load %struct.iowait_work*, %struct.iowait_work** %4, align 8
  %6 = load i64, i64* @IOWAIT_IB_SE, align 8
  %7 = getelementptr inbounds %struct.iowait_work, %struct.iowait_work* %5, i64 %6
  ret %struct.iowait_work* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
