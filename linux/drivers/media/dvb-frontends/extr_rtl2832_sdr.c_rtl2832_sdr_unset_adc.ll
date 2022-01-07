; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_unset_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_rtl2832_sdr.c_rtl2832_sdr_unset_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl2832_sdr_dev = type { i32, %struct.platform_device* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\11\10\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\00\0F\FF\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"@\00\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\06?\CE\CC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl2832_sdr_dev*)* @rtl2832_sdr_unset_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl2832_sdr_unset_adc(%struct.rtl2832_sdr_dev* %0) #0 {
  %2 = alloca %struct.rtl2832_sdr_dev*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rtl2832_sdr_dev* %0, %struct.rtl2832_sdr_dev** %2, align 8
  %5 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %5, i32 0, i32 1
  %7 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  store %struct.platform_device* %7, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %12 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @regmap_write(i32 %13, i32 97, i32 224)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %20 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @regmap_write(i32 %21, i32 25, i32 32)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %59

26:                                               ; preds = %18
  %27 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %28 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @regmap_bulk_write(i32 %29, i32 23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %59

34:                                               ; preds = %26
  %35 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %36 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @regmap_bulk_write(i32 %37, i32 402, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %59

42:                                               ; preds = %34
  %43 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %44 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @regmap_bulk_write(i32 %45, i32 318, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %59

50:                                               ; preds = %42
  %51 = load %struct.rtl2832_sdr_dev*, %struct.rtl2832_sdr_dev** %2, align 8
  %52 = getelementptr inbounds %struct.rtl2832_sdr_dev, %struct.rtl2832_sdr_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @regmap_bulk_write(i32 %53, i32 277, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %57, %49, %41, %33, %25, %17
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
