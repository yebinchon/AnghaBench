; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_create_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_create_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32 }
%struct.gb_connection = type { i32 }

@GB_OPERATION_FLAG_CORE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_operation* @gb_operation_create_core(%struct.gb_connection* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gb_operation*, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* @GB_OPERATION_FLAG_CORE, align 8
  %15 = load i64, i64* %11, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %11, align 8
  %17 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call %struct.gb_operation* @gb_operation_create_common(%struct.gb_connection* %17, i32 %18, i64 %19, i64 %20, i64 %21, i32 %22)
  store %struct.gb_operation* %23, %struct.gb_operation** %13, align 8
  %24 = load %struct.gb_operation*, %struct.gb_operation** %13, align 8
  %25 = icmp ne %struct.gb_operation* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load %struct.gb_operation*, %struct.gb_operation** %13, align 8
  %28 = call i32 @trace_gb_operation_create_core(%struct.gb_operation* %27)
  br label %29

29:                                               ; preds = %26, %6
  %30 = load %struct.gb_operation*, %struct.gb_operation** %13, align 8
  ret %struct.gb_operation* %30
}

declare dso_local %struct.gb_operation* @gb_operation_create_common(%struct.gb_connection*, i32, i64, i64, i64, i32) #1

declare dso_local i32 @trace_gb_operation_create_core(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
