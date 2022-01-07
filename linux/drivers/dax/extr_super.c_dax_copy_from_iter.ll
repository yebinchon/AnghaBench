; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_dax_copy_from_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_dax_copy_from_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.iov_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dax_copy_from_iter(%struct.dax_device* %0, i32 %1, i8* %2, i64 %3, %struct.iov_iter* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.dax_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iov_iter*, align 8
  store %struct.dax_device* %0, %struct.dax_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.iov_iter* %4, %struct.iov_iter** %11, align 8
  %12 = load %struct.dax_device*, %struct.dax_device** %7, align 8
  %13 = call i32 @dax_alive(%struct.dax_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %29

16:                                               ; preds = %5
  %17 = load %struct.dax_device*, %struct.dax_device** %7, align 8
  %18 = getelementptr inbounds %struct.dax_device, %struct.dax_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i64 (%struct.dax_device*, i32, i8*, i64, %struct.iov_iter*)**
  %22 = load i64 (%struct.dax_device*, i32, i8*, i64, %struct.iov_iter*)*, i64 (%struct.dax_device*, i32, i8*, i64, %struct.iov_iter*)** %21, align 8
  %23 = load %struct.dax_device*, %struct.dax_device** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.iov_iter*, %struct.iov_iter** %11, align 8
  %28 = call i64 %22(%struct.dax_device* %23, i32 %24, i8* %25, i64 %26, %struct.iov_iter* %27)
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %16, %15
  %30 = load i64, i64* %6, align 8
  ret i64 %30
}

declare dso_local i32 @dax_alive(%struct.dax_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
