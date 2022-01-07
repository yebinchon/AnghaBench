; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_mode_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_mode_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.tmc_drvdata*, %struct.etr_buf*, i32, i8**)* }
%struct.tmc_drvdata = type { i32 }
%struct.etr_buf = type { %struct.TYPE_2__* }

@EINVAL = common dso_local global i32 0, align 4
@etr_buf_ops = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tmc_drvdata*, %struct.etr_buf*, i32, i8**)* @tmc_etr_mode_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_etr_mode_alloc_buf(i32 %0, %struct.tmc_drvdata* %1, %struct.etr_buf* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tmc_drvdata*, align 8
  %9 = alloca %struct.etr_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.tmc_drvdata* %1, %struct.tmc_drvdata** %8, align 8
  store %struct.etr_buf* %2, %struct.etr_buf** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %58 [
    i32 128, label %16
    i32 129, label %16
    i32 130, label %16
  ]

16:                                               ; preds = %5, %5, %5
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @etr_buf_ops, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @etr_buf_ops, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.tmc_drvdata*, %struct.etr_buf*, i32, i8**)*, i32 (%struct.tmc_drvdata*, %struct.etr_buf*, i32, i8**)** %29, align 8
  %31 = icmp ne i32 (%struct.tmc_drvdata*, %struct.etr_buf*, i32, i8**)* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @etr_buf_ops, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.tmc_drvdata*, %struct.etr_buf*, i32, i8**)*, i32 (%struct.tmc_drvdata*, %struct.etr_buf*, i32, i8**)** %38, align 8
  %40 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %8, align 8
  %41 = load %struct.etr_buf*, %struct.etr_buf** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i8**, i8*** %11, align 8
  %44 = call i32 %39(%struct.tmc_drvdata* %40, %struct.etr_buf* %41, i32 %42, i8** %43)
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %32, %23, %16
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @etr_buf_ops, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.etr_buf*, %struct.etr_buf** %9, align 8
  %55 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %54, i32 0, i32 0
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %55, align 8
  br label %56

56:                                               ; preds = %48, %45
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %61

58:                                               ; preds = %5
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %56
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
