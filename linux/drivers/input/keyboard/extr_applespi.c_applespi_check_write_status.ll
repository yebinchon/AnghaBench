; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_check_write_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_check_write_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@applespi_check_write_status.status_ok = internal global [4 x i32] [i32 172, i32 39, i32 104, i32 213], align 16
@.str = private unnamed_addr constant [29 x i8] c"Error writing to device: %d\0A\00", align 1
@APPLESPI_STATUS_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error writing to device: %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.applespi_data*, i32)* @applespi_check_write_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applespi_check_write_status(%struct.applespi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.applespi_data*, align 8
  %5 = alloca i32, align 4
  store %struct.applespi_data* %0, %struct.applespi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %10 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  %14 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %17 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @APPLESPI_STATUS_SIZE, align 4
  %20 = call i64 @memcmp(i32 %18, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @applespi_check_write_status.status_ok, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %15
  %23 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %24 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* @APPLESPI_STATUS_SIZE, align 4
  %28 = load %struct.applespi_data*, %struct.applespi_data** %4, align 8
  %29 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %22, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
