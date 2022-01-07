; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cougar.c_cougar_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cougar.c_cougar_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.cougar = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @cougar_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cougar_remove(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.cougar*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = call %struct.cougar* @hid_get_drvdata(%struct.hid_device* %4)
  store %struct.cougar* %5, %struct.cougar** %3, align 8
  %6 = load %struct.cougar*, %struct.cougar** %3, align 8
  %7 = icmp ne %struct.cougar* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.cougar*, %struct.cougar** %3, align 8
  %10 = getelementptr inbounds %struct.cougar, %struct.cougar* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.cougar*, %struct.cougar** %3, align 8
  %15 = getelementptr inbounds %struct.cougar, %struct.cougar* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.cougar*, %struct.cougar** %3, align 8
  %20 = getelementptr inbounds %struct.cougar, %struct.cougar* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %25 = call i32 @hid_hw_close(%struct.hid_device* %24)
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %29 = call i32 @hid_hw_stop(%struct.hid_device* %28)
  ret void
}

declare dso_local %struct.cougar* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_close(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
