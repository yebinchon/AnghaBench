; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_store_fan_manual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_store_fan_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FANS_MANUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @applesmc_store_fan_manual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_store_fan_manual(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @kstrtoul(i8* %14, i32 10, i64* %12)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load i32, i32* @FANS_MANUAL, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %23 = call i32 @applesmc_read_key(i32 %21, i32* %22, i32 2)
  store i32 %23, i32* %10, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %26, %28
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %60

33:                                               ; preds = %20
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %39 = call i32 @to_index(%struct.device_attribute* %38)
  %40 = shl i32 1, %39
  %41 = or i32 %37, %40
  store i32 %41, i32* %13, align 4
  br label %49

42:                                               ; preds = %33
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %45 = call i32 @to_index(%struct.device_attribute* %44)
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i32, i32* %13, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @FANS_MANUAL, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %59 = call i32 @applesmc_write_key(i32 %57, i32* %58, i32 2)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %49, %32
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %68

65:                                               ; preds = %60
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %63, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @applesmc_read_key(i32, i32*, i32) #1

declare dso_local i32 @to_index(%struct.device_attribute*) #1

declare dso_local i32 @applesmc_write_key(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
