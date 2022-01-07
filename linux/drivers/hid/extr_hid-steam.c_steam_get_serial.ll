; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_get_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.steam_device = type { i32 }

@STEAM_CMD_GET_SERIAL = common dso_local global i32 0, align 4
@STEAM_SERIAL_LEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.steam_device*)* @steam_get_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @steam_get_serial(%struct.steam_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.steam_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.steam_device* %0, %struct.steam_device** %3, align 8
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %10 = load i32, i32* @STEAM_CMD_GET_SERIAL, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 21, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* @STEAM_SERIAL_LEN, align 4
  %14 = add nsw i32 3, %13
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %21 = call i32 @steam_send_report(%struct.steam_device* %19, i32* %20, i32 12)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

26:                                               ; preds = %1
  %27 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %28 = mul nuw i64 4, %16
  %29 = trunc i64 %28 to i32
  %30 = call i32 @steam_recv_report(%struct.steam_device* %27, i32* %18, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

35:                                               ; preds = %26
  %36 = getelementptr inbounds i32, i32* %18, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = icmp ne i32 %37, 174
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds i32, i32* %18, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 21
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i32, i32* %18, i64 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39, %35
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

50:                                               ; preds = %43
  %51 = load i32, i32* @STEAM_SERIAL_LEN, align 4
  %52 = add nsw i32 3, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %18, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load %struct.steam_device*, %struct.steam_device** %3, align 8
  %56 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %18, i64 3
  %59 = call i32 @strlcpy(i32 %57, i32* %58, i32 4)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %50, %47, %33, %24
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @steam_send_report(%struct.steam_device*, i32*, i32) #2

declare dso_local i32 @steam_recv_report(%struct.steam_device*, i32*, i32) #2

declare dso_local i32 @strlcpy(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
