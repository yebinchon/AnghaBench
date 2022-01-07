; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_bcm5974_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_bcm5974_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.bcm5974 = type { %struct.TYPE_4__*, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @bcm5974_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm5974_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.bcm5974*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.bcm5974* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.bcm5974* %5, %struct.bcm5974** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %9 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @input_unregister_device(i32 %10)
  %12 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %13 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %16 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %20 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %23 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_free_coherent(i32 %14, i32 %18, i32 %21, i32 %26)
  %28 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %29 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %1
  %33 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %34 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %37 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %41 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %44 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_free_coherent(i32 %35, i32 %39, i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %32, %1
  %50 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %51 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @usb_free_urb(%struct.TYPE_4__* %52)
  %54 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %55 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @usb_free_urb(%struct.TYPE_4__* %56)
  %58 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %59 = call i32 @kfree(%struct.bcm5974* %58)
  ret void
}

declare dso_local %struct.bcm5974* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.bcm5974*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
