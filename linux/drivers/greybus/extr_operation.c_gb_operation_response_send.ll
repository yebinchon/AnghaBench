; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_response_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_response_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_6__*, %struct.gb_connection* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.gb_connection = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"request result already set\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*, i32)* @gb_operation_response_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_operation_response_send(%struct.gb_operation* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_operation*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %9 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %8, i32 0, i32 1
  %10 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  store %struct.gb_connection* %10, %struct.gb_connection** %6, align 8
  %11 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %12 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %17 = call i64 @gb_operation_is_unidirectional(%struct.gb_operation* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @gb_operation_response_alloc(%struct.gb_operation* %20, i32 0, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %79

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %15, %2
  %29 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @gb_operation_result_set(%struct.gb_operation* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %35 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %79

41:                                               ; preds = %28
  %42 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %43 = call i64 @gb_operation_is_unidirectional(%struct.gb_operation* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %79

46:                                               ; preds = %41
  %47 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %48 = call i32 @gb_operation_get(%struct.gb_operation* %47)
  %49 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %50 = call i32 @gb_operation_get_active(%struct.gb_operation* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %75

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @gb_operation_errno_map(i32 %55)
  %57 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %58 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 4
  %63 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %64 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @gb_message_send(%struct.TYPE_6__* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %72

71:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %79

72:                                               ; preds = %70
  %73 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %74 = call i32 @gb_operation_put_active(%struct.gb_operation* %73)
  br label %75

75:                                               ; preds = %72, %53
  %76 = load %struct.gb_operation*, %struct.gb_operation** %4, align 8
  %77 = call i32 @gb_operation_put(%struct.gb_operation* %76)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %71, %45, %33, %24
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @gb_operation_is_unidirectional(%struct.gb_operation*) #1

declare dso_local i32 @gb_operation_response_alloc(%struct.gb_operation*, i32, i32) #1

declare dso_local i32 @gb_operation_result_set(%struct.gb_operation*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gb_operation_get(%struct.gb_operation*) #1

declare dso_local i32 @gb_operation_get_active(%struct.gb_operation*) #1

declare dso_local i32 @gb_operation_errno_map(i32) #1

declare dso_local i32 @gb_message_send(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @gb_operation_put_active(%struct.gb_operation*) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
