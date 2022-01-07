; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-debug.c_hid_dump_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-debug.c_hid_dump_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.hid_report_enum* }
%struct.hid_report_enum = type { %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.seq_file = type { i32 }
%struct.hid_report = type { i32, i64, i32, i32* }

@hid_dump_device.table = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"INPUT\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"FEATURE\00", align 1
@HID_REPORT_TYPES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Field(%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_dump_device(%struct.hid_device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.hid_report_enum*, align 8
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %90, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @HID_REPORT_TYPES, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %93

14:                                               ; preds = %10
  %15 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 0
  %17 = load %struct.hid_report_enum*, %struct.hid_report_enum** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %17, i64 %19
  store %struct.hid_report_enum* %20, %struct.hid_report_enum** %5, align 8
  %21 = load %struct.hid_report_enum*, %struct.hid_report_enum** %5, align 8
  %22 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 0
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8
  store %struct.list_head* %24, %struct.list_head** %7, align 8
  br label %25

25:                                               ; preds = %85, %14
  %26 = load %struct.list_head*, %struct.list_head** %7, align 8
  %27 = load %struct.hid_report_enum*, %struct.hid_report_enum** %5, align 8
  %28 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %27, i32 0, i32 0
  %29 = icmp ne %struct.list_head* %26, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %25
  %31 = load %struct.list_head*, %struct.list_head** %7, align 8
  %32 = bitcast %struct.list_head* %31 to %struct.hid_report*
  store %struct.hid_report* %32, %struct.hid_report** %6, align 8
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = call i32 @tab(i32 2, %struct.seq_file* %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* @hid_dump_device.table, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %42 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %47 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %48 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %30
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %54 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [3 x i8*], [3 x i8*]* @hid_dump_device.table, i64 0, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %82, %51
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %64 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = call i32 @tab(i32 4, %struct.seq_file* %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %71)
  %73 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %74 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = call i32 @hid_dump_field(i32 %79, i32 6, %struct.seq_file* %80)
  br label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %61

85:                                               ; preds = %61
  %86 = load %struct.list_head*, %struct.list_head** %7, align 8
  %87 = getelementptr inbounds %struct.list_head, %struct.list_head* %86, i32 0, i32 0
  %88 = load %struct.list_head*, %struct.list_head** %87, align 8
  store %struct.list_head* %88, %struct.list_head** %7, align 8
  br label %25

89:                                               ; preds = %25
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %8, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %10

93:                                               ; preds = %10
  ret void
}

declare dso_local i32 @tab(i32, %struct.seq_file*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @hid_dump_field(i32, i32, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
