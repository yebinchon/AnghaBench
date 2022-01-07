; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asc7621.c_store_in8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asc7621.c_store_in8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64*, i32 }
%struct.TYPE_5__ = type { i64* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@sda = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@asc7621_in_scaling = common dso_local global i64* null, align 8
@data = common dso_local global %struct.TYPE_6__* null, align 8
@param = common dso_local global %struct.TYPE_5__* null, align 8
@client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_in8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_in8(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %14 = call i32 @SETUP_STORE_DATA_PARAM(%struct.device* %12, %struct.device_attribute* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sda, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtol(i8* %18, i32 10, i64* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %61

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @clamp_val(i64 %25, i32 0, i32 65535)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = mul nsw i64 %27, 192
  %29 = load i64*, i64** @asc7621_in_scaling, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = sdiv i64 %28, %32
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @clamp_val(i64 %34, i32 0, i32 255)
  store i64 %35, i64* %10, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @param, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i64, i64* %42, i64 %47
  store i64 %39, i64* %48, align 8
  %49 = load i32, i32* @client, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @param, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @write_byte(i32 %49, i64 %54, i64 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %24, %21
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local i32 @SETUP_STORE_DATA_PARAM(%struct.device*, %struct.device_attribute*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_byte(i32, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
