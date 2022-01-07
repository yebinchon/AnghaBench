; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_update_reshape_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_update_reshape_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mddev*, i64*, i64*)* }
%struct.mddev = type { i64, %struct.r10conf* }
%struct.r10conf = type { i64 }

@md_cluster_ops = common dso_local global %struct.TYPE_2__* null, align 8
@MaxSector = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @raid10_update_reshape_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_update_reshape_pos(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  %3 = alloca %struct.r10conf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %6 = load %struct.mddev*, %struct.mddev** %2, align 8
  %7 = getelementptr inbounds %struct.mddev, %struct.mddev* %6, i32 0, i32 1
  %8 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  store %struct.r10conf* %8, %struct.r10conf** %3, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @md_cluster_ops, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.mddev*, i64*, i64*)*, i32 (%struct.mddev*, i64*, i64*)** %10, align 8
  %12 = load %struct.mddev*, %struct.mddev** %2, align 8
  %13 = call i32 %11(%struct.mddev* %12, i64* %4, i64* %5)
  %14 = load %struct.mddev*, %struct.mddev** %2, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp sle i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.mddev*, %struct.mddev** %2, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.mddev*, %struct.mddev** %2, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MaxSector, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %19
  %32 = load %struct.mddev*, %struct.mddev** %2, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.r10conf*, %struct.r10conf** %3, align 8
  %36 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %39

37:                                               ; preds = %25
  %38 = call i32 @WARN_ON_ONCE(i32 1)
  br label %39

39:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
