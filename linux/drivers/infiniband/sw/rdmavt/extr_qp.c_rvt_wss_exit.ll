; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_wss_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_wss_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { %struct.rvt_wss* }
%struct.rvt_wss = type { %struct.rvt_wss* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_wss_exit(%struct.rvt_dev_info* %0) #0 {
  %2 = alloca %struct.rvt_dev_info*, align 8
  %3 = alloca %struct.rvt_wss*, align 8
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %2, align 8
  %4 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %5 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %4, i32 0, i32 0
  %6 = load %struct.rvt_wss*, %struct.rvt_wss** %5, align 8
  store %struct.rvt_wss* %6, %struct.rvt_wss** %3, align 8
  %7 = load %struct.rvt_wss*, %struct.rvt_wss** %3, align 8
  %8 = icmp ne %struct.rvt_wss* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.rvt_wss*, %struct.rvt_wss** %3, align 8
  %12 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %11, i32 0, i32 0
  %13 = load %struct.rvt_wss*, %struct.rvt_wss** %12, align 8
  %14 = call i32 @kfree(%struct.rvt_wss* %13)
  %15 = load %struct.rvt_wss*, %struct.rvt_wss** %3, align 8
  %16 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %15, i32 0, i32 0
  store %struct.rvt_wss* null, %struct.rvt_wss** %16, align 8
  %17 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %18 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %17, i32 0, i32 0
  %19 = load %struct.rvt_wss*, %struct.rvt_wss** %18, align 8
  %20 = call i32 @kfree(%struct.rvt_wss* %19)
  %21 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %22 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %21, i32 0, i32 0
  store %struct.rvt_wss* null, %struct.rvt_wss** %22, align 8
  br label %23

23:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @kfree(%struct.rvt_wss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
