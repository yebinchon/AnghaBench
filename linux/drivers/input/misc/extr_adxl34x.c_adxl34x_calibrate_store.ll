; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_calibrate_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_calibrate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adxl34x = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@OFSX = common dso_local global i32 0, align 4
@OFSY = common dso_local global i32 0, align 4
@OFSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adxl34x_calibrate_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adxl34x_calibrate_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.adxl34x*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.adxl34x* @dev_get_drvdata(%struct.device* %10)
  store %struct.adxl34x* %11, %struct.adxl34x** %9, align 8
  %12 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %13 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %16 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %22 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, %20
  store i64 %25, i64* %23, align 8
  %26 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %27 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = srem i32 %29, 4
  %31 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %32 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %35 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %41 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, %39
  store i64 %44, i64* %42, align 8
  %45 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %46 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %48, 4
  %50 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %51 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %54 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %60 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, %58
  store i64 %63, i64* %61, align 8
  %64 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %65 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = srem i32 %67, 4
  %69 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %70 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %73 = load i32, i32* @OFSX, align 4
  %74 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %75 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @AC_WRITE(%struct.adxl34x* %72, i32 %73, i32 %78)
  %80 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %81 = load i32, i32* @OFSY, align 4
  %82 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %83 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @AC_WRITE(%struct.adxl34x* %80, i32 %81, i32 %86)
  %88 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %89 = load i32, i32* @OFSZ, align 4
  %90 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %91 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @AC_WRITE(%struct.adxl34x* %88, i32 %89, i32 %94)
  %96 = load %struct.adxl34x*, %struct.adxl34x** %9, align 8
  %97 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i64, i64* %8, align 8
  ret i64 %99
}

declare dso_local %struct.adxl34x* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @AC_WRITE(%struct.adxl34x*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
