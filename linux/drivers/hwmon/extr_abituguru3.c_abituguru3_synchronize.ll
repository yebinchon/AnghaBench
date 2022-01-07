; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_synchronize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_synchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru3_data = type { i64 }

@ABIT_UGURU3_SYNCHRONIZE_TIMEOUT = common dso_local global i32 0, align 4
@ABIT_UGURU3_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"synchronize timeout during initial busy wait, status: 0x%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ABIT_UGURU3_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"synchronize timeout after sending 0x20, status: 0x%02x\0A\00", align 1
@ABIT_UGURU3_CMD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"synchronize timeout after sending 0x10, status: 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"synchronize timeout after sending 0x00, status: 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"synchronize timeout waiting for read, status: 0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"synchronize timeout cmd does not hold 0xAC after synchronize, cmd: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru3_data*)* @abituguru3_synchronize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru3_synchronize(%struct.abituguru3_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.abituguru3_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.abituguru3_data* %0, %struct.abituguru3_data** %3, align 8
  %6 = load i32, i32* @ABIT_UGURU3_SYNCHRONIZE_TIMEOUT, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %8 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %19 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ABIT_UGURU3_DATA, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 32, i64 %22)
  %24 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %25 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %101

34:                                               ; preds = %17
  %35 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %36 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 16, i64 %39)
  %41 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %42 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %101

51:                                               ; preds = %34
  %52 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %53 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 0, i64 %56)
  %58 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %59 = call i32 @abituguru3_wait_while_busy(%struct.abituguru3_data* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %101

68:                                               ; preds = %51
  %69 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %70 = call i32 @abituguru3_wait_for_read(%struct.abituguru3_data* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ABIT_UGURU3_SUCCESS, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %101

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %98, %79
  %81 = load %struct.abituguru3_data*, %struct.abituguru3_data** %3, align 8
  %82 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ABIT_UGURU3_CMD, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @inb(i64 %85)
  store i32 %86, i32* %4, align 4
  %87 = icmp ne i32 %86, 172
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @ABIT_UGURU3_DEBUG(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %101

98:                                               ; preds = %88
  %99 = call i32 @msleep(i32 1)
  br label %80

100:                                              ; preds = %80
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %93, %74, %63, %46, %29, %12
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @abituguru3_wait_while_busy(%struct.abituguru3_data*) #1

declare dso_local i32 @ABIT_UGURU3_DEBUG(i8*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @abituguru3_wait_for_read(%struct.abituguru3_data*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
