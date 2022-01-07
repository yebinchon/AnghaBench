; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_derive_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mxs.c_mxs_i2c_derive_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_i2c_dev = type { i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Speed too high (%u.%03u kHz), using %u.%03u kHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Speed too low (%u.%03u kHz), using %u.%03u kHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"speed=%u(actual %u) divider=%u low=%u high=%u xmit=%u rcv=%u leadin=%u bus_free=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_i2c_dev*, i32)* @mxs_i2c_derive_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_i2c_derive_timing(%struct.mxs_i2c_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mxs_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.device*, align 8
  store %struct.mxs_i2c_dev* %0, %struct.mxs_i2c_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 24000000, i32* %5, align 4
  %14 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %15 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %14, i32 0, i32 3
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %13, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @DIV_ROUND_UP(i32 24000000, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 25
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  store i32 25, i32* %6, align 4
  %22 = load %struct.device*, %struct.device** %13, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, 1000
  %25 = load i32, i32* %4, align 4
  %26 = srem i32 %25, 1000
  %27 = load i32, i32* %6, align 4
  %28 = sdiv i32 24000000, %27
  %29 = sdiv i32 %28, 1000
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 24000000, %30
  %32 = srem i32 %31, 1000
  %33 = call i32 @dev_warn(%struct.device* %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26, i32 %29, i32 %32)
  br label %51

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 1897
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  store i32 1897, i32* %6, align 4
  %38 = load %struct.device*, %struct.device** %13, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sdiv i32 %39, 1000
  %41 = load i32, i32* %4, align 4
  %42 = srem i32 %41, 1000
  %43 = load i32, i32* %6, align 4
  %44 = sdiv i32 24000000, %43
  %45 = sdiv i32 %44, 1000
  %46 = load i32, i32* %6, align 4
  %47 = sdiv i32 24000000, %46
  %48 = srem i32 %47, 1000
  %49 = call i32 @dev_warn(%struct.device* %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %37, %34
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 100000
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, 13
  %57 = call i32 @DIV_ROUND_CLOSEST(i32 %56, i32 19)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = mul nsw i32 %58, 6
  %60 = call i32 @DIV_ROUND_CLOSEST(i32 %59, i32 19)
  store i32 %60, i32* %7, align 4
  %61 = call i32 @DIV_ROUND_UP(i32 14400, i32 1000)
  store i32 %61, i32* %12, align 4
  %62 = call i32 @DIV_ROUND_UP(i32 31200, i32 1000)
  store i32 %62, i32* %11, align 4
  br label %72

63:                                               ; preds = %51
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 %64, 47
  %66 = call i32 @DIV_ROUND_CLOSEST(i32 %65, i32 87)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = mul nsw i32 %67, 40
  %69 = call i32 @DIV_ROUND_CLOSEST(i32 %68, i32 87)
  store i32 %69, i32* %7, align 4
  %70 = call i32 @DIV_ROUND_UP(i32 112800, i32 1000)
  store i32 %70, i32* %12, align 4
  %71 = call i32 @DIV_ROUND_UP(i32 112800, i32 1000)
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %63, %54
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, 3
  %75 = sdiv i32 %74, 8
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 %76, 3
  %78 = sdiv i32 %77, 8
  store i32 %78, i32* %10, align 4
  %79 = load %struct.device*, %struct.device** %13, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sdiv i32 24000000, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @dev_dbg(%struct.device* %79, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %91, 2
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %93, 7
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = shl i32 %95, 16
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %100 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 %101, 16
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %106 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %11, align 4
  %108 = shl i32 %107, 16
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.mxs_i2c_dev*, %struct.mxs_i2c_dev** %3, align 8
  %112 = getelementptr inbounds %struct.mxs_i2c_dev, %struct.mxs_i2c_dev* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
