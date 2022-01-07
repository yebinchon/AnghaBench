; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_probe_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_probe_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tsc2007 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tsc2007_platform_data = type { i64, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.i2c_device_id = type { i32 }

@MAX_12BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"x_plate_ohms is not set up in platform data\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.tsc2007*, %struct.tsc2007_platform_data*, %struct.i2c_device_id*)* @tsc2007_probe_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc2007_probe_pdev(%struct.i2c_client* %0, %struct.tsc2007* %1, %struct.tsc2007_platform_data* %2, %struct.i2c_device_id* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.tsc2007*, align 8
  %8 = alloca %struct.tsc2007_platform_data*, align 8
  %9 = alloca %struct.i2c_device_id*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store %struct.tsc2007* %1, %struct.tsc2007** %7, align 8
  store %struct.tsc2007_platform_data* %2, %struct.tsc2007_platform_data** %8, align 8
  store %struct.i2c_device_id* %3, %struct.i2c_device_id** %9, align 8
  %10 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %8, align 8
  %11 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %14 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %8, align 8
  %16 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %19 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %8, align 8
  %21 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @MAX_12BIT, align 4
  %27 = sext i32 %26 to i64
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i64 [ %22, %24 ], [ %27, %25 ]
  %30 = trunc i64 %29 to i32
  %31 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %32 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %8, align 8
  %34 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %39

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi i64 [ %35, %37 ], [ 1, %38 ]
  %41 = trunc i64 %40 to i32
  %42 = call i32 @msecs_to_jiffies(i32 %41)
  %43 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %44 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %8, align 8
  %46 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %49 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %8, align 8
  %51 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %54 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %8, align 8
  %56 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %59 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %8, align 8
  %61 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %64 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %8, align 8
  %66 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.tsc2007*, %struct.tsc2007** %7, align 8
  %69 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.tsc2007_platform_data*, %struct.tsc2007_platform_data** %8, align 8
  %71 = getelementptr inbounds %struct.tsc2007_platform_data, %struct.tsc2007_platform_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %39
  %75 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %81

80:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %80, %74
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
