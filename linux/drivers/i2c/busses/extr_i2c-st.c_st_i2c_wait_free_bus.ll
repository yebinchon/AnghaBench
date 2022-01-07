; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_wait_free_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_wait_free_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_i2c_dev = type { i32, i32, i64 }

@SSC_STA = common dso_local global i64 0, align 8
@SSC_STA_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bus not free (status = 0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to recover the bus (%d)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_i2c_dev*)* @st_i2c_wait_free_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_i2c_wait_free_bus(%struct.st_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.st_i2c_dev* %0, %struct.st_i2c_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %12 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SSC_STA, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SSC_STA_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %48

22:                                               ; preds = %10
  %23 = call i32 @usleep_range(i32 2000, i32 4000)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %29 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %34 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %33, i32 0, i32 1
  %35 = call i32 @i2c_recover_bus(i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %27
  %39 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %3, align 8
  %40 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %27
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %38, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @i2c_recover_bus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
