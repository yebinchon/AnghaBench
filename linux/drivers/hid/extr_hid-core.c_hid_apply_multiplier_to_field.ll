; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_apply_multiplier_to_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_apply_multiplier_to_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.hid_collection* }
%struct.hid_field = type { i32, %struct.hid_usage* }
%struct.hid_usage = type { i64, i32 }
%struct.hid_collection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_collection*, i32)* @hid_apply_multiplier_to_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_apply_multiplier_to_field(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_collection* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.hid_collection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hid_collection*, align 8
  %10 = alloca %struct.hid_usage*, align 8
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store %struct.hid_collection* %2, %struct.hid_collection** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %65, %4
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %15 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %68

18:                                               ; preds = %12
  %19 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %20 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %19, i32 0, i32 1
  %21 = load %struct.hid_usage*, %struct.hid_usage** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %21, i64 %23
  store %struct.hid_usage* %24, %struct.hid_usage** %10, align 8
  %25 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %26 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %25, i32 0, i32 0
  %27 = load %struct.hid_collection*, %struct.hid_collection** %26, align 8
  %28 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %29 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %27, i64 %30
  store %struct.hid_collection* %31, %struct.hid_collection** %9, align 8
  br label %32

32:                                               ; preds = %43, %18
  %33 = load %struct.hid_collection*, %struct.hid_collection** %9, align 8
  %34 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.hid_collection*, %struct.hid_collection** %9, align 8
  %39 = load %struct.hid_collection*, %struct.hid_collection** %7, align 8
  %40 = icmp ne %struct.hid_collection* %38, %39
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %44, i32 0, i32 0
  %46 = load %struct.hid_collection*, %struct.hid_collection** %45, align 8
  %47 = load %struct.hid_collection*, %struct.hid_collection** %9, align 8
  %48 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %46, i64 %50
  store %struct.hid_collection* %51, %struct.hid_collection** %9, align 8
  br label %32

52:                                               ; preds = %41
  %53 = load %struct.hid_collection*, %struct.hid_collection** %9, align 8
  %54 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.hid_collection*, %struct.hid_collection** %7, align 8
  %59 = icmp eq %struct.hid_collection* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %63 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %12

68:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
