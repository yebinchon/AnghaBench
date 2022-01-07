; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_profile_activated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_profile_activated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pyra_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pyra_device*, i32)* @profile_activated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @profile_activated(%struct.pyra_device* %0, i32 %1) #0 {
  %3 = alloca %struct.pyra_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pyra_device* %0, %struct.pyra_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.pyra_device*, %struct.pyra_device** %3, align 8
  %7 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %8)
  %10 = icmp uge i32 %5, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.pyra_device*, %struct.pyra_device** %3, align 8
  %15 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.pyra_device*, %struct.pyra_device** %3, align 8
  %17 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.pyra_device*, %struct.pyra_device** %3, align 8
  %20 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pyra_device*, %struct.pyra_device** %3, align 8
  %27 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
