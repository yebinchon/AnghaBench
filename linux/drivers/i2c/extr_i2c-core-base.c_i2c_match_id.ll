; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_id = type { i64* }
%struct.i2c_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_device_id* @i2c_match_id(%struct.i2c_device_id* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca %struct.i2c_device_id*, align 8
  %4 = alloca %struct.i2c_device_id*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_device_id* %0, %struct.i2c_device_id** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %6 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  %7 = icmp ne %struct.i2c_device_id* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = icmp ne %struct.i2c_client* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store %struct.i2c_device_id* null, %struct.i2c_device_id** %3, align 8
  br label %35

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %31, %12
  %14 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = call i64 @strcmp(i32 %23, i64* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  store %struct.i2c_device_id* %30, %struct.i2c_device_id** %3, align 8
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %32, i32 1
  store %struct.i2c_device_id* %33, %struct.i2c_device_id** %4, align 8
  br label %13

34:                                               ; preds = %13
  store %struct.i2c_device_id* null, %struct.i2c_device_id** %3, align 8
  br label %35

35:                                               ; preds = %34, %29, %11
  %36 = load %struct.i2c_device_id*, %struct.i2c_device_id** %3, align 8
  ret %struct.i2c_device_id* %36
}

declare dso_local i64 @strcmp(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
