; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_disable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x.c_adxl34x_disable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adxl34x = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adxl34x_disable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl34x_disable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adxl34x*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.adxl34x* @dev_get_drvdata(%struct.device* %13)
  store %struct.adxl34x* %14, %struct.adxl34x** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtouint(i8* %15, i32 10, i32* %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %5, align 4
  br label %69

21:                                               ; preds = %4
  %22 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %23 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %26 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %21
  %30 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %31 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %39 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %44 = call i32 @__adxl34x_disable(%struct.adxl34x* %43)
  br label %45

45:                                               ; preds = %42, %37
  br label %55

46:                                               ; preds = %34
  %47 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %48 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %53 = call i32 @__adxl34x_enable(%struct.adxl34x* %52)
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %45
  br label %56

56:                                               ; preds = %55, %29, %21
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %63 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.adxl34x*, %struct.adxl34x** %10, align 8
  %65 = getelementptr inbounds %struct.adxl34x, %struct.adxl34x* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %56, %19
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.adxl34x* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__adxl34x_disable(%struct.adxl34x*) #1

declare dso_local i32 @__adxl34x_enable(%struct.adxl34x*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
