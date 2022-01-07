; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-icade.c_icade_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-icade.c_icade_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_usage = type { i32, i32 }
%struct.icade_key = type { i32, i32 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @icade_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icade_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.icade_key*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %19 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %4
  store i32 0, i32* %5, align 4
  br label %58

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %58

32:                                               ; preds = %28
  %33 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %34 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HID_USAGE, align 4
  %37 = and i32 %35, %36
  %38 = call %struct.icade_key* @icade_find_translation(i32 %37)
  store %struct.icade_key* %38, %struct.icade_key** %10, align 8
  %39 = load %struct.icade_key*, %struct.icade_key** %10, align 8
  %40 = icmp ne %struct.icade_key* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  br label %58

42:                                               ; preds = %32
  %43 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %44 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %49 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.icade_key*, %struct.icade_key** %10, align 8
  %52 = getelementptr inbounds %struct.icade_key, %struct.icade_key* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.icade_key*, %struct.icade_key** %10, align 8
  %55 = getelementptr inbounds %struct.icade_key, %struct.icade_key* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @input_event(i32 %47, i32 %50, i32 %53, i32 %56)
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %42, %41, %31, %27
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.icade_key* @icade_find_translation(i32) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
