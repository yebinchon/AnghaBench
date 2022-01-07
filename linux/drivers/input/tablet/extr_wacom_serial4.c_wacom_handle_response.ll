; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_handle_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_handle_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i8*, i8, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Wacom got an unexpected response: %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom*)* @wacom_handle_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_handle_response(%struct.wacom* %0) #0 {
  %2 = alloca %struct.wacom*, align 8
  store %struct.wacom* %0, %struct.wacom** %2, align 8
  %3 = load %struct.wacom*, %struct.wacom** %2, align 8
  %4 = getelementptr inbounds %struct.wacom, %struct.wacom* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 126
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load %struct.wacom*, %struct.wacom** %2, align 8
  %12 = getelementptr inbounds %struct.wacom, %struct.wacom* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = load %struct.wacom*, %struct.wacom** %2, align 8
  %18 = getelementptr inbounds %struct.wacom, %struct.wacom* %17, i32 0, i32 1
  %19 = load i8, i8* %18, align 8
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %16, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %10, %1
  %23 = load %struct.wacom*, %struct.wacom** %2, align 8
  %24 = getelementptr inbounds %struct.wacom, %struct.wacom* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.wacom*, %struct.wacom** %2, align 8
  %28 = getelementptr inbounds %struct.wacom, %struct.wacom* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.wacom*, %struct.wacom** %2, align 8
  %34 = getelementptr inbounds %struct.wacom, %struct.wacom* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  br label %54

35:                                               ; preds = %10
  %36 = load %struct.wacom*, %struct.wacom** %2, align 8
  %37 = getelementptr inbounds %struct.wacom, %struct.wacom* %36, i32 0, i32 3
  store i32 0, i32* %37, align 8
  %38 = load %struct.wacom*, %struct.wacom** %2, align 8
  %39 = getelementptr inbounds %struct.wacom, %struct.wacom* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %53 [
    i32 35, label %44
    i32 82, label %47
    i32 67, label %50
  ]

44:                                               ; preds = %35
  %45 = load %struct.wacom*, %struct.wacom** %2, align 8
  %46 = call i32 @wacom_handle_model_response(%struct.wacom* %45)
  br label %53

47:                                               ; preds = %35
  %48 = load %struct.wacom*, %struct.wacom** %2, align 8
  %49 = call i32 @wacom_handle_configuration_response(%struct.wacom* %48)
  br label %53

50:                                               ; preds = %35
  %51 = load %struct.wacom*, %struct.wacom** %2, align 8
  %52 = call i32 @wacom_handle_coordinates_response(%struct.wacom* %51)
  br label %53

53:                                               ; preds = %35, %50, %47, %44
  br label %54

54:                                               ; preds = %53, %22
  %55 = load %struct.wacom*, %struct.wacom** %2, align 8
  %56 = getelementptr inbounds %struct.wacom, %struct.wacom* %55, i32 0, i32 2
  %57 = call i32 @complete(i32* %56)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @wacom_handle_model_response(%struct.wacom*) #1

declare dso_local i32 @wacom_handle_configuration_response(%struct.wacom*) #1

declare dso_local i32 @wacom_handle_coordinates_response(%struct.wacom*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
