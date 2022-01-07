; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_i2c_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_i2c_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device = type { i32, i32*, i32*, i32, i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not acquire lock\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"i2c read error on %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_device*, i32)* @dib8000_i2c_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_i2c_read16(%struct.i2c_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_device* %0, %struct.i2c_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %10 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = ashr i32 %12, 1
  store i32 %13, i32* %9, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i64 1
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  %19 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %18, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1
  store i32 2, i32* %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 3
  %26 = load i32, i32* @I2C_M_RD, align 4
  store i32 %26, i32* %25, align 8
  %27 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @mutex_lock_interruptible(i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

34:                                               ; preds = %2
  %35 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 8
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  %57 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %61 = call i32 @i2c_transfer(i32 %59, %struct.i2c_msg* %60, i32 2)
  %62 = icmp ne i32 %61, 2
  br i1 %62, label %63, label %66

63:                                               ; preds = %34
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %34
  %67 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 1
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %72, %77
  store i32 %78, i32* %6, align 4
  %79 = load %struct.i2c_device*, %struct.i2c_device** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_device, %struct.i2c_device* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @mutex_unlock(i32 %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %66, %32
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @mutex_lock_interruptible(i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
