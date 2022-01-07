; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_beep_mask_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_beep_mask_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83781d_data = type { i32, i64, i32 }

@W83781D_REG_BEEP_INTS1 = common dso_local global i32 0, align 4
@W83781D_REG_BEEP_INTS2 = common dso_local global i32 0, align 4
@w83781d = common dso_local global i64 0, align 8
@as99127f = common dso_local global i64 0, align 8
@W83781D_REG_BEEP_INTS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @beep_mask_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beep_mask_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83781d_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.w83781d_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.w83781d_data* %14, %struct.w83781d_data** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 10, i64* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %79

21:                                               ; preds = %4
  %22 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %23 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %26 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 32768
  store i32 %28, i32* %26, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %31 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @BEEP_MASK_TO_REG(i64 %29, i64 %32)
  %34 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %35 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %39 = load i32, i32* @W83781D_REG_BEEP_INTS1, align 4
  %40 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %41 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 255
  %44 = call i32 @w83781d_write_value(%struct.w83781d_data* %38, i32 %39, i32 %43)
  %45 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %46 = load i32, i32* @W83781D_REG_BEEP_INTS2, align 4
  %47 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %48 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = call i32 @w83781d_write_value(%struct.w83781d_data* %45, i32 %46, i32 %51)
  %53 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %54 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @w83781d, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %21
  %59 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %60 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @as99127f, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %66 = load i32, i32* @W83781D_REG_BEEP_INTS3, align 4
  %67 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %68 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = ashr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = call i32 @w83781d_write_value(%struct.w83781d_data* %65, i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %64, %58, %21
  %74 = load %struct.w83781d_data*, %struct.w83781d_data** %10, align 8
  %75 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %74, i32 0, i32 2
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i64, i64* %9, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %19
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.w83781d_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BEEP_MASK_TO_REG(i64, i64) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
