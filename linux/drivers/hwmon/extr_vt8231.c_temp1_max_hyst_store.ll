; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_temp1_max_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_temp1_max_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt8231_data = type { i32, i32* }

@regtempmin = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp1_max_hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp1_max_hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vt8231_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.vt8231_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.vt8231_data* %14, %struct.vt8231_data** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtol(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %23 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i64, i64* %11, align 8
  %26 = add nsw i64 %25, 500
  %27 = sdiv i64 %26, 1000
  %28 = call i32 @clamp_val(i64 %27, i32 0, i32 255)
  %29 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %30 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %34 = load i32*, i32** @regtempmin, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %38 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vt8231_write_value(%struct.vt8231_data* %33, i32 %36, i32 %41)
  %43 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %44 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %21, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.vt8231_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @vt8231_write_value(%struct.vt8231_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
