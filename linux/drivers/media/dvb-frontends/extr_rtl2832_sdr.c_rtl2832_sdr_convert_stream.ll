; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_convert_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_convert_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl2832_sdr_dev = type { i64, i32, i32, i64, %struct.platform_device* }
%struct.platform_device = type { i32 }

@V4L2_SDR_FMT_CU8 = common dso_local global i64 0, align 8
@V4L2_SDR_FMT_CU16LE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"slen=%u samples=%u msecs=%u sample rate=%lu\0A\00", align 1
@MSECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl2832_sdr_dev*, i8*, i32*, i32)* @rtl2832_sdr_convert_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl2832_sdr_convert_stream(%struct.rtl2832_sdr_dev* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.rtl2832_sdr_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rtl2832_sdr_dev* %0, %struct.rtl2832_sdr_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %16 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %15, i32 0, i32 4
  %17 = load %struct.platform_device*, %struct.platform_device** %16, align 8
  store %struct.platform_device* %17, %struct.platform_device** %9, align 8
  %18 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %19 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_SDR_FMT_CU8, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @memcpy(i8* %24, i32* %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %10, align 4
  br label %66

29:                                               ; preds = %4
  %30 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %31 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @V4L2_SDR_FMT_CU16LE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %12, align 8
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %58, %35
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 0
  %55 = or i32 %48, %54
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %38

61:                                               ; preds = %38
  %62 = load i32, i32* %8, align 4
  %63 = mul i32 2, %62
  store i32 %63, i32* %10, align 4
  br label %65

64:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %61
  br label %66

66:                                               ; preds = %65, %23
  %67 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %68 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @time_is_before_jiffies(i64 %69)
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %66
  %74 = load i64, i64* @jiffies, align 8
  %75 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %76 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = call i64 @msecs_to_jiffies(i32 10000)
  %80 = add nsw i64 %78, %79
  %81 = call i32 @jiffies_to_msecs(i64 %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %83 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %86 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sub i32 %84, %87
  store i32 %88, i32* %14, align 4
  %89 = load i64, i64* @jiffies, align 8
  %90 = call i64 @msecs_to_jiffies(i32 10000)
  %91 = add nsw i64 %89, %90
  %92 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %93 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %92, i32 0, i32 3
  store i64 %91, i64* %93, align 8
  %94 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %95 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %98 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  %99 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = zext i32 %104 to i64
  %106 = mul i64 %105, 1000
  %107 = load i32, i32* %13, align 4
  %108 = zext i32 %107 to i64
  %109 = udiv i64 %106, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @dev_dbg(i32* %100, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %102, i32 %103, i32 %110)
  br label %112

112:                                              ; preds = %73, %66
  %113 = load i32, i32* %8, align 4
  %114 = udiv i32 %113, 2
  %115 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %5, align 8
  %116 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = add i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load i32, i32* %10, align 4
  ret i32 %119
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @time_is_before_jiffies(i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
