; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }
%struct.lg4ff_device_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg4ff_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3, %struct.lg_drv_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hid_report*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lg_drv_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.lg4ff_device_entry*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store %struct.hid_report* %1, %struct.hid_report** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.lg_drv_data* %4, %struct.lg_drv_data** %11, align 8
  %14 = load %struct.lg_drv_data*, %struct.lg_drv_data** %11, align 8
  %15 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %14, i32 0, i32 0
  %16 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %15, align 8
  store %struct.lg4ff_device_entry* %16, %struct.lg4ff_device_entry** %13, align 8
  %17 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %13, align 8
  %18 = icmp ne %struct.lg4ff_device_entry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %84

20:                                               ; preds = %5
  %21 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %13, align 8
  %22 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %20
  %27 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %13, align 8
  %28 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %58 [
    i32 131, label %31
    i32 128, label %39
    i32 129, label %39
    i32 133, label %39
    i32 132, label %39
    i32 137, label %47
    i32 136, label %55
    i32 135, label %55
    i32 138, label %56
    i32 134, label %56
    i32 130, label %57
  ]

31:                                               ; preds = %26
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  store i32 127, i32* %38, align 4
  store i32 1, i32* %6, align 4
  br label %84

39:                                               ; preds = %26, %26, %26, %26
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  store i32 127, i32* %46, align 4
  store i32 1, i32* %6, align 4
  br label %84

47:                                               ; preds = %26
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  store i32 127, i32* %54, align 4
  store i32 1, i32* %6, align 4
  br label %84

55:                                               ; preds = %26, %26
  store i32 5, i32* %12, align 4
  br label %59

56:                                               ; preds = %26, %26
  store i32 6, i32* %12, align 4
  br label %59

57:                                               ; preds = %26
  store i32 3, i32* %12, align 4
  br label %59

58:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %84

59:                                               ; preds = %57, %56, %55
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 255, %64
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %65, %71
  %73 = ashr i32 %72, 1
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 127, i32* %82, align 4
  store i32 1, i32* %6, align 4
  br label %84

83:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %59, %58, %47, %39, %31, %19
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
