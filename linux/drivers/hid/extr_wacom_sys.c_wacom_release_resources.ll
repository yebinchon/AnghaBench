; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_release_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { i32, %struct.TYPE_2__, %struct.hid_device* }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.hid_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom*)* @wacom_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_release_resources(%struct.wacom* %0) #0 {
  %2 = alloca %struct.wacom*, align 8
  %3 = alloca %struct.hid_device*, align 8
  store %struct.wacom* %0, %struct.wacom** %2, align 8
  %4 = load %struct.wacom*, %struct.wacom** %2, align 8
  %5 = getelementptr inbounds %struct.wacom, %struct.wacom* %4, i32 0, i32 2
  %6 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  store %struct.hid_device* %6, %struct.hid_device** %3, align 8
  %7 = load %struct.wacom*, %struct.wacom** %2, align 8
  %8 = getelementptr inbounds %struct.wacom, %struct.wacom* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = load %struct.wacom*, %struct.wacom** %2, align 8
  %16 = call i32 @devres_release_group(i32* %14, %struct.wacom* %15)
  %17 = load %struct.wacom*, %struct.wacom** %2, align 8
  %18 = getelementptr inbounds %struct.wacom, %struct.wacom* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.wacom*, %struct.wacom** %2, align 8
  %20 = getelementptr inbounds %struct.wacom, %struct.wacom* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.wacom*, %struct.wacom** %2, align 8
  %23 = getelementptr inbounds %struct.wacom, %struct.wacom* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.wacom*, %struct.wacom** %2, align 8
  %26 = getelementptr inbounds %struct.wacom, %struct.wacom* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @devres_release_group(i32*, %struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
