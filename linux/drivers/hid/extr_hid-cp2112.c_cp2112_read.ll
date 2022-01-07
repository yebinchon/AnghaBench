; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp2112_device = type { i64, i32, i32, %struct.hid_device* }
%struct.hid_device = type { i32 }
%struct.cp2112_force_read_report = type { i32, i32 }

@CP2112_DATA_READ_FORCE_SEND = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error requesting data: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"read %d of %zd bytes requested\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cp2112_device*, i32*, i64)* @cp2112_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_read(%struct.cp2112_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cp2112_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.cp2112_force_read_report, align 4
  %10 = alloca i32, align 4
  store %struct.cp2112_device* %0, %struct.cp2112_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %12 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %11, i32 0, i32 3
  %13 = load %struct.hid_device*, %struct.hid_device** %12, align 8
  store %struct.hid_device* %13, %struct.hid_device** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 4, i64* %7, align 8
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i32, i32* @CP2112_DATA_READ_FORCE_SEND, align 4
  %19 = getelementptr inbounds %struct.cp2112_force_read_report, %struct.cp2112_force_read_report* %9, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @cpu_to_be16(i64 %20)
  %22 = getelementptr inbounds %struct.cp2112_force_read_report, %struct.cp2112_force_read_report* %9, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %24 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %23, i32 0, i32 2
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %27 = getelementptr inbounds %struct.cp2112_force_read_report, %struct.cp2112_force_read_report* %9, i32 0, i32 0
  %28 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %29 = call i32 @cp2112_hid_output(%struct.hid_device* %26, i32* %27, i32 8, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @hid_warn(%struct.hid_device* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %73

37:                                               ; preds = %17
  %38 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %39 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %40 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %39, i32 0, i32 2
  %41 = call i32 @cp2112_wait(%struct.cp2112_device* %38, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %73

46:                                               ; preds = %37
  %47 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %48 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %49 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @hid_dbg(%struct.hid_device* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %55 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %60 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %58, %46
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %65 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @memcpy(i32* %63, i32 %66, i64 %67)
  %69 = load %struct.cp2112_device*, %struct.cp2112_device** %5, align 8
  %70 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %62, %44, %32
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cp2112_hid_output(%struct.hid_device*, i32*, i32, i32) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @cp2112_wait(%struct.cp2112_device*, i32*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
