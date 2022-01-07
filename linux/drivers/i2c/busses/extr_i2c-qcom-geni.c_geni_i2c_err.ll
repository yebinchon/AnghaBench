; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.geni_i2c_dev = type { %struct.TYPE_5__, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@gi2c_log = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"len:%d, slv-addr:0x%x, RD/WR:%d\0A\00", align 1
@NACK = common dso_local global i32 0, align 4
@GENI_ABORT_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.geni_i2c_dev*, i32)* @geni_i2c_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geni_i2c_err(%struct.geni_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.geni_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.geni_i2c_dev* %0, %struct.geni_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %6 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gi2c_log, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %17 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %16, i32 0, i32 2
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %9, %2
  %19 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %20 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %25 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %29 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %34 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %39 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %23, %18
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @NACK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @GENI_ABORT_DONE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %54 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gi2c_log, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %3, align 8
  %65 = call i32 @geni_i2c_err_misc(%struct.geni_i2c_dev* %64)
  br label %66

66:                                               ; preds = %52, %48, %44
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @geni_i2c_err_misc(%struct.geni_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
