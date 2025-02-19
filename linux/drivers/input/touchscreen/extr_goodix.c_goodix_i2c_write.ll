; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_goodix.c_goodix_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32*, i64, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*, i32)* @goodix_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goodix_i2c_write(%struct.i2c_client* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = add i32 %13, 2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 %14, i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %68

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 8
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 255
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @memcpy(i32* %32, i32* %33, i32 %34)
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32* %41, i32** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, 2
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @i2c_transfer(i32 %49, %struct.i2c_msg* %11, i32 1)
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %22
  %56 = load i32, i32* %12, align 4
  br label %66

57:                                               ; preds = %22
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  br label %64

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 0, %63 ]
  br label %66

66:                                               ; preds = %64, %55
  %67 = phi i32 [ %56, %55 ], [ %65, %64 ]
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %19
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
