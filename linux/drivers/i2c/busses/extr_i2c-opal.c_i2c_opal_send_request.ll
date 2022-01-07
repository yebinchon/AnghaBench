; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-opal.c_i2c_opal_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-opal.c_i2c_opal_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_i2c_request = type { i32 }
%struct.opal_msg = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to get the async token\0A\00", align 1
@OPAL_ASYNC_COMPLETION = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.opal_i2c_request*)* @i2c_opal_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_opal_send_request(i32 %0, %struct.opal_i2c_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.opal_i2c_request*, align 8
  %6 = alloca %struct.opal_msg, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.opal_i2c_request* %1, %struct.opal_i2c_request** %5, align 8
  %9 = call i32 (...) @opal_async_get_token_interruptible()
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ERESTARTSYS, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.opal_i2c_request*, %struct.opal_i2c_request** %5, align 8
  %25 = call i32 @opal_i2c_request(i32 %22, i32 %23, %struct.opal_i2c_request* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @OPAL_ASYNC_COMPLETION, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @i2c_opal_translate_error(i32 %30)
  store i32 %31, i32* %8, align 4
  br label %49

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @opal_async_wait_response(i32 %33, %struct.opal_msg* %6)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %49

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @opal_get_async_rc(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @OPAL_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @i2c_opal_translate_error(i32 %46)
  store i32 %47, i32* %8, align 4
  br label %49

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %45, %37, %29
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @opal_async_release_token(i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @opal_async_get_token_interruptible(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @opal_i2c_request(i32, i32, %struct.opal_i2c_request*) #1

declare dso_local i32 @i2c_opal_translate_error(i32) #1

declare dso_local i32 @opal_async_wait_response(i32, %struct.opal_msg*) #1

declare dso_local i32 @opal_get_async_rc(i32) #1

declare dso_local i32 @opal_async_release_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
