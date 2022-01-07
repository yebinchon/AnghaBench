; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-baytrail.c_i2c_dw_probe_lock_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-baytrail.c_i2c_dw_probe_lock_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_SEM\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"I2C bus managed by PUNIT\0A\00", align 1
@iosf_mbi_block_punit_i2c_access = common dso_local global i32 0, align 4
@iosf_mbi_unblock_punit_i2c_access = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_dw_probe_lock_support(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %8 = icmp ne %struct.dw_i2c_dev* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %11 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %53

15:                                               ; preds = %9
  %16 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %17 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ACPI_HANDLE(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %53

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @acpi_evaluate_integer(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %5)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @ACPI_FAILURE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %53

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %53

34:                                               ; preds = %30
  %35 = call i32 (...) @iosf_mbi_available()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %34
  %41 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %42 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_info(i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @iosf_mbi_block_punit_i2c_access, align 4
  %46 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %47 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @iosf_mbi_unblock_punit_i2c_access, align 4
  %49 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %50 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %52 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %40, %37, %33, %29, %22, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ACPI_HANDLE(i32) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @iosf_mbi_available(...) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
