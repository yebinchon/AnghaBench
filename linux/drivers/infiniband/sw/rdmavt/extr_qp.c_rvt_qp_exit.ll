; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_qp_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.TYPE_2__* }

@.str = private unnamed_addr constant [33 x i8] c"QP memory leak! %u still in use\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_qp_exit(%struct.rvt_dev_info* %0) #0 {
  %2 = alloca %struct.rvt_dev_info*, align 8
  %3 = alloca i64, align 8
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %2, align 8
  %4 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %5 = call i64 @rvt_free_all_qps(%struct.rvt_dev_info* %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @rvt_pr_err(%struct.rvt_dev_info* %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %14 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %34

18:                                               ; preds = %12
  %19 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %20 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @kfree(%struct.TYPE_2__* %23)
  %25 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %26 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @free_qpn_table(i32* %28)
  %30 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %2, align 8
  %31 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @kfree(%struct.TYPE_2__* %32)
  br label %34

34:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @rvt_free_all_qps(%struct.rvt_dev_info*) #1

declare dso_local i32 @rvt_pr_err(%struct.rvt_dev_info*, i8*, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @free_qpn_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
