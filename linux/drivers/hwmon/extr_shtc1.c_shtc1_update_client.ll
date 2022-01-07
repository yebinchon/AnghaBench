; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_shtc1.c_shtc1_update_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_shtc1.c_shtc1_update_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shtc1_data = type { i32, i32, i32, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@SHTC1_RESPONSE_LENGTH = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.shtc1_data* (%struct.device*)* @shtc1_update_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.shtc1_data* @shtc1_update_client(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.shtc1_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.shtc1_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.shtc1_data* %10, %struct.shtc1_data** %3, align 8
  %11 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  %12 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %11, i32 0, i32 5
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  %14 = load i32, i32* @SHTC1_RESPONSE_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  %19 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  %23 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @HZ, align 4
  %26 = sdiv i32 %25, 10
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i64 @time_after(i64 %21, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  %33 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  %39 = trunc i64 %15 to i32
  %40 = call i32 @shtc1_update_values(%struct.i2c_client* %37, %struct.shtc1_data* %38, i8* %17, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %67

44:                                               ; preds = %36
  %45 = bitcast i8* %17 to i32*
  %46 = call i32 @be16_to_cpup(i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 21875, %47
  %49 = ashr i32 %48, 13
  %50 = sub nsw i32 %49, 45000
  %51 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  %52 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds i8, i8* %17, i64 3
  %54 = bitcast i8* %53 to i32*
  %55 = call i32 @be16_to_cpup(i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 12500, %56
  %58 = ashr i32 %57, 13
  %59 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  %60 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* @jiffies, align 8
  %62 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  %63 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  %64 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  %65 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %44, %31
  br label %67

67:                                               ; preds = %66, %43
  %68 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  %69 = getelementptr inbounds %struct.shtc1_data, %struct.shtc1_data* %68, i32 0, i32 3
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load %struct.shtc1_data*, %struct.shtc1_data** %3, align 8
  br label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = call %struct.shtc1_data* @ERR_PTR(i32 %76)
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi %struct.shtc1_data* [ %74, %73 ], [ %77, %75 ]
  %80 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %80)
  ret %struct.shtc1_data* %79
}

declare dso_local %struct.shtc1_data* @dev_get_drvdata(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @shtc1_update_values(%struct.i2c_client*, %struct.shtc1_data*, i8*, i32) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.shtc1_data* @ERR_PTR(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
