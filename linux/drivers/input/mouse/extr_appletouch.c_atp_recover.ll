; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_appletouch.c_atp_recover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_appletouch.c_atp_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atp = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atp*)* @atp_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp_recover(%struct.atp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atp*, align 8
  %4 = alloca i32, align 4
  store %struct.atp* %0, %struct.atp** %3, align 8
  %5 = load %struct.atp*, %struct.atp** %3, align 8
  %6 = call i32 @atp_handle_geyser(%struct.atp* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.atp*, %struct.atp** %3, align 8
  %13 = getelementptr inbounds %struct.atp, %struct.atp* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.atp*, %struct.atp** %3, align 8
  %18 = getelementptr inbounds %struct.atp, %struct.atp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64 @usb_submit_urb(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %16, %11
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @atp_handle_geyser(%struct.atp*) #1

declare dso_local i64 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
