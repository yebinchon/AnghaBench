; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_mediabay.c_mb_broadcast_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_mediabay.c_mb_broadcast_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i32* }
%struct.media_bay_info = type { i32, i32 }
%struct.macio_dev = type { i32 }
%struct.macio_driver = type { i32 (%struct.macio_dev.0*, i32)* }
%struct.macio_dev.0 = type opaque

@macio_bus_type = common dso_local global i32 0, align 4
@mb_up = common dso_local global i32 0, align 4
@MB_NO = common dso_local global i32 0, align 4
@MB_FD1 = common dso_local global i32 0, align 4
@MB_FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @mb_broadcast_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_broadcast_hotplug(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.media_bay_info*, align 8
  %7 = alloca %struct.macio_dev*, align 8
  %8 = alloca %struct.macio_driver*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.media_bay_info*
  store %struct.media_bay_info* %11, %struct.media_bay_info** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, @macio_bus_type
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.media_bay_info*, %struct.media_bay_info** %6, align 8
  %19 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @mb_up, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.media_bay_info*, %struct.media_bay_info** %6, align 8
  %25 = getelementptr inbounds %struct.media_bay_info, %struct.media_bay_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @MB_NO, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %26, %23 ], [ %28, %27 ]
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MB_FD1, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @MB_FD, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call %struct.macio_dev* @to_macio_device(%struct.device* %37)
  store %struct.macio_dev* %38, %struct.macio_dev** %7, align 8
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.macio_driver* @to_macio_driver(i64 %41)
  store %struct.macio_driver* %42, %struct.macio_driver** %8, align 8
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %36
  %48 = load %struct.macio_driver*, %struct.macio_driver** %8, align 8
  %49 = getelementptr inbounds %struct.macio_driver, %struct.macio_driver* %48, i32 0, i32 0
  %50 = load i32 (%struct.macio_dev.0*, i32)*, i32 (%struct.macio_dev.0*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.macio_dev.0*, i32)* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.macio_driver*, %struct.macio_driver** %8, align 8
  %54 = getelementptr inbounds %struct.macio_driver, %struct.macio_driver* %53, i32 0, i32 0
  %55 = load i32 (%struct.macio_dev.0*, i32)*, i32 (%struct.macio_dev.0*, i32)** %54, align 8
  %56 = load %struct.macio_dev*, %struct.macio_dev** %7, align 8
  %57 = bitcast %struct.macio_dev* %56 to %struct.macio_dev.0*
  %58 = load i32, i32* %9, align 4
  %59 = call i32 %55(%struct.macio_dev.0* %57, i32 %58)
  br label %60

60:                                               ; preds = %52, %47, %36
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.macio_dev* @to_macio_device(%struct.device*) #1

declare dso_local %struct.macio_driver* @to_macio_driver(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
