; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-dmi-quirks.c_i2c_hid_get_dmi_i2c_hid_desc_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-dmi-quirks.c_i2c_hid_get_dmi_i2c_hid_desc_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_hid_desc = type { i32 }
%struct.i2c_hid_desc_override = type { %struct.i2c_hid_desc*, i32 }
%struct.dmi_system_id = type { %struct.i2c_hid_desc_override* }

@i2c_hid_dmi_desc_override_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_hid_desc* @i2c_hid_get_dmi_i2c_hid_desc_override(i32* %0) #0 {
  %2 = alloca %struct.i2c_hid_desc*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.i2c_hid_desc_override*, align 8
  %5 = alloca %struct.dmi_system_id*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @i2c_hid_dmi_desc_override_table, align 4
  %7 = call %struct.dmi_system_id* @dmi_first_match(i32 %6)
  store %struct.dmi_system_id* %7, %struct.dmi_system_id** %5, align 8
  %8 = load %struct.dmi_system_id*, %struct.dmi_system_id** %5, align 8
  %9 = icmp ne %struct.dmi_system_id* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.i2c_hid_desc* null, %struct.i2c_hid_desc** %2, align 8
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.dmi_system_id*, %struct.dmi_system_id** %5, align 8
  %13 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %12, i32 0, i32 0
  %14 = load %struct.i2c_hid_desc_override*, %struct.i2c_hid_desc_override** %13, align 8
  store %struct.i2c_hid_desc_override* %14, %struct.i2c_hid_desc_override** %4, align 8
  %15 = load %struct.i2c_hid_desc_override*, %struct.i2c_hid_desc_override** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_hid_desc_override, %struct.i2c_hid_desc_override* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @strcmp(i32 %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store %struct.i2c_hid_desc* null, %struct.i2c_hid_desc** %2, align 8
  br label %26

22:                                               ; preds = %11
  %23 = load %struct.i2c_hid_desc_override*, %struct.i2c_hid_desc_override** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_hid_desc_override, %struct.i2c_hid_desc_override* %23, i32 0, i32 0
  %25 = load %struct.i2c_hid_desc*, %struct.i2c_hid_desc** %24, align 8
  store %struct.i2c_hid_desc* %25, %struct.i2c_hid_desc** %2, align 8
  br label %26

26:                                               ; preds = %22, %21, %10
  %27 = load %struct.i2c_hid_desc*, %struct.i2c_hid_desc** %2, align 8
  ret %struct.i2c_hid_desc* %27
}

declare dso_local %struct.dmi_system_id* @dmi_first_match(i32) #1

declare dso_local i64 @strcmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
