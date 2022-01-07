; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.hns_roce_dev*, i32)*, i32 (%struct.hns_roce_dev*)*, i32 (%struct.hns_roce_dev*)*, i32 (%struct.hns_roce_dev*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_exit(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %3 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %4 = call i32 @hns_roce_unregister_device(%struct.hns_roce_dev* %3)
  %5 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32 (%struct.hns_roce_dev*)*, i32 (%struct.hns_roce_dev*)** %8, align 8
  %10 = icmp ne i32 (%struct.hns_roce_dev*)* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32 (%struct.hns_roce_dev*)*, i32 (%struct.hns_roce_dev*)** %15, align 8
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %18 = call i32 %16(%struct.hns_roce_dev* %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %21 = call i32 @hns_roce_cleanup_bitmap(%struct.hns_roce_dev* %20)
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %23 = call i32 @hns_roce_cleanup_hem(%struct.hns_roce_dev* %22)
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %30 = call i32 @hns_roce_cmd_use_polling(%struct.hns_roce_dev* %29)
  br label %31

31:                                               ; preds = %28, %19
  %32 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %33 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32 (%struct.hns_roce_dev*)*, i32 (%struct.hns_roce_dev*)** %35, align 8
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %38 = call i32 %36(%struct.hns_roce_dev* %37)
  %39 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %40 = call i32 @hns_roce_cmd_cleanup(%struct.hns_roce_dev* %39)
  %41 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %42 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (%struct.hns_roce_dev*)*, i32 (%struct.hns_roce_dev*)** %44, align 8
  %46 = icmp ne i32 (%struct.hns_roce_dev*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %31
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %49 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32 (%struct.hns_roce_dev*)*, i32 (%struct.hns_roce_dev*)** %51, align 8
  %53 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %54 = call i32 %52(%struct.hns_roce_dev* %53)
  br label %55

55:                                               ; preds = %47, %31
  %56 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.hns_roce_dev*, i32)*, i32 (%struct.hns_roce_dev*, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.hns_roce_dev*, i32)* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %64 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.hns_roce_dev*, i32)*, i32 (%struct.hns_roce_dev*, i32)** %66, align 8
  %68 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %69 = call i32 %67(%struct.hns_roce_dev* %68, i32 0)
  br label %70

70:                                               ; preds = %62, %55
  ret void
}

declare dso_local i32 @hns_roce_unregister_device(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_bitmap(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cleanup_hem(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cmd_use_polling(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_cmd_cleanup(%struct.hns_roce_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
