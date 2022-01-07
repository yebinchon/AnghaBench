; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_check_firmware_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_check_firmware_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.firmware = type { i32, i8* }

@.str = private unnamed_addr constant [50 x i8] c"Aborting: firmware file must be in binary format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.firmware*)* @mxt_check_firmware_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_check_firmware_format(%struct.device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %38, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.firmware*, %struct.firmware** %5, align 8
  %11 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = load %struct.firmware*, %struct.firmware** %5, align 8
  %16 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %7, align 1
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp slt i32 %23, 48
  br i1 %24, label %37, label %25

25:                                               ; preds = %14
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sgt i32 %27, 57
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8, i8* %7, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp slt i32 %31, 65
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %25
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sgt i32 %35, 70
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %29, %14
  store i32 0, i32* %3, align 4
  br label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %8

41:                                               ; preds = %8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
