; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.ms_data = type { i64 }

@MS_ERGONOMY = common dso_local global i64 0, align 8
@MS_PRESENTER = common dso_local global i64 0, align 8
@MS_SURFACE_DIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @ms_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ms_data*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %19 = call %struct.ms_data* @hid_get_drvdata(%struct.hid_device* %18)
  store %struct.ms_data* %19, %struct.ms_data** %14, align 8
  %20 = load %struct.ms_data*, %struct.ms_data** %14, align 8
  %21 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %15, align 8
  %24 = load i64, i64* @MS_ERGONOMY, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %6
  %28 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %29 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %30 = load i64**, i64*** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @ms_ergonomy_kb_quirk(%struct.hid_input* %28, %struct.hid_usage* %29, i64** %30, i32* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %7, align 4
  br label %69

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %6
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* @MS_PRESENTER, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %45 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %46 = load i64**, i64*** %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = call i64 @ms_presenter_8k_quirk(%struct.hid_input* %44, %struct.hid_usage* %45, i64** %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %69

51:                                               ; preds = %43, %38
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* @MS_SURFACE_DIAL, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %58 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %59 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %60 = load i64**, i64*** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @ms_surface_dial_quirk(%struct.hid_input* %57, %struct.hid_field* %58, %struct.hid_usage* %59, i64** %60, i32* %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %7, align 4
  br label %69

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %51
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %68, %65, %50, %35
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.ms_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @ms_ergonomy_kb_quirk(%struct.hid_input*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i64 @ms_presenter_8k_quirk(%struct.hid_input*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i32 @ms_surface_dial_quirk(%struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
