; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_free_stream_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_free_stream_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl2832_sdr_dev = type { i64, i32, i32*, i32*, i32, i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@URB_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"free buf=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl2832_sdr_dev*)* @rtl2832_sdr_free_stream_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_sdr_free_stream_bufs(%struct.rtl2832_sdr_dev* %0) #0 {
  %2 = alloca %struct.rtl2832_sdr_dev*, align 8
  %3 = alloca %struct.platform_device*, align 8
  store %struct.rtl2832_sdr_dev* %0, %struct.rtl2832_sdr_dev** %2, align 8
  %4 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %4, i32 0, i32 6
  %6 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @URB_BUF, align 4
  %8 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %8, i32 0, i32 1
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %18, %12
  %14 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %15 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %13
  %19 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %20 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %26 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %30 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %33 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %36 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %39 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %44 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %47 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_free_coherent(i32 %31, i32 %34, i32 %42, i32 %50)
  br label %13

52:                                               ; preds = %13
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* @URB_BUF, align 4
  %55 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %56 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %55, i32 0, i32 1
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  ret i32 0
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
