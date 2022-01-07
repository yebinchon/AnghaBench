; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_device_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_device_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_device = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsi_device_read(%struct.fsi_device* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.fsi_device* %0, %struct.fsi_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.fsi_device*, %struct.fsi_device** %6, align 8
  %12 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %29, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.fsi_device*, %struct.fsi_device** %6, align 8
  %18 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.fsi_device*, %struct.fsi_device** %6, align 8
  %24 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sub i64 %25, %26
  %28 = icmp ugt i64 %22, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21, %15, %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %44

32:                                               ; preds = %21
  %33 = load %struct.fsi_device*, %struct.fsi_device** %6, align 8
  %34 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fsi_device*, %struct.fsi_device** %6, align 8
  %37 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %38, %39
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @fsi_slave_read(i32 %35, i64 %40, i8* %41, i64 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %32, %29
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @fsi_slave_read(i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
