; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_buffers_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_buffers_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ims_pcu*)* @ims_pcu_buffers_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ims_pcu_buffers_free(%struct.ims_pcu* %0) #0 {
  %2 = alloca %struct.ims_pcu*, align 8
  store %struct.ims_pcu* %0, %struct.ims_pcu** %2, align 8
  %3 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %4 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @usb_kill_urb(i32 %5)
  %7 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %8 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usb_free_urb(i32 %9)
  %11 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %12 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %15 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %18 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %21 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_free_coherent(i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %25 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %29 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_kill_urb(i32 %30)
  %32 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %33 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_free_urb(i32 %34)
  %36 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %37 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %40 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %43 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ims_pcu*, %struct.ims_pcu** %2, align 8
  %46 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @usb_free_coherent(i32 %38, i32 %41, i32 %44, i32 %47)
  ret void
}

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
