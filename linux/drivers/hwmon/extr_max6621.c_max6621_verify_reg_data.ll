; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6621.c_max6621_verify_reg_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6621.c_max6621_verify_reg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@MAX6621_PECI_ERR_MIN = common dso_local global i32 0, align 4
@MAX6621_PECI_ERR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PECI error code - err 0x%04x.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"PECI transaction failed - err 0x%04x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Polling disabled - err 0x%04x.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"First poll not completed on startup - err 0x%04x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Resource is disabled - err 0x%04x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"No alert active - err 0x%04x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @max6621_verify_reg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6621_verify_reg_data(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MAX6621_PECI_ERR_MIN, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MAX6621_PECI_ERR_MAX, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %9, %2
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %51 [
    i32 128, label %21
    i32 131, label %27
    i32 130, label %33
    i32 129, label %39
    i32 132, label %45
  ]

21:                                               ; preds = %19
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_dbg(%struct.device* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %19
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %52

39:                                               ; preds = %19
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %52

45:                                               ; preds = %19
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_dbg(%struct.device* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EOPNOTSUPP, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %45, %39, %33, %27, %21, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
