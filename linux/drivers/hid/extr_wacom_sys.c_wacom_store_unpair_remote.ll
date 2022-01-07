; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_store_unpair_remote.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_store_unpair_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.wacom = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@WAC_CMD_UNPAIR_ALL = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"remote: unrecognized unpair code: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @wacom_store_unpair_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_store_unpair_remote(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.hid_device*, align 8
  %13 = alloca %struct.wacom*, align 8
  %14 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 0, i8* %10, align 1
  %15 = load %struct.kobject*, %struct.kobject** %6, align 8
  %16 = getelementptr inbounds %struct.kobject, %struct.kobject* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.device* @kobj_to_dev(i32 %17)
  store %struct.device* %18, %struct.device** %11, align 8
  %19 = load %struct.device*, %struct.device** %11, align 8
  %20 = call %struct.hid_device* @to_hid_device(%struct.device* %19)
  store %struct.hid_device* %20, %struct.hid_device** %12, align 8
  %21 = load %struct.hid_device*, %struct.hid_device** %12, align 8
  %22 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %21)
  store %struct.wacom* %22, %struct.wacom** %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i8, i8* @WAC_CMD_UNPAIR_ALL, align 1
  store i8 %27, i8* %10, align 1
  br label %34

28:                                               ; preds = %4
  %29 = load %struct.wacom*, %struct.wacom** %13, align 8
  %30 = getelementptr inbounds %struct.wacom, %struct.wacom* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @hid_info(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  store i32 -1, i32* %5, align 4
  br label %54

34:                                               ; preds = %26
  %35 = load %struct.wacom*, %struct.wacom** %13, align 8
  %36 = getelementptr inbounds %struct.wacom, %struct.wacom* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.wacom*, %struct.wacom** %13, align 8
  %39 = load i8, i8* %10, align 1
  %40 = call i32 @wacom_cmd_unpair_remote(%struct.wacom* %38, i8 zeroext %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.wacom*, %struct.wacom** %13, align 8
  %42 = getelementptr inbounds %struct.wacom, %struct.wacom* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  br label %51

49:                                               ; preds = %34
  %50 = load i64, i64* %9, align 8
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i64 [ %48, %46 ], [ %50, %49 ]
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %28
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.device* @kobj_to_dev(i32) #1

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @hid_info(i32, i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wacom_cmd_unpair_remote(%struct.wacom*, i8 zeroext) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
