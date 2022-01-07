; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-dmi-quirks.c_i2c_hid_get_dmi_hid_report_desc_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-dmi-quirks.c_i2c_hid_get_dmi_hid_report_desc_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_hid_desc_override = type { i32, i8*, i32 }
%struct.dmi_system_id = type { %struct.i2c_hid_desc_override* }

@i2c_hid_dmi_desc_override_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @i2c_hid_get_dmi_hid_report_desc_override(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_hid_desc_override*, align 8
  %7 = alloca %struct.dmi_system_id*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @i2c_hid_dmi_desc_override_table, align 4
  %9 = call %struct.dmi_system_id* @dmi_first_match(i32 %8)
  store %struct.dmi_system_id* %9, %struct.dmi_system_id** %7, align 8
  %10 = load %struct.dmi_system_id*, %struct.dmi_system_id** %7, align 8
  %11 = icmp ne %struct.dmi_system_id* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.dmi_system_id*, %struct.dmi_system_id** %7, align 8
  %15 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %14, i32 0, i32 0
  %16 = load %struct.i2c_hid_desc_override*, %struct.i2c_hid_desc_override** %15, align 8
  store %struct.i2c_hid_desc_override* %16, %struct.i2c_hid_desc_override** %6, align 8
  %17 = load %struct.i2c_hid_desc_override*, %struct.i2c_hid_desc_override** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_hid_desc_override, %struct.i2c_hid_desc_override* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @strcmp(i32 %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %32

24:                                               ; preds = %13
  %25 = load %struct.i2c_hid_desc_override*, %struct.i2c_hid_desc_override** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_hid_desc_override, %struct.i2c_hid_desc_override* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.i2c_hid_desc_override*, %struct.i2c_hid_desc_override** %6, align 8
  %30 = getelementptr inbounds %struct.i2c_hid_desc_override, %struct.i2c_hid_desc_override* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %24, %23, %12
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local %struct.dmi_system_id* @dmi_first_match(i32) #1

declare dso_local i64 @strcmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
