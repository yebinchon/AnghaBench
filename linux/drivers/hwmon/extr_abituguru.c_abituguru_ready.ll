; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru_data = type { i32, i64 }

@ABIT_UGURU_READY_TIMEOUT = common dso_local global i32 0, align 4
@ABIT_UGURU_DATA = common dso_local global i64 0, align 8
@ABIT_UGURU_STATUS_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"timeout exceeded waiting for ready state\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ABIT_UGURU_CMD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"CMD reg does not hold 0xAC after ready command\0A\00", align 1
@ABIT_UGURU_STATUS_INPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"state != more input after ready command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abituguru_data*)* @abituguru_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru_ready(%struct.abituguru_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.abituguru_data*, align 8
  %4 = alloca i32, align 4
  store %struct.abituguru_data* %0, %struct.abituguru_data** %3, align 8
  %5 = load i32, i32* @ABIT_UGURU_READY_TIMEOUT, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.abituguru_data*, %struct.abituguru_data** %3, align 8
  %7 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.abituguru_data*, %struct.abituguru_data** %3, align 8
  %13 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ABIT_UGURU_DATA, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outb(i32 0, i64 %16)
  %18 = load %struct.abituguru_data*, %struct.abituguru_data** %3, align 8
  %19 = load i32, i32* @ABIT_UGURU_STATUS_READY, align 4
  %20 = call i64 @abituguru_wait(%struct.abituguru_data* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = call i32 @ABIT_UGURU_DEBUG(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %71

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %44, %26
  %28 = load %struct.abituguru_data*, %struct.abituguru_data** %3, align 8
  %29 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ABIT_UGURU_CMD, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @inb_p(i64 %32)
  %34 = icmp ne i32 %33, 172
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 @ABIT_UGURU_DEBUG(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %71

44:                                               ; preds = %35
  %45 = call i32 @msleep(i32 0)
  br label %27

46:                                               ; preds = %27
  %47 = load i32, i32* @ABIT_UGURU_READY_TIMEOUT, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %66, %46
  %49 = load %struct.abituguru_data*, %struct.abituguru_data** %3, align 8
  %50 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ABIT_UGURU_DATA, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inb_p(i64 %53)
  %55 = load i32, i32* @ABIT_UGURU_STATUS_INPUT, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = call i32 @ABIT_UGURU_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %71

66:                                               ; preds = %57
  %67 = call i32 @msleep(i32 0)
  br label %48

68:                                               ; preds = %48
  %69 = load %struct.abituguru_data*, %struct.abituguru_data** %3, align 8
  %70 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %62, %40, %22, %10
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @abituguru_wait(%struct.abituguru_data*, i32) #1

declare dso_local i32 @ABIT_UGURU_DEBUG(i32, i8*) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
