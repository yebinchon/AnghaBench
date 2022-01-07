; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_in0_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627hf.c_in0_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627hf_data = type { i32, i64, i32, i32* }

@w83627thf = common dso_local global i64 0, align 8
@w83637hf = common dso_local global i64 0, align 8
@w83687thf = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in0_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in0_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %80

21:                                               ; preds = %4
  %22 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %23 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %26 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %21
  %31 = load i64, i64* @w83627thf, align 8
  %32 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %33 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @w83637hf, align 8
  %38 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %39 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* @w83687thf, align 8
  %44 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %45 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42, %36, %30
  %49 = load i64, i64* %11, align 8
  %50 = mul i64 %49, 100
  %51 = sub i64 %50, 70000
  %52 = add i64 %51, 244
  %53 = udiv i64 %52, 488
  %54 = call i32 @clamp_val(i64 %53, i32 0, i32 255)
  %55 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %56 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %54, i32* %58, align 4
  br label %66

59:                                               ; preds = %42, %21
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @IN_TO_REG(i64 %60)
  %62 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %63 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %48
  %67 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %68 = call i32 @W83781D_REG_IN_MIN(i32 0)
  %69 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %70 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @w83627hf_write_value(%struct.w83627hf_data* %67, i32 %68, i32 %73)
  %75 = load %struct.w83627hf_data*, %struct.w83627hf_data** %10, align 8
  %76 = getelementptr inbounds %struct.w83627hf_data, %struct.w83627hf_data* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i64, i64* %9, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %66, %19
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.w83627hf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @IN_TO_REG(i64) #1

declare dso_local i32 @w83627hf_write_value(%struct.w83627hf_data*, i32, i32) #1

declare dso_local i32 @W83781D_REG_IN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
