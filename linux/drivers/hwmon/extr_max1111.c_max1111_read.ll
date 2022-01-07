; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1111.c_max1111_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max1111.c_max1111_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max1111_data = type { i32*, i32, i32*, i32, i32, i32 }

@MAX1111_CTRL_PD0 = common dso_local global i32 0, align 4
@MAX1111_CTRL_PD1 = common dso_local global i32 0, align 4
@MAX1111_CTRL_SGL = common dso_local global i32 0, align 4
@MAX1111_CTRL_UNI = common dso_local global i32 0, align 4
@MAX1111_CTRL_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"spi_sync failed with %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @max1111_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1111_read(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max1111_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.max1111_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.max1111_data* %11, %struct.max1111_data** %6, align 8
  %12 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %13 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %12, i32 0, i32 3
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %17 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %15, %18
  %20 = load i32, i32* @MAX1111_CTRL_PD0, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MAX1111_CTRL_PD1, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MAX1111_CTRL_SGL, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MAX1111_CTRL_UNI, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MAX1111_CTRL_STR, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %31 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %35 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %38 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %37, i32 0, i32 4
  %39 = call i32 @spi_sync(i32 %36, i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %47 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %46, i32 0, i32 3
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %80

50:                                               ; preds = %2
  %51 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %52 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %57 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.max1111_data*, %struct.max1111_data** %6, align 8
  %62 = getelementptr inbounds %struct.max1111_data, %struct.max1111_data* %61, i32 0, i32 3
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, 192
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 63
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %50
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %80

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 2
  %77 = load i32, i32* %8, align 4
  %78 = ashr i32 %77, 6
  %79 = or i32 %76, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %71, %42
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.max1111_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
