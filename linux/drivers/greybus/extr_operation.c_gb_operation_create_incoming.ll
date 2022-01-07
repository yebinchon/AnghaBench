; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_create_incoming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_create_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.gb_connection = type { i32 }

@GB_OPERATION_FLAG_INCOMING = common dso_local global i64 0, align 8
@GB_OPERATION_FLAG_UNIDIRECTIONAL = common dso_local global i64 0, align 8
@GB_REQUEST_TYPE_INVALID = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gb_operation* (%struct.gb_connection*, i64, i32, i8*, i64)* @gb_operation_create_incoming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gb_operation* @gb_operation_create_incoming(%struct.gb_connection* %0, i64 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.gb_operation*, align 8
  %7 = alloca %struct.gb_connection*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.gb_operation*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* @GB_OPERATION_FLAG_INCOMING, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i64, i64* %11, align 8
  %17 = sub i64 %16, 4
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* @GB_OPERATION_FLAG_UNIDIRECTIONAL, align 8
  %22 = load i64, i64* %14, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %14, align 8
  br label %24

24:                                               ; preds = %20, %5
  %25 = load %struct.gb_connection*, %struct.gb_connection** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %13, align 8
  %28 = load i32, i32* @GB_REQUEST_TYPE_INVALID, align 4
  %29 = load i64, i64* %14, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.gb_operation* @gb_operation_create_common(%struct.gb_connection* %25, i32 %26, i64 %27, i32 %28, i64 %29, i32 %30)
  store %struct.gb_operation* %31, %struct.gb_operation** %12, align 8
  %32 = load %struct.gb_operation*, %struct.gb_operation** %12, align 8
  %33 = icmp ne %struct.gb_operation* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store %struct.gb_operation* null, %struct.gb_operation** %6, align 8
  br label %50

35:                                               ; preds = %24
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.gb_operation*, %struct.gb_operation** %12, align 8
  %38 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.gb_operation*, %struct.gb_operation** %12, align 8
  %40 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @memcpy(i32 %43, i8* %44, i64 %45)
  %47 = load %struct.gb_operation*, %struct.gb_operation** %12, align 8
  %48 = call i32 @trace_gb_operation_create_incoming(%struct.gb_operation* %47)
  %49 = load %struct.gb_operation*, %struct.gb_operation** %12, align 8
  store %struct.gb_operation* %49, %struct.gb_operation** %6, align 8
  br label %50

50:                                               ; preds = %35, %34
  %51 = load %struct.gb_operation*, %struct.gb_operation** %6, align 8
  ret %struct.gb_operation* %51
}

declare dso_local %struct.gb_operation* @gb_operation_create_common(%struct.gb_connection*, i32, i64, i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @trace_gb_operation_create_incoming(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
