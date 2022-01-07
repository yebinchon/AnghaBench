; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_sync_free_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_sync_free_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*)* @qedr_sync_free_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_sync_free_irqs(%struct.qedr_dev* %0) #0 {
  %2 = alloca %struct.qedr_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %49, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %9 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %6
  %14 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %15 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %22 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %27 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %25, %28
  store i64 %29, i64* %4, align 8
  %30 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %31 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @synchronize_irq(i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %42 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @free_irq(i32 %40, i32* %46)
  br label %48

48:                                               ; preds = %19, %13
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %6

52:                                               ; preds = %6
  %53 = load %struct.qedr_dev*, %struct.qedr_dev** %2, align 8
  %54 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  ret void
}

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
