; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c_hns_roce_cmd_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c_hns_roce_cmd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.hns_roce_cmd_context* }
%struct.hns_roce_cmd_context = type { i64, i32, i32, i32 }

@HNS_ROCE_CMD_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_cmd_event(%struct.hns_roce_dev* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns_roce_cmd_context*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %14, %18
  %20 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %13, i64 %19
  store %struct.hns_roce_cmd_context* %20, %struct.hns_roce_cmd_context** %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %9, align 8
  %23 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %45

27:                                               ; preds = %4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @HNS_ROCE_CMD_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  %37 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %9, align 8
  %38 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %9, align 8
  %41 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.hns_roce_cmd_context*, %struct.hns_roce_cmd_context** %9, align 8
  %43 = getelementptr inbounds %struct.hns_roce_cmd_context, %struct.hns_roce_cmd_context* %42, i32 0, i32 1
  %44 = call i32 @complete(i32* %43)
  br label %45

45:                                               ; preds = %35, %26
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
