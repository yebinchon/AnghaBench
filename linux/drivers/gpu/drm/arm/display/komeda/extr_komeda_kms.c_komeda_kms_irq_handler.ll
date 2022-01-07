; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.c_komeda_kms_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.c_komeda_kms_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.komeda_dev* }
%struct.komeda_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.komeda_dev*, %struct.komeda_events*)* }
%struct.komeda_events = type { i32 }
%struct.komeda_kms_dev = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @komeda_kms_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_kms_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.komeda_dev*, align 8
  %7 = alloca %struct.komeda_kms_dev*, align 8
  %8 = alloca %struct.komeda_events, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.drm_device*
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.komeda_dev*, %struct.komeda_dev** %14, align 8
  store %struct.komeda_dev* %15, %struct.komeda_dev** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = call %struct.komeda_kms_dev* @to_kdev(%struct.drm_device* %16)
  store %struct.komeda_kms_dev* %17, %struct.komeda_kms_dev** %7, align 8
  %18 = call i32 @memset(%struct.komeda_events* %8, i32 0, i32 4)
  %19 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %20 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.komeda_dev*, %struct.komeda_events*)*, i32 (%struct.komeda_dev*, %struct.komeda_events*)** %22, align 8
  %24 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %25 = call i32 %23(%struct.komeda_dev* %24, %struct.komeda_events* %8)
  store i32 %25, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %26

26:                                               ; preds = %39, %2
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %7, align 8
  %29 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %7, align 8
  %34 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i32 @komeda_crtc_handle_event(i32* %37, %struct.komeda_events* %8)
  br label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local %struct.komeda_kms_dev* @to_kdev(%struct.drm_device*) #1

declare dso_local i32 @memset(%struct.komeda_events*, i32, i32) #1

declare dso_local i32 @komeda_crtc_handle_event(i32*, %struct.komeda_events*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
