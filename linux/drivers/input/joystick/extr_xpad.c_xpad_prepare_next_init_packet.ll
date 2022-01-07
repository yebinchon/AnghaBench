; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_prepare_next_init_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_prepare_next_init_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xboxone_init_packet = type { i64, i64, i32, i32 }
%struct.usb_xpad = type { i64, i64, i32, i64*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@XTYPE_XBOXONE = common dso_local global i64 0, align 8
@xboxone_init_packets = common dso_local global %struct.xboxone_init_packet* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xpad*)* @xpad_prepare_next_init_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpad_prepare_next_init_packet(%struct.usb_xpad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_xpad*, align 8
  %4 = alloca %struct.xboxone_init_packet*, align 8
  store %struct.usb_xpad* %0, %struct.usb_xpad** %3, align 8
  %5 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %6 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @XTYPE_XBOXONE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %58, %41, %11
  %13 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %14 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.xboxone_init_packet*, %struct.xboxone_init_packet** @xboxone_init_packets, align 8
  %17 = call i64 @ARRAY_SIZE(%struct.xboxone_init_packet* %16)
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %19, label %86

19:                                               ; preds = %12
  %20 = load %struct.xboxone_init_packet*, %struct.xboxone_init_packet** @xboxone_init_packets, align 8
  %21 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %22 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds %struct.xboxone_init_packet, %struct.xboxone_init_packet* %20, i64 %23
  store %struct.xboxone_init_packet* %25, %struct.xboxone_init_packet** %4, align 8
  %26 = load %struct.xboxone_init_packet*, %struct.xboxone_init_packet** %4, align 8
  %27 = getelementptr inbounds %struct.xboxone_init_packet, %struct.xboxone_init_packet* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %19
  %31 = load %struct.xboxone_init_packet*, %struct.xboxone_init_packet** %4, align 8
  %32 = getelementptr inbounds %struct.xboxone_init_packet, %struct.xboxone_init_packet* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %35 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %34, i32 0, i32 5
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %12

42:                                               ; preds = %30, %19
  %43 = load %struct.xboxone_init_packet*, %struct.xboxone_init_packet** %4, align 8
  %44 = getelementptr inbounds %struct.xboxone_init_packet, %struct.xboxone_init_packet* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.xboxone_init_packet*, %struct.xboxone_init_packet** %4, align 8
  %49 = getelementptr inbounds %struct.xboxone_init_packet, %struct.xboxone_init_packet* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %52 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %51, i32 0, i32 5
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %50, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %12

59:                                               ; preds = %47, %42
  %60 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %61 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %60, i32 0, i32 3
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.xboxone_init_packet*, %struct.xboxone_init_packet** %4, align 8
  %64 = getelementptr inbounds %struct.xboxone_init_packet, %struct.xboxone_init_packet* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xboxone_init_packet*, %struct.xboxone_init_packet** %4, align 8
  %67 = getelementptr inbounds %struct.xboxone_init_packet, %struct.xboxone_init_packet* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(i64* %62, i32 %65, i32 %68)
  %70 = load %struct.xboxone_init_packet*, %struct.xboxone_init_packet** %4, align 8
  %71 = getelementptr inbounds %struct.xboxone_init_packet, %struct.xboxone_init_packet* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %74 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %73, i32 0, i32 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  %77 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %78 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = sext i32 %79 to i64
  %82 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %83 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  store i64 %81, i64* %85, align 8
  store i32 1, i32* %2, align 4
  br label %87

86:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %59, %10
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i64 @ARRAY_SIZE(%struct.xboxone_init_packet*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
