; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_register_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_register_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_field = type { i64, %struct.hid_report*, %struct.hid_usage*, i32* }
%struct.hid_usage = type { i32 }
%struct.hid_report = type { i64, %struct.hid_field**, i32 }

@HID_MAX_FIELDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"too many fields in report\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hid_field* (%struct.hid_report*, i32, i32)* @hid_register_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hid_field* @hid_register_field(%struct.hid_report* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hid_field*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_field*, align 8
  store %struct.hid_report* %0, %struct.hid_report** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %10 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HID_MAX_FIELDS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %16 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @hid_err(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.hid_field* null, %struct.hid_field** %4, align 8
  br label %67

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = add i64 32, %22
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = add i64 %23, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.hid_field* @kzalloc(i32 %28, i32 %29)
  store %struct.hid_field* %30, %struct.hid_field** %8, align 8
  %31 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %32 = icmp ne %struct.hid_field* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  store %struct.hid_field* null, %struct.hid_field** %4, align 8
  br label %67

34:                                               ; preds = %19
  %35 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %36 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  %39 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %40 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %42 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %43 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %42, i32 0, i32 1
  %44 = load %struct.hid_field**, %struct.hid_field*** %43, align 8
  %45 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %46 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %44, i64 %47
  store %struct.hid_field* %41, %struct.hid_field** %48, align 8
  %49 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %50 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %49, i64 1
  %51 = bitcast %struct.hid_field* %50 to %struct.hid_usage*
  %52 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %53 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %52, i32 0, i32 2
  store %struct.hid_usage* %51, %struct.hid_usage** %53, align 8
  %54 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %55 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %54, i32 0, i32 2
  %56 = load %struct.hid_usage*, %struct.hid_usage** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %56, i64 %58
  %60 = bitcast %struct.hid_usage* %59 to i32*
  %61 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %62 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %61, i32 0, i32 3
  store i32* %60, i32** %62, align 8
  %63 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %64 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  %65 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %64, i32 0, i32 1
  store %struct.hid_report* %63, %struct.hid_report** %65, align 8
  %66 = load %struct.hid_field*, %struct.hid_field** %8, align 8
  store %struct.hid_field* %66, %struct.hid_field** %4, align 8
  br label %67

67:                                               ; preds = %34, %33, %14
  %68 = load %struct.hid_field*, %struct.hid_field** %4, align 8
  ret %struct.hid_field* %68
}

declare dso_local i32 @hid_err(i32, i8*) #1

declare dso_local %struct.hid_field* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
