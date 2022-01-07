; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_wheel_cal_sensor_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_wheel_cal_sensor_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i64*, i64*, i64*, i32 (%struct.ad714x_chip*, i64, i64*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ad714x_wheel_plat* }
%struct.ad714x_wheel_plat = type { i64, i32 }

@CDC_RESULT_S0 = common dso_local global i64 0, align 8
@STAGE0_AMBIENT = common dso_local global i64 0, align 8
@PER_STAGE_REG_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*, i32)* @ad714x_wheel_cal_sensor_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad714x_wheel_cal_sensor_val(%struct.ad714x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.ad714x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_wheel_plat*, align 8
  %6 = alloca i32, align 4
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %8 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %11, i64 %13
  store %struct.ad714x_wheel_plat* %14, %struct.ad714x_wheel_plat** %5, align 8
  %15 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %16 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %15, i32 0, i32 3
  %17 = load i32 (%struct.ad714x_chip*, i64, i64*, i32)*, i32 (%struct.ad714x_chip*, i64, i64*, i32)** %16, align 8
  %18 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %19 = load i64, i64* @CDC_RESULT_S0, align 8
  %20 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %21 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  %24 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %25 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %28 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %32 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %36 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %34, %37
  %39 = add i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = call i32 %17(%struct.ad714x_chip* %18, i64 %23, i64* %30, i32 %40)
  %42 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %43 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %115, %2
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.ad714x_wheel_plat*, %struct.ad714x_wheel_plat** %5, align 8
  %49 = getelementptr inbounds %struct.ad714x_wheel_plat, %struct.ad714x_wheel_plat* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %52, label %118

52:                                               ; preds = %46
  %53 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %54 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %53, i32 0, i32 3
  %55 = load i32 (%struct.ad714x_chip*, i64, i64*, i32)*, i32 (%struct.ad714x_chip*, i64, i64*, i32)** %54, align 8
  %56 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %57 = load i64, i64* @STAGE0_AMBIENT, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PER_STAGE_REG_NUM, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  %63 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %64 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = call i32 %55(%struct.ad714x_chip* %56, i64 %62, i64* %68, i32 1)
  %70 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %71 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %78 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %76, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %52
  %86 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %87 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %94 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %93, i32 0, i32 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %92, %99
  %101 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %102 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 %100, i64* %106, align 8
  br label %114

107:                                              ; preds = %52
  %108 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %109 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %107, %85
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %46

118:                                              ; preds = %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
