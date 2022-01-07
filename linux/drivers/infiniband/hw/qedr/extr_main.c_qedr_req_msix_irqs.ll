; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_req_msix_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_req_msix_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Interrupt mismatch: %d CNQ queues > %d MSI-x vectors\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@qedr_irq_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Request cnq %d irq failed\0A\00", align 1
@QEDR_MSG_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Requested cnq irq for %s [entry %d]. Cookie is at %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*)* @qedr_req_msix_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_req_msix_irqs(%struct.qedr_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qedr_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %8 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %11 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %9, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %17 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %18 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %21 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_ERR(%struct.qedr_dev* %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %107

27:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %102, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %31 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %105

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %37 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %42 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %40, %43
  store i64 %44, i64* %6, align 8
  %45 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %46 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @qedr_irq_handler, align 4
  %54 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %55 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %54, i32 0, i32 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %63 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %62, i32 0, i32 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = call i32 @request_irq(i32 %52, i32 %53, i32 0, i32 %61, %struct.TYPE_7__* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %34
  %72 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 (%struct.qedr_dev*, i8*, i32, ...) @DP_ERR(%struct.qedr_dev* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %76 = call i32 @qedr_sync_free_irqs(%struct.qedr_dev* %75)
  br label %101

77:                                               ; preds = %34
  %78 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %79 = load i32, i32* @QEDR_MSG_INIT, align 4
  %80 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %81 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %80, i32 0, i32 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %90 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %89, i32 0, i32 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = call i32 @DP_DEBUG(%struct.qedr_dev* %78, i32 %79, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88, %struct.TYPE_7__* %94)
  %96 = load %struct.qedr_dev*, %struct.qedr_dev** %3, align 8
  %97 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %77, %71
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %28

105:                                              ; preds = %28
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %15
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @qedr_sync_free_irqs(%struct.qedr_dev*) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
