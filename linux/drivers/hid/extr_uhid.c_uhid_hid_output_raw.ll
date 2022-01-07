; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_hid_output_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_hid_output_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.uhid_device* }
%struct.uhid_device = type { i32 }
%struct.uhid_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32 }

@UHID_FEATURE_REPORT = common dso_local global i32 0, align 4
@UHID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UHID_DATA_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UHID_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32*, i64, i8)* @uhid_hid_output_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_hid_output_raw(%struct.hid_device* %0, i32* %1, i64 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca %struct.uhid_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.uhid_event*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8 %3, i8* %9, align 1
  %14 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load %struct.uhid_device*, %struct.uhid_device** %15, align 8
  store %struct.uhid_device* %16, %struct.uhid_device** %10, align 8
  %17 = load i8, i8* %9, align 1
  %18 = zext i8 %17 to i32
  switch i32 %18, label %23 [
    i32 129, label %19
    i32 128, label %21
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @UHID_FEATURE_REPORT, align 4
  store i32 %20, i32* %11, align 4
  br label %26

21:                                               ; preds = %4
  %22 = load i32, i32* @UHID_OUTPUT_REPORT, align 4
  store i32 %22, i32* %11, align 4
  br label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %79

26:                                               ; preds = %21, %19
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %27, 1
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @UHID_DATA_MAX, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %79

36:                                               ; preds = %29
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.uhid_event* @kzalloc(i32 24, i32 %37)
  store %struct.uhid_event* %38, %struct.uhid_event** %13, align 8
  %39 = load %struct.uhid_event*, %struct.uhid_event** %13, align 8
  %40 = icmp ne %struct.uhid_event* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %79

44:                                               ; preds = %36
  %45 = load i32, i32* @UHID_OUTPUT, align 4
  %46 = load %struct.uhid_event*, %struct.uhid_event** %13, align 8
  %47 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.uhid_event*, %struct.uhid_event** %13, align 8
  %50 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 %48, i64* %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.uhid_event*, %struct.uhid_event** %13, align 8
  %55 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %53, i32* %57, align 4
  %58 = load %struct.uhid_event*, %struct.uhid_event** %13, align 8
  %59 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @memcpy(i32 %62, i32* %63, i64 %64)
  %66 = load %struct.uhid_device*, %struct.uhid_device** %10, align 8
  %67 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %66, i32 0, i32 0
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.uhid_device*, %struct.uhid_device** %10, align 8
  %71 = load %struct.uhid_event*, %struct.uhid_event** %13, align 8
  %72 = call i32 @uhid_queue(%struct.uhid_device* %70, %struct.uhid_event* %71)
  %73 = load %struct.uhid_device*, %struct.uhid_device** %10, align 8
  %74 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %73, i32 0, i32 0
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i64, i64* %8, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %44, %41, %33, %23
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.uhid_event* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uhid_queue(%struct.uhid_device*, %struct.uhid_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
