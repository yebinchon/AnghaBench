; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_sync_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4350.c_adf4350_sync_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf4350_state = type { i32*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ADF4350_REG5 = common dso_local global i32 0, align 4
@ADF4350_REG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[%d] 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adf4350_state*)* @adf4350_sync_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf4350_sync_config(%struct.adf4350_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adf4350_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adf4350_state* %0, %struct.adf4350_state** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @ADF4350_REG5, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %91, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ADF4350_REG0, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %94

12:                                               ; preds = %8
  %13 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %14 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %21 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %19, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %12
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ADF4350_REG0, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %32, %12
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %38 [
    i32 129, label %37
    i32 128, label %37
  ]

37:                                               ; preds = %35, %35
  store i32 1, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %37
  %39 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %40 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @cpu_to_be32(i32 %47)
  %49 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %50 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %52 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %55 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %54, i32 0, i32 3
  %56 = call i32 @spi_write(%struct.TYPE_2__* %53, i32* %55, i32 4)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %38
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %95

61:                                               ; preds = %38
  %62 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %63 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %70 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %76 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.adf4350_state*, %struct.adf4350_state** %3, align 8
  %81 = getelementptr inbounds %struct.adf4350_state, %struct.adf4350_state* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @dev_dbg(i32* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %88)
  br label %90

90:                                               ; preds = %61, %32, %28
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %5, align 4
  br label %8

94:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %59
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spi_write(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
