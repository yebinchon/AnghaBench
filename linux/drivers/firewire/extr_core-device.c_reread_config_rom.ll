; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_reread_config_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-device.c_reread_config_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_device = type { i64* }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
@RCODE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_device*, i32, i32*)* @reread_config_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reread_config_rom(%struct.fw_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fw_device* %0, %struct.fw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %46, %3
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @read_rom(%struct.fw_device* %15, i32 %16, i32 %17, i64* %8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @RCODE_COMPLETE, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %52

24:                                               ; preds = %14
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @RCODE_BUSY, align 4
  store i32 %31, i32* %4, align 4
  br label %52

32:                                               ; preds = %27, %24
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.fw_device*, %struct.fw_device** %5, align 8
  %35 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %33, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32*, i32** %7, align 8
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load i32*, i32** %7, align 8
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %42, %30, %22
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @read_rom(%struct.fw_device*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
