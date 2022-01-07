; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-debug.c_hid_dump_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-debug.c_hid_dump_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.hid_report_enum* }
%struct.hid_report_enum = type { i64 }

@HID_DEBUG_BUFSIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"\0Areport (size %u) (%snumbered) = \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_dump_report(%struct.hid_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hid_report_enum*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* @HID_DEBUG_BUFSIZE, align 8
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call i8* @kmalloc(i64 %12, i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %64

18:                                               ; preds = %4
  %19 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %20 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %19, i32 0, i32 0
  %21 = load %struct.hid_report_enum*, %struct.hid_report_enum** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %21, i64 %23
  store %struct.hid_report_enum* %24, %struct.hid_report_enum** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* @HID_DEBUG_BUFSIZE, align 8
  %27 = sub nsw i64 %26, 1
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.hid_report_enum*, %struct.hid_report_enum** %9, align 8
  %30 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %25, i64 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %34)
  %36 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @hid_debug_event(%struct.hid_device* %36, i8* %37)
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %56, %18
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* @HID_DEBUG_BUFSIZE, align 8
  %46 = sub nsw i64 %45, 1
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %44, i64 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @hid_debug_event(%struct.hid_device* %53, i8* %54)
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %61 = call i32 @hid_debug_event(%struct.hid_device* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @kfree(i8* %62)
  br label %64

64:                                               ; preds = %59, %17
  ret void
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #1

declare dso_local i32 @hid_debug_event(%struct.hid_device*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
