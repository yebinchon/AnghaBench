; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc.c_tmc_read_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc.c_tmc_read_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"TMC read end\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmc_drvdata*)* @tmc_read_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_read_unprepare(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca %struct.tmc_drvdata*, align 8
  %3 = alloca i32, align 4
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %5 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %13 [
    i32 130, label %7
    i32 129, label %7
    i32 128, label %10
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %9 = call i32 @tmc_read_unprepare_etb(%struct.tmc_drvdata* %8)
  store i32 %9, i32* %3, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %12 = call i32 @tmc_read_unprepare_etr(%struct.tmc_drvdata* %11)
  store i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %10, %7
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %21 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @tmc_read_unprepare_etb(%struct.tmc_drvdata*) #1

declare dso_local i32 @tmc_read_unprepare_etr(%struct.tmc_drvdata*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
