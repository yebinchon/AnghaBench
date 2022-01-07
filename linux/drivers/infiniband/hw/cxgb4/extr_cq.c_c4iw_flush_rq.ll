; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_flush_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_c4iw_flush_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.t4_cq = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"wq %p cq %p rq.in_use %u skip count %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_flush_rq(%struct.t4_wq* %0, %struct.t4_cq* %1, i32 %2) #0 {
  %4 = alloca %struct.t4_wq*, align 8
  %5 = alloca %struct.t4_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.t4_wq* %0, %struct.t4_wq** %4, align 8
  store %struct.t4_cq* %1, %struct.t4_cq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %10 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %16 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %17 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %18 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.t4_wq* %15, %struct.t4_cq* %16, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %27, %3
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %29 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %30 = call i32 @insert_recv_cqe(%struct.t4_wq* %28, %struct.t4_cq* %29, i32 0)
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %23

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @pr_debug(i8*, %struct.t4_wq*, %struct.t4_cq*, i32, i32) #1

declare dso_local i32 @insert_recv_cqe(%struct.t4_wq*, %struct.t4_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
