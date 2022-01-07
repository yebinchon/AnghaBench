; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_sync_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_sync_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_connection = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.gb_operation = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"%s: synchronous operation id 0x%04x of type 0x%02x failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_operation_sync_timeout(%struct.gb_connection* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gb_connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gb_operation*, align 8
  %17 = alloca i32, align 4
  store %struct.gb_connection* %0, %struct.gb_connection** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20, %7
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %93

32:                                               ; preds = %26, %23
  %33 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.gb_operation* @gb_operation_create(%struct.gb_connection* %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store %struct.gb_operation* %38, %struct.gb_operation** %16, align 8
  %39 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %40 = icmp ne %struct.gb_operation* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %93

44:                                               ; preds = %32
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %49 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @memcpy(i8* %52, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %44
  %57 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @gb_operation_request_send_sync_timeout(%struct.gb_operation* %57, i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %64 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %68 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %71 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %72, i32 %73, i32 %74)
  br label %89

76:                                               ; preds = %56
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i8*, i8** %13, align 8
  %81 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %82 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @memcpy(i8* %80, i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %79, %76
  br label %89

89:                                               ; preds = %88, %62
  %90 = load %struct.gb_operation*, %struct.gb_operation** %16, align 8
  %91 = call i32 @gb_operation_put(%struct.gb_operation* %90)
  %92 = load i32, i32* %17, align 4
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %89, %41, %29
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local %struct.gb_operation* @gb_operation_create(%struct.gb_connection*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @gb_operation_request_send_sync_timeout(%struct.gb_operation*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
