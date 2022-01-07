; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_validate_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_validate_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CORESIGHT_DEV_TYPE_SOURCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"wrong device type in %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CORESIGHT_DEV_SUBTYPE_SOURCE_PROC = common dso_local global i64 0, align 8
@CORESIGHT_DEV_SUBTYPE_SOURCE_SOFTWARE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"wrong device subtype in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, i8*)* @coresight_validate_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coresight_validate_source(%struct.coresight_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.coresight_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %9 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %12 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @CORESIGHT_DEV_TYPE_SOURCE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %20 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %19, i32 0, i32 1
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @CORESIGHT_DEV_SUBTYPE_SOURCE_PROC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @CORESIGHT_DEV_SUBTYPE_SOURCE_SOFTWARE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.coresight_device*, %struct.coresight_device** %4, align 8
  %35 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %34, i32 0, i32 1
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %29, %25
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %33, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
