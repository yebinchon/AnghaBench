; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32 }
%struct.rtl2832_sdr_dev = type { i32, %struct.TYPE_2__, %struct.platform_device* }
%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @rtl2832_sdr_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_sdr_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  %7 = alloca %struct.rtl2832_sdr_dev*, align 8
  %8 = alloca %struct.platform_device*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.rtl2832_sdr_dev* @video_drvdata(%struct.file* %9)
  store %struct.rtl2832_sdr_dev* %10, %struct.rtl2832_sdr_dev** %7, align 8
  %11 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %12 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %11, i32 0, i32 2
  %13 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %13, %struct.platform_device** %8, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @KBUILD_MODNAME, align 4
  %21 = call i32 @strscpy(i32 %19, i32 %20, i32 4)
  %22 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %26 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strscpy(i32 %24, i32 %28, i32 4)
  %30 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %7, align 8
  %31 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_make_path(i32 %32, i32 %35, i32 4)
  ret i32 0
}

declare dso_local %struct.rtl2832_sdr_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @usb_make_path(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
