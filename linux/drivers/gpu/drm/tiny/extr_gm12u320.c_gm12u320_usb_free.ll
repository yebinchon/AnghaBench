; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_usb_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_usb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gm12u320_device = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GM12U320_BLOCK_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gm12u320_device*)* @gm12u320_usb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm12u320_usb_free(%struct.gm12u320_device* %0) #0 {
  %2 = alloca %struct.gm12u320_device*, align 8
  %3 = alloca i32, align 4
  store %struct.gm12u320_device* %0, %struct.gm12u320_device** %2, align 8
  %4 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %5 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %11 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @destroy_workqueue(i64 %13)
  br label %15

15:                                               ; preds = %9, %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %29, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @GM12U320_BLOCK_COUNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %22 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %16

32:                                               ; preds = %16
  %33 = load %struct.gm12u320_device*, %struct.gm12u320_device** %2, align 8
  %34 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kfree(i32 %35)
  ret void
}

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
