; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_device_id = type { i64, i64 }
%struct.input_handler = type { i64 (%struct.input_handler*, %struct.input_dev*)*, %struct.input_device_id* }
%struct.input_dev = type opaque
%struct.input_dev.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.input_device_id* (%struct.input_handler*, %struct.input_dev.0*)* @input_match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.input_device_id* @input_match_device(%struct.input_handler* %0, %struct.input_dev.0* %1) #0 {
  %3 = alloca %struct.input_device_id*, align 8
  %4 = alloca %struct.input_handler*, align 8
  %5 = alloca %struct.input_dev.0*, align 8
  %6 = alloca %struct.input_device_id*, align 8
  store %struct.input_handler* %0, %struct.input_handler** %4, align 8
  store %struct.input_dev.0* %1, %struct.input_dev.0** %5, align 8
  %7 = load %struct.input_handler*, %struct.input_handler** %4, align 8
  %8 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %7, i32 0, i32 1
  %9 = load %struct.input_device_id*, %struct.input_device_id** %8, align 8
  store %struct.input_device_id* %9, %struct.input_device_id** %6, align 8
  br label %10

10:                                               ; preds = %44, %2
  %11 = load %struct.input_device_id*, %struct.input_device_id** %6, align 8
  %12 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.input_device_id*, %struct.input_device_id** %6, align 8
  %17 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ true, %10 ], [ %19, %15 ]
  br i1 %21, label %22, label %47

22:                                               ; preds = %20
  %23 = load %struct.input_dev.0*, %struct.input_dev.0** %5, align 8
  %24 = load %struct.input_device_id*, %struct.input_device_id** %6, align 8
  %25 = call i64 @input_match_device_id(%struct.input_dev.0* %23, %struct.input_device_id* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.input_handler*, %struct.input_handler** %4, align 8
  %29 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %28, i32 0, i32 0
  %30 = load i64 (%struct.input_handler*, %struct.input_dev*)*, i64 (%struct.input_handler*, %struct.input_dev*)** %29, align 8
  %31 = icmp ne i64 (%struct.input_handler*, %struct.input_dev*)* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.input_handler*, %struct.input_handler** %4, align 8
  %34 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %33, i32 0, i32 0
  %35 = load i64 (%struct.input_handler*, %struct.input_dev*)*, i64 (%struct.input_handler*, %struct.input_dev*)** %34, align 8
  %36 = load %struct.input_handler*, %struct.input_handler** %4, align 8
  %37 = load %struct.input_dev.0*, %struct.input_dev.0** %5, align 8
  %38 = bitcast %struct.input_dev.0* %37 to %struct.input_dev*
  %39 = call i64 %35(%struct.input_handler* %36, %struct.input_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32, %27
  %42 = load %struct.input_device_id*, %struct.input_device_id** %6, align 8
  store %struct.input_device_id* %42, %struct.input_device_id** %3, align 8
  br label %48

43:                                               ; preds = %32, %22
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.input_device_id*, %struct.input_device_id** %6, align 8
  %46 = getelementptr inbounds %struct.input_device_id, %struct.input_device_id* %45, i32 1
  store %struct.input_device_id* %46, %struct.input_device_id** %6, align 8
  br label %10

47:                                               ; preds = %20
  store %struct.input_device_id* null, %struct.input_device_id** %3, align 8
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.input_device_id*, %struct.input_device_id** %3, align 8
  ret %struct.input_device_id* %49
}

declare dso_local i64 @input_match_device_id(%struct.input_dev.0*, %struct.input_device_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
