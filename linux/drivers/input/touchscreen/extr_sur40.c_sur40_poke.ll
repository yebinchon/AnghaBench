; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_poke.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sur40_state = type { i32 }

@SUR40_POKE = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sur40_state*, i32, i32)* @sur40_poke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sur40_poke(%struct.sur40_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sur40_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sur40_state* %0, %struct.sur40_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 150, i32* %8, align 4
  %9 = load %struct.sur40_state*, %struct.sur40_state** %4, align 8
  %10 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sur40_state*, %struct.sur40_state** %4, align 8
  %13 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_sndctrlpipe(i32 %14, i32 0)
  %16 = load i32, i32* @SUR40_POKE, align 4
  %17 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %18 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @USB_DIR_OUT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @usb_control_msg(i32 %11, i32 %15, i32 %16, i32 %21, i32 50, i32 %22, i32* null, i32 0, i32 1000)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %69

27:                                               ; preds = %3
  %28 = call i32 @msleep(i32 5)
  %29 = load %struct.sur40_state*, %struct.sur40_state** %4, align 8
  %30 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sur40_state*, %struct.sur40_state** %4, align 8
  %33 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_sndctrlpipe(i32 %34, i32 0)
  %36 = load i32, i32* @SUR40_POKE, align 4
  %37 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %38 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @USB_DIR_OUT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @usb_control_msg(i32 %31, i32 %35, i32 %36, i32 %41, i32 114, i32 %42, i32* null, i32 0, i32 1000)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %69

47:                                               ; preds = %27
  %48 = call i32 @msleep(i32 5)
  %49 = load %struct.sur40_state*, %struct.sur40_state** %4, align 8
  %50 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sur40_state*, %struct.sur40_state** %4, align 8
  %53 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_sndctrlpipe(i32 %54, i32 0)
  %56 = load i32, i32* @SUR40_POKE, align 4
  %57 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %58 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @USB_DIR_OUT, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @usb_control_msg(i32 %51, i32 %55, i32 %56, i32 %61, i32 178, i32 %62, i32* null, i32 0, i32 1000)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %47
  br label %69

67:                                               ; preds = %47
  %68 = call i32 @msleep(i32 5)
  br label %69

69:                                               ; preds = %67, %66, %46, %26
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
