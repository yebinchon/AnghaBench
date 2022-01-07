; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_message_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_message_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp_message = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@MSG_DATA_MIN_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp_message*)* @tegra_bpmp_message_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_message_valid(%struct.tegra_bpmp_message* %0) #0 {
  %2 = alloca %struct.tegra_bpmp_message*, align 8
  store %struct.tegra_bpmp_message* %0, %struct.tegra_bpmp_message** %2, align 8
  %3 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %2, align 8
  %4 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MSG_DATA_MIN_SZ, align 8
  %8 = icmp sle i64 %6, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MSG_DATA_MIN_SZ, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %9
  %17 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %2, align 8
  %24 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %22, %16
  %29 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %2, align 8
  %30 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.tegra_bpmp_message*, %struct.tegra_bpmp_message** %2, align 8
  %36 = getelementptr inbounds %struct.tegra_bpmp_message, %struct.tegra_bpmp_message* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %34, %28
  %41 = phi i1 [ true, %28 ], [ %39, %34 ]
  br label %42

42:                                               ; preds = %40, %22, %9, %1
  %43 = phi i1 [ false, %22 ], [ false, %9 ], [ false, %1 ], [ %41, %40 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
