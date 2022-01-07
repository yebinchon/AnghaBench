; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_st-keyscan.c_keypad_matrix_key_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_st-keyscan.c_keypad_matrix_key_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_keyscan = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to parse keypad params\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"st,debounce-us\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"n_rows=%d n_col=%d debounce=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_keyscan*)* @keypad_matrix_key_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keypad_matrix_key_parse_dt(%struct.st_keyscan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_keyscan*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.st_keyscan* %0, %struct.st_keyscan** %3, align 8
  %7 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %8 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %18 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %17, i32 0, i32 2
  %19 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %20 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %19, i32 0, i32 1
  %21 = call i32 @matrix_keypad_parse_properties(%struct.device* %16, i32* %18, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %1
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %31 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %30, i32 0, i32 0
  %32 = call i32 @of_property_read_u32(%struct.device_node* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %35 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %38 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.st_keyscan*, %struct.st_keyscan** %3, align 8
  %41 = getelementptr inbounds %struct.st_keyscan, %struct.st_keyscan* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %39, i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %28, %24
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @matrix_keypad_parse_properties(%struct.device*, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
