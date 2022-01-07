; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_free_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*)* @qedr_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_free_resources(%struct.qedr_dev* %0) #0 {
  %2 = alloca %struct.qedr_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %2, align 8
  %4 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %5 = call i64 @IS_IWARP(%struct.qedr_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %9 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @destroy_workqueue(i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %52, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %16 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %13
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %21 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %22 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %28 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @qedr_free_mem_sb(%struct.qedr_dev* %20, %struct.TYPE_7__* %26, i64 %32)
  %34 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %35 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %34, i32 0, i32 5
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (i32, i32*)*, i32 (i32, i32*)** %39, align 8
  %41 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %42 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %45 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %44, i32 0, i32 3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = call i32 %40(i32 %43, i32* %50)
  br label %52

52:                                               ; preds = %19
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %13

55:                                               ; preds = %13
  %56 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %57 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %56, i32 0, i32 3
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i32 @kfree(%struct.TYPE_7__* %58)
  %60 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %61 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = call i32 @kfree(%struct.TYPE_7__* %62)
  %64 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %65 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = call i32 @kfree(%struct.TYPE_7__* %66)
  ret void
}

declare dso_local i64 @IS_IWARP(%struct.qedr_dev*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @qedr_free_mem_sb(%struct.qedr_dev*, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
