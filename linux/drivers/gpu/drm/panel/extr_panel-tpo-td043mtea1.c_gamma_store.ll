; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_gamma_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-td043mtea1.c_gamma_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.td043mtea1_panel = type { i32* }

@.str = private unnamed_addr constant [36 x i8] c"%u %u %u %u %u %u %u %u %u %u %u %u\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gamma_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gamma_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.td043mtea1_panel*, align 8
  %11 = alloca [12 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.td043mtea1_panel* @dev_get_drvdata(%struct.device* %14)
  store %struct.td043mtea1_panel* %15, %struct.td043mtea1_panel** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 0
  %18 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 1
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 2
  %20 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 3
  %21 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 4
  %22 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 5
  %23 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 6
  %24 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 7
  %25 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 8
  %26 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 9
  %27 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 10
  %28 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 11
  %29 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 12
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %57

35:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %12, align 4
  %38 = icmp ult i32 %37, 12
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [12 x i32], [12 x i32]* %11, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %10, align 8
  %45 = getelementptr inbounds %struct.td043mtea1_panel, %struct.td043mtea1_panel* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %12, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load %struct.td043mtea1_panel*, %struct.td043mtea1_panel** %10, align 8
  %55 = call i32 @td043mtea1_write_gamma(%struct.td043mtea1_panel* %54)
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %53, %32
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local %struct.td043mtea1_panel* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @td043mtea1_write_gamma(%struct.td043mtea1_panel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
