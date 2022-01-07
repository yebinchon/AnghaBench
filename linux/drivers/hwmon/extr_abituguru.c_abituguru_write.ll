; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru_data = type { i64 }

@ABIT_UGURU_READY_TIMEOUT = common dso_local global i32 0, align 4
@ABIT_UGURU_MAX_RETRIES = common dso_local global i32 0, align 4
@ABIT_UGURU_STATUS_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"timeout exceeded waiting for write state (bank: %d, sensor: %d)\0A\00", align 1
@ABIT_UGURU_CMD = common dso_local global i64 0, align 8
@ABIT_UGURU_STATUS_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"timeout exceeded waiting for read state after write (bank: %d, sensor: %d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"CMD reg does not hold 0xAC after write (bank: %d, sensor: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru_data*, i64, i64, i64*, i32)* @abituguru_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru_write(%struct.abituguru_data* %0, i64 %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.abituguru_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.abituguru_data* %0, %struct.abituguru_data** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @ABIT_UGURU_READY_TIMEOUT, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.abituguru_data*, %struct.abituguru_data** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* @ABIT_UGURU_MAX_RETRIES, align 4
  %19 = call i32 @abituguru_send_address(%struct.abituguru_data* %15, i64 %16, i64 %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %96

24:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %52, %24
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load %struct.abituguru_data*, %struct.abituguru_data** %7, align 8
  %31 = load i32, i32* @ABIT_UGURU_STATUS_WRITE, align 4
  %32 = call i64 @abituguru_wait(%struct.abituguru_data* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* %9, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @ABIT_UGURU_DEBUG(i32 1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %38)
  br label %55

40:                                               ; preds = %29
  %41 = load i64*, i64** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.abituguru_data*, %struct.abituguru_data** %7, align 8
  %47 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ABIT_UGURU_CMD, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outb(i64 %45, i64 %50)
  br label %52

52:                                               ; preds = %40
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %25

55:                                               ; preds = %34, %25
  %56 = load %struct.abituguru_data*, %struct.abituguru_data** %7, align 8
  %57 = load i32, i32* @ABIT_UGURU_STATUS_READ, align 4
  %58 = call i64 @abituguru_wait(%struct.abituguru_data* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i64, i64* %8, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @ABIT_UGURU_DEBUG(i32 1, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %96

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %90, %68
  %70 = load %struct.abituguru_data*, %struct.abituguru_data** %7, align 8
  %71 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ABIT_UGURU_CMD, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @inb_p(i64 %74)
  %76 = icmp ne i32 %75, 172
  br i1 %76, label %77, label %92

77:                                               ; preds = %69
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i64, i64* %8, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i64, i64* %9, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @ABIT_UGURU_DEBUG(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %86)
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %96

90:                                               ; preds = %77
  %91 = call i32 @msleep(i32 0)
  br label %69

92:                                               ; preds = %69
  %93 = load %struct.abituguru_data*, %struct.abituguru_data** %7, align 8
  %94 = call i32 @abituguru_ready(%struct.abituguru_data* %93)
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %82, %60, %22
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @abituguru_send_address(%struct.abituguru_data*, i64, i64, i32) #1

declare dso_local i64 @abituguru_wait(%struct.abituguru_data*, i32) #1

declare dso_local i32 @ABIT_UGURU_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @outb(i64, i64) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @abituguru_ready(%struct.abituguru_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
