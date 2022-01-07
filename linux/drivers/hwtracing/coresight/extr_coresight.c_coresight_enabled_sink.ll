; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_enabled_sink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_enabled_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.coresight_device = type { i64, i32 }

@CORESIGHT_DEV_TYPE_SINK = common dso_local global i64 0, align 8
@CORESIGHT_DEV_TYPE_LINKSINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @coresight_enabled_sink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coresight_enabled_sink(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.coresight_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.coresight_device* @to_coresight_device(%struct.device* %10)
  store %struct.coresight_device* %11, %struct.coresight_device** %7, align 8
  %12 = load %struct.coresight_device*, %struct.coresight_device** %7, align 8
  %13 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CORESIGHT_DEV_TYPE_SINK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.coresight_device*, %struct.coresight_device** %7, align 8
  %19 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CORESIGHT_DEV_TYPE_LINKSINK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17, %2
  %24 = load %struct.coresight_device*, %struct.coresight_device** %7, align 8
  %25 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.coresight_device*, %struct.coresight_device** %7, align 8
  %34 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %28
  store i32 1, i32* %3, align 4
  br label %37

36:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.coresight_device* @to_coresight_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
