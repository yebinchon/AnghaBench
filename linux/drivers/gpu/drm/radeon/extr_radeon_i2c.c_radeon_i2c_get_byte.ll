; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_i2c_get_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_i2c_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_chan = type { i32 }
%struct.i2c_msg = type { i32, i64*, i32, i64 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"val = 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"i2c 0x%02x 0x%02x read failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_i2c_get_byte(%struct.radeon_i2c_chan* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.radeon_i2c_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca [2 x i64], align 16
  %11 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.radeon_i2c_chan* %0, %struct.radeon_i2c_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  store i32 1, i32* %13, align 16
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64* %15, i64** %14, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 0, i32* %16, align 16
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i64 1
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  store i32 1, i32* %20, align 16
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64* %22, i64** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  %24 = load i32, i32* @I2C_M_RD, align 4
  store i32 %24, i32* %23, align 16
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %33 = call i32 @i2c_transfer(i32* %31, %struct.i2c_msg* %32, i32 2)
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %37 = load i64, i64* %36, align 16
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %47

42:                                               ; preds = %4
  %43 = load i64, i64* %7, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %45)
  br label %47

47:                                               ; preds = %42, %35
  ret void
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
