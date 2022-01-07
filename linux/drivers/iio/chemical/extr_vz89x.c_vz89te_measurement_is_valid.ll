; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89te_measurement_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89te_measurement_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vz89x_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vz89x_data*)* @vz89te_measurement_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vz89te_measurement_is_valid(%struct.vz89x_data* %0) #0 {
  %2 = alloca %struct.vz89x_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vz89x_data* %0, %struct.vz89x_data** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.vz89x_data*, %struct.vz89x_data** %2, align 8
  %9 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %6
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.vz89x_data*, %struct.vz89x_data** %2, align 8
  %18 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %16, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %26, 256
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 255, %34
  %36 = load %struct.vz89x_data*, %struct.vz89x_data** %2, align 8
  %37 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.vz89x_data*, %struct.vz89x_data** %2, align 8
  %40 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %38, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %35, %47
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
