; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_find_special_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_find_special_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_field = type { i32, i64, i32 }
%struct.hid_report = type { i32, %struct.hid_field** }

@HID_UP_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"logical_minimum is not 1 as it should be\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hid_field* (%struct.hid_report*, i32, i32)* @pidff_find_special_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hid_field* @pidff_find_special_field(%struct.hid_report* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hid_field*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hid_report* %0, %struct.hid_report** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %65, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %12 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %9
  %16 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %17 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %16, i32 0, i32 1
  %18 = load %struct.hid_field**, %struct.hid_field*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %18, i64 %20
  %22 = load %struct.hid_field*, %struct.hid_field** %21, align 8
  %23 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HID_UP_PID, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %25, %26
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %15
  %30 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %31 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %30, i32 0, i32 1
  %32 = load %struct.hid_field**, %struct.hid_field*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %32, i64 %34
  %36 = load %struct.hid_field*, %struct.hid_field** %35, align 8
  %37 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %45 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %44, i32 0, i32 1
  %46 = load %struct.hid_field**, %struct.hid_field*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %46, i64 %48
  %50 = load %struct.hid_field*, %struct.hid_field** %49, align 8
  %51 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %62

54:                                               ; preds = %43, %40
  %55 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %56 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %55, i32 0, i32 1
  %57 = load %struct.hid_field**, %struct.hid_field*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %57, i64 %59
  %61 = load %struct.hid_field*, %struct.hid_field** %60, align 8
  store %struct.hid_field* %61, %struct.hid_field** %4, align 8
  br label %69

62:                                               ; preds = %43
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store %struct.hid_field* null, %struct.hid_field** %4, align 8
  br label %69

64:                                               ; preds = %29, %15
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %9

68:                                               ; preds = %9
  store %struct.hid_field* null, %struct.hid_field** %4, align 8
  br label %69

69:                                               ; preds = %68, %62, %54
  %70 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  ret %struct.hid_field* %70
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
