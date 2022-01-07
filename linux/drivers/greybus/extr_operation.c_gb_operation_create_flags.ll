; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_create_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_create_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32 }
%struct.gb_connection = type { i32 }

@GB_REQUEST_TYPE_INVALID = common dso_local global i64 0, align 8
@GB_MESSAGE_TYPE_RESPONSE = common dso_local global i64 0, align 8
@GB_OPERATION_FLAG_USER_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gb_operation* @gb_operation_create_flags(%struct.gb_connection* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.gb_operation*, align 8
  %8 = alloca %struct.gb_connection*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gb_operation*, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @GB_REQUEST_TYPE_INVALID, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = call i64 @WARN_ON_ONCE(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store %struct.gb_operation* null, %struct.gb_operation** %7, align 8
  br label %60

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @GB_MESSAGE_TYPE_RESPONSE, align 8
  %26 = and i64 %24, %25
  %27 = call i64 @WARN_ON_ONCE(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i64, i64* @GB_MESSAGE_TYPE_RESPONSE, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %9, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %29, %23
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @GB_OPERATION_FLAG_USER_MASK, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %35, %37
  %39 = call i64 @WARN_ON_ONCE(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i64, i64* @GB_OPERATION_FLAG_USER_MASK, align 8
  %43 = load i64, i64* %12, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call %struct.gb_operation* @gb_operation_create_common(%struct.gb_connection* %46, i64 %47, i64 %48, i64 %49, i64 %50, i32 %51)
  store %struct.gb_operation* %52, %struct.gb_operation** %14, align 8
  %53 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %54 = icmp ne %struct.gb_operation* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  %57 = call i32 @trace_gb_operation_create(%struct.gb_operation* %56)
  br label %58

58:                                               ; preds = %55, %45
  %59 = load %struct.gb_operation*, %struct.gb_operation** %14, align 8
  store %struct.gb_operation* %59, %struct.gb_operation** %7, align 8
  br label %60

60:                                               ; preds = %58, %22
  %61 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  ret %struct.gb_operation* %61
}

declare dso_local i64 @WARN_ON_ONCE(i64) #1

declare dso_local %struct.gb_operation* @gb_operation_create_common(%struct.gb_connection*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @trace_gb_operation_create(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
