; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev.c_ccp_log_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dev.c_ccp_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i32 }

@CCP_MAX_ERROR_CODE = common dso_local global i32 0, align 4
@ccp_error_codes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"CCP error %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"CCP error %d: Unknown Error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp_log_error(%struct.ccp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ccp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ccp_device* %0, %struct.ccp_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CCP_MAX_ERROR_CODE, align 4
  %7 = icmp uge i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %34

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** @ccp_error_codes, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %19 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32*, i32** @ccp_error_codes, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26)
  br label %34

28:                                               ; preds = %12
  %29 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %30 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %11, %28, %17
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
