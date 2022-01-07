; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6423.c_isl6423_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6423.c_isl6423_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl6423_dev = type { %struct.TYPE_2__*, %struct.i2c_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"write reg %02X\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"I/O error <%d>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl6423_dev*, i32)* @isl6423_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl6423_write(%struct.isl6423_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isl6423_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_msg, align 8
  store %struct.isl6423_dev* %0, %struct.isl6423_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.isl6423_dev*, %struct.isl6423_dev** %4, align 8
  %11 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.isl6423_dev*, %struct.isl6423_dev** %4, align 8
  %14 = getelementptr inbounds %struct.isl6423_dev, %struct.isl6423_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32* %5, i32** %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @FE_DEBUG, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dprintk(i32 %23, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %27 = call i32 @i2c_transfer(%struct.i2c_adapter* %26, %struct.i2c_msg* %9, i32 1)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

32:                                               ; preds = %30
  %33 = load i32, i32* @FE_ERROR, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dprintk(i32 %33, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %31
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @dprintk(i32, i32, i8*, i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
