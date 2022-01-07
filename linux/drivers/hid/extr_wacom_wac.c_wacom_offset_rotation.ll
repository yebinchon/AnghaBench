; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_offset_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_offset_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.input_absinfo* }
%struct.input_absinfo = type { i32, i32 }
%struct.hid_usage = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.hid_usage*, i32, i32, i32)* @wacom_offset_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_offset_rotation(%struct.input_dev* %0, %struct.hid_usage* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.input_absinfo*, align 8
  %12 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store %struct.hid_usage* %1, %struct.hid_usage** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 0
  %15 = load %struct.input_absinfo*, %struct.input_absinfo** %14, align 8
  %16 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %17 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %15, i64 %18
  store %struct.input_absinfo* %19, %struct.input_absinfo** %11, align 8
  %20 = load %struct.input_absinfo*, %struct.input_absinfo** %11, align 8
  %21 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.input_absinfo*, %struct.input_absinfo** %11, align 8
  %24 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %12, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = sdiv i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.input_absinfo*, %struct.input_absinfo** %11, align 8
  %37 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %5
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %55

44:                                               ; preds = %5
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.input_absinfo*, %struct.input_absinfo** %11, align 8
  %47 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
