; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_write_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_write_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ipoctal_channel* }
%struct.ipoctal_channel = type { i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IPACK1_DEVICE_ID_SBS_OCTAL_485 = common dso_local global i64 0, align 8
@CR_DISABLE_RX = common dso_local global i32 0, align 4
@CR_CMD_ASSERT_RTSN = common dso_local global i32 0, align 4
@CR_ENABLE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @ipoctal_write_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoctal_write_tty(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipoctal_channel*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %10, align 8
  store %struct.ipoctal_channel* %11, %struct.ipoctal_channel** %7, align 8
  %12 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ipoctal_copy_write_buffer(%struct.ipoctal_channel* %12, i8* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %7, align 8
  %17 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IPACK1_DEVICE_ID_SBS_OCTAL_485, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %3
  %22 = load i32, i32* @CR_DISABLE_RX, align 4
  %23 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %7, align 8
  %24 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @iowrite8(i32 %22, i32* %27)
  %29 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %7, align 8
  %30 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @CR_CMD_ASSERT_RTSN, align 4
  %32 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %7, align 8
  %33 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @iowrite8(i32 %31, i32* %36)
  br label %38

38:                                               ; preds = %21, %3
  %39 = load i32, i32* @CR_ENABLE_TX, align 4
  %40 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %7, align 8
  %41 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @iowrite8(i32 %39, i32* %44)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @ipoctal_copy_write_buffer(%struct.ipoctal_channel*, i8*, i32) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
