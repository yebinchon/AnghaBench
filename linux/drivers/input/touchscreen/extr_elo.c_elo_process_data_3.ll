; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elo.c_elo_process_data_3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elo.c_elo_process_data_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elo = type { i8*, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elo*, i8)* @elo_process_data_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elo_process_data_3(%struct.elo* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.elo*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.input_dev*, align 8
  store %struct.elo* %0, %struct.elo** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.elo*, %struct.elo** %3, align 8
  %7 = getelementptr inbounds %struct.elo, %struct.elo* %6, i32 0, i32 2
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %5, align 8
  %9 = load i8, i8* %4, align 1
  %10 = load %struct.elo*, %struct.elo** %3, align 8
  %11 = getelementptr inbounds %struct.elo, %struct.elo* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.elo*, %struct.elo** %3, align 8
  %14 = getelementptr inbounds %struct.elo, %struct.elo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8 %9, i8* %16, align 1
  %17 = load %struct.elo*, %struct.elo** %3, align 8
  %18 = getelementptr inbounds %struct.elo, %struct.elo* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %18, align 8
  switch i64 %19, label %66 [
    i64 0, label %21
    i64 2, label %30
  ]

21:                                               ; preds = %2
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 127
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.elo*, %struct.elo** %3, align 8
  %28 = getelementptr inbounds %struct.elo, %struct.elo* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %66

30:                                               ; preds = %2
  %31 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %32 = load i32, i32* @BTN_TOUCH, align 4
  %33 = load %struct.elo*, %struct.elo** %3, align 8
  %34 = getelementptr inbounds %struct.elo, %struct.elo* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @input_report_key(%struct.input_dev* %31, i32 %32, i32 %42)
  %44 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %45 = load i32, i32* @ABS_X, align 4
  %46 = load %struct.elo*, %struct.elo** %3, align 8
  %47 = getelementptr inbounds %struct.elo, %struct.elo* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = call i32 @input_report_abs(%struct.input_dev* %44, i32 %45, i32 %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %54 = load i32, i32* @ABS_Y, align 4
  %55 = load %struct.elo*, %struct.elo** %3, align 8
  %56 = getelementptr inbounds %struct.elo, %struct.elo* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 @input_report_abs(%struct.input_dev* %53, i32 %54, i32 %60)
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = call i32 @input_sync(%struct.input_dev* %62)
  %64 = load %struct.elo*, %struct.elo** %3, align 8
  %65 = getelementptr inbounds %struct.elo, %struct.elo* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %2, %30, %29
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
