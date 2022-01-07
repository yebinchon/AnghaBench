; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_register_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_register_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_report = type { i32, i32, i32, i32, %struct.hid_device*, i64 }
%struct.hid_device = type { %struct.hid_report_enum* }
%struct.hid_report_enum = type { i32, i32, %struct.hid_report** }

@HID_MAX_IDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hid_report* @hid_register_report(%struct.hid_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hid_report_enum*, align 8
  %11 = alloca %struct.hid_report*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 0
  %14 = load %struct.hid_report_enum*, %struct.hid_report_enum** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %14, i64 %16
  store %struct.hid_report_enum* %17, %struct.hid_report_enum** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @HID_MAX_IDS, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.hid_report* null, %struct.hid_report** %5, align 8
  br label %79

22:                                               ; preds = %4
  %23 = load %struct.hid_report_enum*, %struct.hid_report_enum** %10, align 8
  %24 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %23, i32 0, i32 2
  %25 = load %struct.hid_report**, %struct.hid_report*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %25, i64 %27
  %29 = load %struct.hid_report*, %struct.hid_report** %28, align 8
  %30 = icmp ne %struct.hid_report* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %22
  %32 = load %struct.hid_report_enum*, %struct.hid_report_enum** %10, align 8
  %33 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %32, i32 0, i32 2
  %34 = load %struct.hid_report**, %struct.hid_report*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %34, i64 %36
  %38 = load %struct.hid_report*, %struct.hid_report** %37, align 8
  store %struct.hid_report* %38, %struct.hid_report** %5, align 8
  br label %79

39:                                               ; preds = %22
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.hid_report* @kzalloc(i32 32, i32 %40)
  store %struct.hid_report* %41, %struct.hid_report** %11, align 8
  %42 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %43 = icmp ne %struct.hid_report* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store %struct.hid_report* null, %struct.hid_report** %5, align 8
  br label %79

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.hid_report_enum*, %struct.hid_report_enum** %10, align 8
  %50 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %54 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %57 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %59 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %61 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %62 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %61, i32 0, i32 4
  store %struct.hid_device* %60, %struct.hid_device** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %65 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %67 = load %struct.hid_report_enum*, %struct.hid_report_enum** %10, align 8
  %68 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %67, i32 0, i32 2
  %69 = load %struct.hid_report**, %struct.hid_report*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %69, i64 %71
  store %struct.hid_report* %66, %struct.hid_report** %72, align 8
  %73 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  %74 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %73, i32 0, i32 3
  %75 = load %struct.hid_report_enum*, %struct.hid_report_enum** %10, align 8
  %76 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %75, i32 0, i32 1
  %77 = call i32 @list_add_tail(i32* %74, i32* %76)
  %78 = load %struct.hid_report*, %struct.hid_report** %11, align 8
  store %struct.hid_report* %78, %struct.hid_report** %5, align 8
  br label %79

79:                                               ; preds = %51, %44, %31, %21
  %80 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  ret %struct.hid_report* %80
}

declare dso_local %struct.hid_report* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
