; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-jabra.c_jabra_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-jabra.c_jabra_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32, i32, i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_VENDOR_DEFINED_MIN = common dso_local global i32 0, align 4
@HID_UP_VENDOR_DEFINED_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"hid=0x%08x appl=0x%08x coll_idx=0x%02x usage_idx=0x%02x: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"defaulted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @jabra_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jabra_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hid_input*, align 8
  %9 = alloca %struct.hid_field*, align 8
  %10 = alloca %struct.hid_usage*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store %struct.hid_input* %1, %struct.hid_input** %8, align 8
  store %struct.hid_field* %2, %struct.hid_field** %9, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %10, align 8
  store i64** %4, i64*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_USAGE_PAGE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @HID_UP_VENDOR_DEFINED_MIN, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %23 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HID_USAGE_PAGE, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @HID_UP_VENDOR_DEFINED_MAX, align 4
  %28 = icmp sle i32 %26, %27
  br label %29

29:                                               ; preds = %21, %6
  %30 = phi i1 [ false, %6 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %33 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %36 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %39 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %42 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @dbg_hid(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40, i32 %43, i8* %47)
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 -1, i32 0
  ret i32 %52
}

declare dso_local i32 @dbg_hid(i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
