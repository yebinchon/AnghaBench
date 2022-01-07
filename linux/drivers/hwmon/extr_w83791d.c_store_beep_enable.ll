; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_store_beep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_store_beep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i32, i32, i32 }

@GLOBAL_BEEP_ENABLE_MASK = common dso_local global i32 0, align 4
@GLOBAL_BEEP_ENABLE_SHIFT = common dso_local global i32 0, align 4
@W83791D_REG_BEEP_CTRL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_beep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_beep_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83791d_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.w83791d_data* %17, %struct.w83791d_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtol(i8* %18, i32 10, i64* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %66

24:                                               ; preds = %4
  %25 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %26 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %33 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @GLOBAL_BEEP_ENABLE_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %37 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %41 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GLOBAL_BEEP_ENABLE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %46 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %50 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %12, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %56 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @w83791d_write(%struct.i2c_client* %55, i32 %58, i64 %59)
  %61 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %62 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %61, i32 0, i32 2
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %24, %22
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
