; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_dreq_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_dreq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fdma_chan = type { %struct.TYPE_2__, %struct.st_fdma_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.st_fdma_dev = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"No req lines available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ST_FDMA_NR_DREQS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid or used req line\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"get dreq_line:%d mask:%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_fdma_chan*)* @st_fdma_dreq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_fdma_dreq_get(%struct.st_fdma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_fdma_chan*, align 8
  %4 = alloca %struct.st_fdma_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.st_fdma_chan* %0, %struct.st_fdma_chan** %3, align 8
  %8 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %8, i32 0, i32 1
  %10 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %9, align 8
  store %struct.st_fdma_dev* %10, %struct.st_fdma_dev** %4, align 8
  %11 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %46, %1
  %16 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %4, align 8
  %17 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %4, align 8
  %22 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %63

27:                                               ; preds = %15
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @ST_FDMA_NR_DREQS, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30, %27
  %35 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %4, align 8
  %36 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %63

41:                                               ; preds = %30
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %41
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %4, align 8
  %49 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %48, i32 0, i32 0
  %50 = call i64 @test_and_set_bit(i64 %47, i64* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %15, label %52

52:                                               ; preds = %46
  %53 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %4, align 8
  %54 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.st_fdma_dev*, %struct.st_fdma_dev** %4, align 8
  %58 = getelementptr inbounds %struct.st_fdma_dev, %struct.st_fdma_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %56, i64 %59)
  %61 = load i64, i64* %6, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %52, %34, %20
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @test_and_set_bit(i64, i64*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
