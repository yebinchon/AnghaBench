; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_match_one_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/extr_ipack.c_ipack_match_one_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack_device_id = type { i64, i64, i64 }
%struct.ipack_device = type { i64, i64, i64 }

@IPACK_ANY_FORMAT = common dso_local global i64 0, align 8
@IPACK_ANY_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipack_device_id* (%struct.ipack_device_id*, %struct.ipack_device*)* @ipack_match_one_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipack_device_id* @ipack_match_one_device(%struct.ipack_device_id* %0, %struct.ipack_device* %1) #0 {
  %3 = alloca %struct.ipack_device_id*, align 8
  %4 = alloca %struct.ipack_device_id*, align 8
  %5 = alloca %struct.ipack_device*, align 8
  store %struct.ipack_device_id* %0, %struct.ipack_device_id** %4, align 8
  store %struct.ipack_device* %1, %struct.ipack_device** %5, align 8
  %6 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %7 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IPACK_ANY_FORMAT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ipack_device*, %struct.ipack_device** %5, align 8
  %16 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %11, %2
  %20 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %21 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPACK_ANY_ID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %27 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ipack_device*, %struct.ipack_device** %5, align 8
  %30 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %25, %19
  %34 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %35 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IPACK_ANY_ID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  %41 = getelementptr inbounds %struct.ipack_device_id, %struct.ipack_device_id* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ipack_device*, %struct.ipack_device** %5, align 8
  %44 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39, %33
  %48 = load %struct.ipack_device_id*, %struct.ipack_device_id** %4, align 8
  store %struct.ipack_device_id* %48, %struct.ipack_device_id** %3, align 8
  br label %50

49:                                               ; preds = %39, %25, %11
  store %struct.ipack_device_id* null, %struct.ipack_device_id** %3, align 8
  br label %50

50:                                               ; preds = %49, %47
  %51 = load %struct.ipack_device_id*, %struct.ipack_device_id** %3, align 8
  ret %struct.ipack_device_id* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
