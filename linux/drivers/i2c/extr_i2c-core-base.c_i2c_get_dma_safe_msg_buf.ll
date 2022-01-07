; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_get_dma_safe_msg_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_get_dma_safe_msg_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [51 x i8] c"DMA buffer for addr=0x%02x with length 0 is bogus\0A\00", align 1
@I2C_M_DMA_SAFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"using bounce buffer for addr=0x%02x, len=%d\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_msg* %0, %struct.i2c_msg** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %13
  store i32* null, i32** %3, align 8
  br label %65

25:                                               ; preds = %19
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I2C_M_DMA_SAFE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %3, align 8
  br label %65

36:                                               ; preds = %25
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @I2C_M_RD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32* @kzalloc(i32 %53, i32 %54)
  store i32* %55, i32** %3, align 8
  br label %65

56:                                               ; preds = %36
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32* @kmemdup(i32* %59, i32 %62, i32 %63)
  store i32* %64, i32** %3, align 8
  br label %65

65:                                               ; preds = %56, %50, %32, %24
  %66 = load i32*, i32** %3, align 8
  ret i32* %66
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
