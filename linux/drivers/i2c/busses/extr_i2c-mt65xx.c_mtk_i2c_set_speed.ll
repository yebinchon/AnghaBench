; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt65xx.c_mtk_i2c_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_i2c = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAX_FS_MODE_SPEED = common dso_local global i32 0, align 4
@I2C_TIME_DEFAULT_VALUE = common dso_local global i32 0, align 4
@I2C_TIME_CLR_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_i2c*, i32)* @mtk_i2c_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_i2c_set_speed(%struct.mtk_i2c* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtk_i2c* %0, %struct.mtk_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %15 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = udiv i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @MAX_FS_MODE_SPEED, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %2
  %25 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MAX_FS_MODE_SPEED, align 4
  %28 = call i32 @mtk_i2c_calculate_speed(%struct.mtk_i2c* %25, i32 %26, i32 %27, i32* %9, i32* %10)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %3, align 4
  br label %112

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 %34, 8
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %39 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @mtk_i2c_calculate_speed(%struct.mtk_i2c* %40, i32 %41, i32 %42, i32* %7, i32* %8)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %3, align 4
  br label %112

48:                                               ; preds = %33
  %49 = load i32, i32* @I2C_TIME_DEFAULT_VALUE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 12
  %52 = or i32 %49, %51
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %53, 8
  %55 = or i32 %52, %54
  %56 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %57 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %59 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %48
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 6
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %8, align 4
  %70 = shl i32 %69, 12
  %71 = or i32 %68, %70
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 9
  %74 = or i32 %71, %73
  %75 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %76 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %64, %48
  br label %111

78:                                               ; preds = %2
  %79 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @mtk_i2c_calculate_speed(%struct.mtk_i2c* %79, i32 %80, i32 %81, i32* %7, i32* %8)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %3, align 4
  br label %112

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = shl i32 %88, 8
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %93 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @I2C_TIME_CLR_VALUE, align 4
  %95 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %96 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %98 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %97, i32 0, i32 5
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %87
  %104 = load i32, i32* %8, align 4
  %105 = shl i32 %104, 6
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.mtk_i2c*, %struct.mtk_i2c** %4, align 8
  %109 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %103, %87
  br label %111

111:                                              ; preds = %110, %77
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %85, %46, %31
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @mtk_i2c_calculate_speed(%struct.mtk_i2c*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
