; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_send_and_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_send_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32, i64, i32 }
%struct.serio = type { i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*, %struct.serio*, i64*, i8*)* @wacom_send_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_send_and_wait(%struct.wacom* %0, %struct.serio* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wacom*, align 8
  %7 = alloca %struct.serio*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.wacom* %0, %struct.wacom** %6, align 8
  store %struct.serio* %1, %struct.serio** %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64*, i64** %8, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.wacom*, %struct.wacom** %6, align 8
  %16 = getelementptr inbounds %struct.wacom, %struct.wacom* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load %struct.wacom*, %struct.wacom** %6, align 8
  %18 = getelementptr inbounds %struct.wacom, %struct.wacom* %17, i32 0, i32 2
  %19 = call i32 @init_completion(i32* %18)
  %20 = load %struct.serio*, %struct.serio** %7, align 8
  %21 = load i64*, i64** %8, align 8
  %22 = call i32 @wacom_send(%struct.serio* %20, i64* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %43

27:                                               ; preds = %4
  %28 = load %struct.wacom*, %struct.wacom** %6, align 8
  %29 = getelementptr inbounds %struct.wacom, %struct.wacom* %28, i32 0, i32 2
  %30 = load i32, i32* @HZ, align 4
  %31 = call i64 @wait_for_completion_timeout(i32* %29, i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.wacom*, %struct.wacom** %6, align 8
  %36 = call i32 @wacom_handle_response(%struct.wacom* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.wacom*, %struct.wacom** %6, align 8
  %39 = getelementptr inbounds %struct.wacom, %struct.wacom* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.wacom*, %struct.wacom** %6, align 8
  %41 = getelementptr inbounds %struct.wacom, %struct.wacom* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %25
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @wacom_send(%struct.serio*, i64*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @wacom_handle_response(%struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
