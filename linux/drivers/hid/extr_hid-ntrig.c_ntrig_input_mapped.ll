; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_ntrig_input_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_ntrig_input_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i64 }
%struct.hid_usage = type { i64, i32 }

@EV_KEY = common dso_local global i64 0, align 8
@EV_REL = common dso_local global i64 0, align 8
@EV_ABS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @ntrig_input_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntrig_input_mapped(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %15 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %45

19:                                               ; preds = %6
  %20 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %21 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EV_KEY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %19
  %26 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %27 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EV_REL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %33 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EV_ABS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31, %25, %19
  %38 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %39 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i64**, i64*** %12, align 8
  %42 = load i64*, i64** %41, align 8
  %43 = call i32 @clear_bit(i32 %40, i64* %42)
  br label %44

44:                                               ; preds = %37, %31
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
