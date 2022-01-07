; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_set_preprocessor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_set_preprocessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sur40_state = type { i32 }

@__const.sur40_set_preprocessor.setting_07 = private unnamed_addr constant [2 x i32] [i32 1, i32 0], align 4
@__const.sur40_set_preprocessor.setting_17 = private unnamed_addr constant [2 x i32] [i32 133, i32 128], align 4
@ERANGE = common dso_local global i32 0, align 4
@SUR40_POKE = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sur40_state*, i32)* @sur40_set_preprocessor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sur40_set_preprocessor(%struct.sur40_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sur40_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.sur40_state* %0, %struct.sur40_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ([2 x i32]* @__const.sur40_set_preprocessor.setting_07 to i8*), i64 8, i1 false)
  %10 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x i32]* @__const.sur40_set_preprocessor.setting_17 to i8*), i64 8, i1 false)
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ERANGE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.sur40_state*, %struct.sur40_state** %4, align 8
  %18 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sur40_state*, %struct.sur40_state** %4, align 8
  %21 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_sndctrlpipe(i32 %22, i32 0)
  %24 = load i32, i32* @SUR40_POKE, align 4
  %25 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %26 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @USB_DIR_OUT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_control_msg(i32 %19, i32 %23, i32 %24, i32 %29, i32 7, i32 %33, i32* null, i32 0, i32 1000)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %16
  br label %63

38:                                               ; preds = %16
  %39 = call i32 @msleep(i32 5)
  %40 = load %struct.sur40_state*, %struct.sur40_state** %4, align 8
  %41 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sur40_state*, %struct.sur40_state** %4, align 8
  %44 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usb_sndctrlpipe(i32 %45, i32 0)
  %47 = load i32, i32* @SUR40_POKE, align 4
  %48 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %49 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @USB_DIR_OUT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_control_msg(i32 %42, i32 %46, i32 %47, i32 %52, i32 23, i32 %56, i32* null, i32 0, i32 1000)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  br label %63

61:                                               ; preds = %38
  %62 = call i32 @msleep(i32 5)
  br label %63

63:                                               ; preds = %61, %60, %37
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
