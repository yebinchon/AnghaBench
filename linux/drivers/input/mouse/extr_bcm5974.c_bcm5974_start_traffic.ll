; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_bcm5974_start_traffic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_bcm5974.c_bcm5974_start_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm5974 = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"bcm5974: mode switch failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm5974*)* @bcm5974_start_traffic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm5974_start_traffic(%struct.bcm5974* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm5974*, align 8
  %4 = alloca i32, align 4
  store %struct.bcm5974* %0, %struct.bcm5974** %3, align 8
  %5 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %6 = call i32 @bcm5974_wellspring_mode(%struct.bcm5974* %5, i32 1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %13 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %18 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @usb_submit_urb(i64 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %41

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %11
  %27 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %28 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @usb_submit_urb(i64 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %36

35:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %46

36:                                               ; preds = %34
  %37 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %38 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @usb_kill_urb(i64 %39)
  br label %41

41:                                               ; preds = %36, %24
  %42 = load %struct.bcm5974*, %struct.bcm5974** %3, align 8
  %43 = call i32 @bcm5974_wellspring_mode(%struct.bcm5974* %42, i32 0)
  br label %44

44:                                               ; preds = %41, %9
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %35
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @bcm5974_wellspring_mode(%struct.bcm5974*, i32) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @usb_submit_urb(i64, i32) #1

declare dso_local i32 @usb_kill_urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
