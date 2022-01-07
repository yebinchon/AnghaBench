; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_report_xyz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_bma150.c_bma150_report_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bma150_data = type { i32, i32 }

@BMA150_XYZ_DATA_SIZE = common dso_local global i32 0, align 4
@BMA150_ACC_X_LSB_REG = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bma150_data*)* @bma150_report_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bma150_report_xyz(%struct.bma150_data* %0) #0 {
  %2 = alloca %struct.bma150_data*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bma150_data* %0, %struct.bma150_data** %2, align 8
  %10 = load i32, i32* @BMA150_XYZ_DATA_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load %struct.bma150_data*, %struct.bma150_data** %2, align 8
  %15 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BMA150_ACC_X_LSB_REG, align 4
  %18 = load i32, i32* @BMA150_XYZ_DATA_SIZE, align 4
  %19 = call i32 @i2c_smbus_read_i2c_block_data(i32 %16, i32 %17, i32 %18, i32* %13)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @BMA150_XYZ_DATA_SIZE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %77

24:                                               ; preds = %1
  %25 = getelementptr inbounds i32, i32* %13, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = and i32 192, %26
  %28 = ashr i32 %27, 6
  %29 = getelementptr inbounds i32, i32* %13, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 2
  %32 = or i32 %28, %31
  store i32 %32, i32* %5, align 4
  %33 = getelementptr inbounds i32, i32* %13, i64 2
  %34 = load i32, i32* %33, align 8
  %35 = and i32 192, %34
  %36 = ashr i32 %35, 6
  %37 = getelementptr inbounds i32, i32* %13, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 2
  %40 = or i32 %36, %39
  store i32 %40, i32* %6, align 4
  %41 = getelementptr inbounds i32, i32* %13, i64 4
  %42 = load i32, i32* %41, align 16
  %43 = and i32 192, %42
  %44 = ashr i32 %43, 6
  %45 = getelementptr inbounds i32, i32* %13, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 2
  %48 = or i32 %44, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @sign_extend32(i32 %49, i32 9)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @sign_extend32(i32 %51, i32 9)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @sign_extend32(i32 %53, i32 9)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.bma150_data*, %struct.bma150_data** %2, align 8
  %56 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ABS_X, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @input_report_abs(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.bma150_data*, %struct.bma150_data** %2, align 8
  %62 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ABS_Y, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @input_report_abs(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.bma150_data*, %struct.bma150_data** %2, align 8
  %68 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ABS_Z, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @input_report_abs(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.bma150_data*, %struct.bma150_data** %2, align 8
  %74 = getelementptr inbounds %struct.bma150_data, %struct.bma150_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @input_sync(i32 %75)
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %24, %23
  %78 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %9, align 4
  switch i32 %79, label %81 [
    i32 0, label %80
    i32 1, label %80
  ]

80:                                               ; preds = %77, %77
  ret void

81:                                               ; preds = %77
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32*) #2

declare dso_local i32 @sign_extend32(i32, i32) #2

declare dso_local i32 @input_report_abs(i32, i32, i32) #2

declare dso_local i32 @input_sync(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
