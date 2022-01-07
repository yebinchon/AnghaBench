; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_fan1_target_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_fan1_target_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.emc2103_data = type { i32, i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@FAN_RPM_FACTOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan1_target_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan1_target_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.emc2103_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.emc2103_data* @emc2103_update_device(%struct.device* %14)
  store %struct.emc2103_data* %15, %struct.emc2103_data** %10, align 8
  %16 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %17 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %16, i32 0, i32 3
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtoul(i8* %19, i32 10, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %60

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = call i8* @clamp_val(i64 %26, i32 0, i32 16384)
  %28 = ptrtoint i8* %27 to i64
  store i64 %28, i64* %12, align 8
  %29 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %30 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i64, i64* %12, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %36 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %35, i32 0, i32 0
  store i32 8191, i32* %36, align 8
  br label %49

37:                                               ; preds = %25
  %38 = load i64, i64* @FAN_RPM_FACTOR, align 8
  %39 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %40 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %38, %41
  %43 = load i64, i64* %12, align 8
  %44 = udiv i64 %42, %43
  %45 = call i8* @clamp_val(i64 %44, i32 0, i32 8191)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %48 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %37, %34
  %50 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %51 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %52 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @write_fan_target_to_i2c(%struct.i2c_client* %50, i32 %53)
  %55 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %56 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %55, i32 0, i32 2
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %49, %23
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.emc2103_data* @emc2103_update_device(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i8* @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_fan_target_to_i2c(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
