; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_get_response_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_get_response_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_request = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"wrong tcode %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_get_response_length(%struct.fw_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_request* %0, %struct.fw_request** %3, align 8
  %7 = load %struct.fw_request*, %struct.fw_request** %3, align 8
  %8 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @HEADER_GET_TCODE(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %43 [
    i32 128, label %14
    i32 129, label %14
    i32 130, label %15
    i32 131, label %16
    i32 132, label %24
  ]

14:                                               ; preds = %1, %1
  store i32 0, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.fw_request*, %struct.fw_request** %3, align 8
  %18 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @HEADER_GET_DATA_LENGTH(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %1
  %25 = load %struct.fw_request*, %struct.fw_request** %3, align 8
  %26 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @HEADER_GET_EXTENDED_TCODE(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.fw_request*, %struct.fw_request** %3, align 8
  %32 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @HEADER_GET_DATA_LENGTH(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %40 [
    i32 134, label %38
    i32 133, label %38
  ]

38:                                               ; preds = %24, %24
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %40, %38, %16, %15, %14
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @HEADER_GET_TCODE(i32) #1

declare dso_local i32 @HEADER_GET_DATA_LENGTH(i32) #1

declare dso_local i32 @HEADER_GET_EXTENDED_TCODE(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
