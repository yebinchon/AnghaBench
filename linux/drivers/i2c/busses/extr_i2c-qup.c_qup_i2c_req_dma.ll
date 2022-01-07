; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_req_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_req_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\0A tx channel not available\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"\0A rx channel not available\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qup_i2c_dev*)* @qup_i2c_req_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_req_dma(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qup_i2c_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %3, align 8
  %5 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %6 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %1
  %11 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %12 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @dma_request_slave_channel_reason(i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %17 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* %15, i32** %18, align 8
  %19 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %20 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @IS_ERR(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %10
  %26 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %27 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @PTR_ERR(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %32 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %35 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %79

39:                                               ; preds = %10
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %42 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %78, label %46

46:                                               ; preds = %40
  %47 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %48 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @dma_request_slave_channel_reason(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %53 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32* %51, i32** %54, align 8
  %55 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %56 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @IS_ERR(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %46
  %62 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %63 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %67 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @PTR_ERR(i32* %69)
  store i32 %70, i32* %4, align 4
  %71 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %72 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %3, align 8
  %75 = call i32 @qup_i2c_rel_dma(%struct.qup_i2c_dev* %74)
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %79

77:                                               ; preds = %46
  br label %78

78:                                               ; preds = %77, %40
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %61, %25
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i8* @dma_request_slave_channel_reason(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @qup_i2c_rel_dma(%struct.qup_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
