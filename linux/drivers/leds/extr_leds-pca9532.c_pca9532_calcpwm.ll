; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_calcpwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca9532.c_pca9532_calcpwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pca9532_data = type { i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@PCA9532_TYPE_LED = common dso_local global i64 0, align 8
@PCA9532_PWM0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"fear of division by zero %d/%d, wanted %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32)* @pca9532_calcpwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9532_calcpwm(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pca9532_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.pca9532_data* %15, %struct.pca9532_data** %13, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %66, %4
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.pca9532_data*, %struct.pca9532_data** %13, align 8
  %19 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %16
  %25 = load %struct.pca9532_data*, %struct.pca9532_data** %13, align 8
  %26 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCA9532_TYPE_LED, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %24
  %36 = load %struct.pca9532_data*, %struct.pca9532_data** %13, align 8
  %37 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCA9532_PWM0, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %35
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load %struct.pca9532_data*, %struct.pca9532_data** %13, align 8
  %53 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %49, %35, %24
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %16

69:                                               ; preds = %16
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %105

81:                                               ; preds = %69
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sdiv i32 %82, %83
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp sgt i32 %85, 255
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %105

90:                                               ; preds = %81
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.pca9532_data*, %struct.pca9532_data** %13, align 8
  %93 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %91, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.pca9532_data*, %struct.pca9532_data** %13, align 8
  %100 = getelementptr inbounds %struct.pca9532_data, %struct.pca9532_data* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %90, %87, %72
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.pca9532_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
