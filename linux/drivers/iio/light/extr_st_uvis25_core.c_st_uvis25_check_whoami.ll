; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_st_uvis25_core.c_st_uvis25_check_whoami.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_st_uvis25_core.c_st_uvis25_check_whoami.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_uvis25_hw = type { i32 }

@ST_UVIS25_REG_WHOAMI_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to read whoami register\0A\00", align 1
@ST_UVIS25_REG_WHOAMI_VAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"wrong whoami {%02x vs %02x}\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_uvis25_hw*)* @st_uvis25_check_whoami to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_uvis25_check_whoami(%struct.st_uvis25_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_uvis25_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.st_uvis25_hw* %0, %struct.st_uvis25_hw** %3, align 8
  %6 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %3, align 8
  %7 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ST_UVIS25_REG_WHOAMI_ADDR, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %3, align 8
  %15 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regmap_get_device(i32 %16)
  %18 = call i32 (i32, i8*, ...) @dev_err(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %35

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ST_UVIS25_REG_WHOAMI_VAL, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.st_uvis25_hw*, %struct.st_uvis25_hw** %3, align 8
  %26 = getelementptr inbounds %struct.st_uvis25_hw, %struct.st_uvis25_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regmap_get_device(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ST_UVIS25_REG_WHOAMI_VAL, align 4
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %24, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
