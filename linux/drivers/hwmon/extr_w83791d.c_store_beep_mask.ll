; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_store_beep_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83791d.c_store_beep_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83791d_data = type { i32, i32, i32 }

@GLOBAL_BEEP_ENABLE_MASK = common dso_local global i32 0, align 4
@GLOBAL_BEEP_ENABLE_SHIFT = common dso_local global i32 0, align 4
@W83791D_REG_BEEP_CTRL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_beep_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_beep_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83791d_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.i2c_client* @to_i2c_client(%struct.device* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = call %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client* %17)
  store %struct.w83791d_data* %18, %struct.w83791d_data** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtol(i8* %19, i32 10, i64* %13)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %73

25:                                               ; preds = %4
  %26 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %27 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @BEEP_MASK_TO_REG(i64 %29)
  %31 = load i32, i32* @GLOBAL_BEEP_ENABLE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %35 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %37 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GLOBAL_BEEP_ENABLE_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %42 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %46 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %64, %25
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %54 = load i32*, i32** @W83791D_REG_BEEP_CTRL, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %13, align 8
  %60 = and i64 %59, 255
  %61 = call i32 @w83791d_write(%struct.i2c_client* %53, i32 %58, i64 %60)
  %62 = load i64, i64* %13, align 8
  %63 = ashr i64 %62, 8
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.w83791d_data*, %struct.w83791d_data** %11, align 8
  %69 = getelementptr inbounds %struct.w83791d_data, %struct.w83791d_data* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %67, %23
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83791d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BEEP_MASK_TO_REG(i64) #1

declare dso_local i32 @w83791d_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
