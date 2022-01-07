; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_iowait.h_iowait_ioww_to_iow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_iowait.h_iowait_ioww_to_iow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iowait = type { i32 }
%struct.iowait_work = type { %struct.iowait* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iowait* (%struct.iowait_work*)* @iowait_ioww_to_iow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iowait* @iowait_ioww_to_iow(%struct.iowait_work* %0) #0 {
  %2 = alloca %struct.iowait*, align 8
  %3 = alloca %struct.iowait_work*, align 8
  store %struct.iowait_work* %0, %struct.iowait_work** %3, align 8
  %4 = load %struct.iowait_work*, %struct.iowait_work** %3, align 8
  %5 = call i64 @likely(%struct.iowait_work* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.iowait_work*, %struct.iowait_work** %3, align 8
  %9 = getelementptr inbounds %struct.iowait_work, %struct.iowait_work* %8, i32 0, i32 0
  %10 = load %struct.iowait*, %struct.iowait** %9, align 8
  store %struct.iowait* %10, %struct.iowait** %2, align 8
  br label %12

11:                                               ; preds = %1
  store %struct.iowait* null, %struct.iowait** %2, align 8
  br label %12

12:                                               ; preds = %11, %7
  %13 = load %struct.iowait*, %struct.iowait** %2, align 8
  ret %struct.iowait* %13
}

declare dso_local i64 @likely(%struct.iowait_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
