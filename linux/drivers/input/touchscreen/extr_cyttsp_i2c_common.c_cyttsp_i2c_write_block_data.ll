; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_i2c_common.c_cyttsp_i2c_write_block_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_i2c_common.c_cyttsp_i2c_write_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyttsp_i2c_write_block_data(%struct.device* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1 x %struct.i2c_msg], align 16
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %12, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 1
  %25 = or i32 %21, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 255
  store i32 %27, i32* %14, align 4
  %28 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %15, i64 0, i64 0
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 3
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @memcpy(i32* %41, i8* %42, i32 %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %15, i64 0, i64 0
  %49 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %15, i64 0, i64 0
  %50 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %49)
  %51 = call i32 @i2c_transfer(i32 %47, %struct.i2c_msg* %48, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %5
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %6, align 4
  br label %67

56:                                               ; preds = %5
  %57 = load i32, i32* %16, align 4
  %58 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %15, i64 0, i64 0
  %59 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %58)
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  br label %65

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 0, %64 ]
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %54
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
