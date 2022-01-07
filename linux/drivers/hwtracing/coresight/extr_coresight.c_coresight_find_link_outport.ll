; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_find_link_outport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_find_link_outport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.coresight_connection* }
%struct.coresight_connection = type { i32, %struct.coresight_device* }

@.str = private unnamed_addr constant [46 x i8] c"couldn't find outport, parent: %s, child: %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, %struct.coresight_device*)* @coresight_find_link_outport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coresight_find_link_outport(%struct.coresight_device* %0, %struct.coresight_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coresight_device*, align 8
  %5 = alloca %struct.coresight_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.coresight_connection*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %4, align 8
  store %struct.coresight_device* %1, %struct.coresight_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %35, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %11 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %8
  %17 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %18 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.coresight_connection*, %struct.coresight_connection** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %21, i64 %23
  store %struct.coresight_connection* %24, %struct.coresight_connection** %7, align 8
  %25 = load %struct.coresight_connection*, %struct.coresight_connection** %7, align 8
  %26 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %25, i32 0, i32 1
  %27 = load %struct.coresight_device*, %struct.coresight_device** %26, align 8
  %28 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %29 = icmp eq %struct.coresight_device* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load %struct.coresight_connection*, %struct.coresight_connection** %7, align 8
  %32 = getelementptr inbounds %struct.coresight_connection, %struct.coresight_connection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %8

38:                                               ; preds = %8
  %39 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %40 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %39, i32 0, i32 0
  %41 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %42 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %41, i32 0, i32 0
  %43 = call i32 @dev_name(i32* %42)
  %44 = load %struct.coresight_device*, %struct.coresight_device** %5, align 8
  %45 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %44, i32 0, i32 0
  %46 = call i32 @dev_name(i32* %45)
  %47 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %38, %30
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
