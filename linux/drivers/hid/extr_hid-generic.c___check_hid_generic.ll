; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-generic.c___check_hid_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-generic.c___check_hid_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_driver = type { i32 }
%struct.device_driver = type { i32 }
%struct.hid_device = type { i32 }

@hid_generic = common dso_local global %struct.hid_driver zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*)* @__check_hid_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_hid_generic(%struct.device_driver* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hid_driver*, align 8
  %7 = alloca %struct.hid_device*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %9 = call %struct.hid_driver* @to_hid_driver(%struct.device_driver* %8)
  store %struct.hid_driver* %9, %struct.hid_driver** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hid_device*
  store %struct.hid_device* %11, %struct.hid_device** %7, align 8
  %12 = load %struct.hid_driver*, %struct.hid_driver** %6, align 8
  %13 = icmp eq %struct.hid_driver* %12, @hid_generic
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %17 = load %struct.hid_driver*, %struct.hid_driver** %6, align 8
  %18 = call i32* @hid_match_device(%struct.hid_device* %16, %struct.hid_driver* %17)
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.hid_driver* @to_hid_driver(%struct.device_driver*) #1

declare dso_local i32* @hid_match_device(%struct.hid_device*, %struct.hid_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
