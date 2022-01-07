; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack_device_id = type { i64, i64 }
%struct.ipack_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipack_device_id* (%struct.ipack_device_id*, %struct.ipack_device*)* @ipack_match_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipack_device_id* @ipack_match_id(%struct.ipack_device_id* %0, %struct.ipack_device* %1) #0 {
  %3 = alloca %struct.ipack_device_id*, align 8
  %4 = alloca %struct.ipack_device_id*, align 8
  %5 = alloca %struct.ipack_device*, align 8
  store %struct.ipack_device_id* %0, %struct.ipack_device_id** %4, align 8
  store %struct.ipack_device* %1, %struct.ipack_device** %5, align 8
  %6 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %7 = icmp ne %struct.ipack_device_id* %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %28, %8
  %10 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %11 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %16 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ true, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %31

21:                                               ; preds = %19
  %22 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %23 = load %struct.ipack_device*, %struct.ipack_device** %5, align 8
  %24 = call i64 @ipack_match_one_device(%struct.ipack_device_id* %22, %struct.ipack_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  store %struct.ipack_device_id* %27, %struct.ipack_device_id** %3, align 8
  br label %33

28:                                               ; preds = %21
  %29 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %30 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %29, i32 1
  store %struct.ipack_device_id* %30, %struct.ipack_device_id** %4, align 8
  br label %9

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %2
  store %struct.ipack_device_id* null, %struct.ipack_device_id** %3, align 8
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.ipack_device_id*, %struct.ipack_device_id** %3, align 8
  ret %struct.ipack_device_id* %34
}

declare dso_local i64 @ipack_match_one_device(%struct.ipack_device_id*, %struct.ipack_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
