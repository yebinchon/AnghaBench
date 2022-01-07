; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_sink_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_sink_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.coresight_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CORESIGHT_DEV_TYPE_SINK = common dso_local global i64 0, align 8
@CORESIGHT_DEV_TYPE_LINKSINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @coresight_sink_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coresight_sink_by_id(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.coresight_device*, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.coresight_device* @to_coresight_device(%struct.device* %8)
  store %struct.coresight_device* %9, %struct.coresight_device** %6, align 8
  %10 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %11 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CORESIGHT_DEV_TYPE_SINK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %17 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CORESIGHT_DEV_TYPE_LINKSINK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15, %2
  %22 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %23 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %41

27:                                               ; preds = %21
  %28 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %29 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = bitcast i8* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %41

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %15
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %38, %26
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.coresight_device* @to_coresight_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
