; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_keep_values_up_to_date.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_keep_values_up_to_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kone_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kone_mouse_event = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kone_device*, %struct.kone_mouse_event*)* @kone_keep_values_up_to_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kone_keep_values_up_to_date(%struct.kone_device* %0, %struct.kone_mouse_event* %1) #0 {
  %3 = alloca %struct.kone_device*, align 8
  %4 = alloca %struct.kone_mouse_event*, align 8
  store %struct.kone_device* %0, %struct.kone_device** %3, align 8
  store %struct.kone_mouse_event* %1, %struct.kone_mouse_event** %4, align 8
  %5 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %4, align 8
  %6 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %34 [
    i32 128, label %8
    i32 130, label %22
    i32 129, label %28
    i32 131, label %28
  ]

8:                                                ; preds = %2
  %9 = load %struct.kone_device*, %struct.kone_device** %3, align 8
  %10 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %4, align 8
  %13 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kone_device*, %struct.kone_device** %3, align 8
  %21 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %2, %8
  %23 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %4, align 8
  %24 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kone_device*, %struct.kone_device** %3, align 8
  %27 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %34

28:                                               ; preds = %2, %2
  %29 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %4, align 8
  %30 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kone_device*, %struct.kone_device** %3, align 8
  %33 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %2, %28, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
