; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_ll2_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_ll2_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i64, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*)*, i32 (i32, i64)*, i32 (i32, i64)* }

@QED_LL2_UNUSED_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to terminate LL2 connection (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*)* @qedr_ll2_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_ll2_stop(%struct.qedr_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedr_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %3, align 8
  %5 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %6 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QED_LL2_UNUSED_HANDLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %13 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %15, align 8
  %17 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %18 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %21 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %16(i32 %19, i32 %22, i32* null)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %25 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32 (i32, i64)*, i32 (i32, i64)** %27, align 8
  %29 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %30 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %33 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 %28(i32 %31, i64 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %11
  %39 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @DP_ERR(%struct.qedr_dev* %39, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %11
  %43 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %44 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32 (i32, i64)*, i32 (i32, i64)** %46, align 8
  %48 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %49 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %52 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 %47(i32 %50, i64 %53)
  %55 = load i64, i64* @QED_LL2_UNUSED_HANDLE, align 8
  %56 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %57 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %42, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
