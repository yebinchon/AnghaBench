; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_id_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_id_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.coresight_device = type { i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.coresight_device*)* }

@CORESIGHT_DEV_TYPE_SOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @coresight_id_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coresight_id_match(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.coresight_device*, align 8
  %9 = alloca %struct.coresight_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.coresight_device*
  store %struct.coresight_device* %11, %struct.coresight_device** %8, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.coresight_device* @to_coresight_device(%struct.device* %12)
  store %struct.coresight_device* %13, %struct.coresight_device** %9, align 8
  %14 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %15 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %16 = icmp eq %struct.coresight_device* %14, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %19 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %24 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CORESIGHT_DEV_TYPE_SOURCE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %17, %2
  store i32 0, i32* %3, align 4
  br label %47

29:                                               ; preds = %22
  %30 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %31 = call %struct.TYPE_2__* @source_ops(%struct.coresight_device* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.coresight_device*)*, i32 (%struct.coresight_device*)** %32, align 8
  %34 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %35 = call i32 %33(%struct.coresight_device* %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %37 = call %struct.TYPE_2__* @source_ops(%struct.coresight_device* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.coresight_device*)*, i32 (%struct.coresight_device*)** %38, align 8
  %40 = load %struct.coresight_device*, %struct.coresight_device** %9, align 8
  %41 = call i32 %39(%struct.coresight_device* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.coresight_device* @to_coresight_device(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @source_ops(%struct.coresight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
