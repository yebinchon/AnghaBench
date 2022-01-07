; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_check_bootloader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_check_bootloader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@MXT_FW_CHG_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Update wait error %d\0A\00", align 1
@MXT_BOOT_STATUS_MASK = common dso_local global i32 0, align 4
@MXT_FRAME_CRC_CHECK = common dso_local global i32 0, align 4
@MXT_FRAME_CRC_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Bootloader CRC fail\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid bootloader state %02X != %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*, i32, i32)* @mxt_check_bootloader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_check_bootloader(%struct.mxt_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxt_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mxt_data*, %struct.mxt_data** %5, align 8
  %12 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %8, align 8
  br label %15

15:                                               ; preds = %57, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.mxt_data*, %struct.mxt_data** %5, align 8
  %20 = load %struct.mxt_data*, %struct.mxt_data** %5, align 8
  %21 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %20, i32 0, i32 0
  %22 = load i32, i32* @MXT_FW_CHG_TIMEOUT, align 4
  %23 = call i32 @mxt_wait_for_completion(%struct.mxt_data* %19, i32* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %84

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %15
  %33 = load %struct.mxt_data*, %struct.mxt_data** %5, align 8
  %34 = call i32 @mxt_bootloader_read(%struct.mxt_data* %33, i32* %9, i32 1)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 129
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.mxt_data*, %struct.mxt_data** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mxt_get_bootloader_version(%struct.mxt_data* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %69 [
    i32 129, label %48
    i32 128, label %48
    i32 131, label %48
    i32 130, label %53
  ]

48:                                               ; preds = %46, %46, %46
  %49 = load i32, i32* @MXT_BOOT_STATUS_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %72

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @MXT_FRAME_CRC_CHECK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %15

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @MXT_FRAME_CRC_FAIL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %84

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  br label %72

69:                                               ; preds = %46
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %84

72:                                               ; preds = %68, %48
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.device*, %struct.device** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %76, %69, %62, %37, %26
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @mxt_wait_for_completion(%struct.mxt_data*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mxt_bootloader_read(%struct.mxt_data*, i32*, i32) #1

declare dso_local i32 @mxt_get_bootloader_version(%struct.mxt_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
