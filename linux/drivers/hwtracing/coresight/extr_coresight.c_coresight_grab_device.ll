; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_grab_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_grab_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.coresight_device* }

@CORESIGHT_DEV_TYPE_HELPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coresight_device*)* @coresight_grab_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coresight_grab_device(%struct.coresight_device* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.coresight_device*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %39, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %8 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %5
  %14 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %15 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.coresight_device*, %struct.coresight_device** %22, align 8
  store %struct.coresight_device* %23, %struct.coresight_device** %4, align 8
  %24 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %25 = icmp ne %struct.coresight_device* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %13
  %27 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %28 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CORESIGHT_DEV_TYPE_HELPER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %34 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pm_runtime_get_sync(i32 %36)
  br label %38

38:                                               ; preds = %32, %26, %13
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %5

42:                                               ; preds = %5
  %43 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  %44 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pm_runtime_get_sync(i32 %46)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
