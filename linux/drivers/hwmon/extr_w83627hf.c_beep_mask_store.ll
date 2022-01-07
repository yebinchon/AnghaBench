; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_beep_mask_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_beep_mask_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i32, i32 }

@W83781D_REG_BEEP_INTS1 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS3 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @beep_mask_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beep_mask_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83627hf_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.w83627hf_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.w83627hf_data* %14, %struct.w83627hf_data** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %62

21:                                               ; preds = %4
  %22 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %23 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %26 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 32768
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @BEEP_MASK_TO_REG(i64 %29)
  %31 = or i32 %28, %30
  %32 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %33 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %35 = load i32, i32* @W83781D_REG_BEEP_INTS1, align 4
  %36 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %37 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 255
  %40 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %34, i32 %35, i32 %39)
  %41 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %42 = load i32, i32* @W83781D_REG_BEEP_INTS3, align 4
  %43 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %44 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %41, i32 %42, i32 %47)
  %49 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %50 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %51 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %52 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %49, i32 %50, i32 %55)
  %57 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %58 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %21, %19
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BEEP_MASK_TO_REG(i64) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
