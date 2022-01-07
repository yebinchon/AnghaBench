; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_input_button.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_input_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32, i64*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@KEY_RESERVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxt_data*, i32*)* @mxt_input_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxt_input_button(%struct.mxt_data* %0, i32* %1) #0 {
  %3 = alloca %struct.mxt_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %8 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %7, i32 0, i32 2
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %46, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %13 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %10
  %17 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %18 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @KEY_RESERVED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %46

27:                                               ; preds = %16
  %28 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %29 = load %struct.mxt_data*, %struct.mxt_data** %3, align 8
  %30 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @BIT(i32 %39)
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @input_report_key(%struct.input_dev* %28, i64 %35, i32 %44)
  br label %46

46:                                               ; preds = %27, %26
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %10

49:                                               ; preds = %10
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
