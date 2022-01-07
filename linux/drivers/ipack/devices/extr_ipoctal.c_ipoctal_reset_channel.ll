; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_reset_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_reset_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoctal_channel = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CR_DISABLE_RX = common dso_local global i32 0, align 4
@CR_DISABLE_TX = common dso_local global i32 0, align 4
@CR_CMD_RESET_RX = common dso_local global i32 0, align 4
@CR_CMD_RESET_TX = common dso_local global i32 0, align 4
@CR_CMD_RESET_ERR_STATUS = common dso_local global i32 0, align 4
@CR_CMD_RESET_MR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoctal_channel*)* @ipoctal_reset_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoctal_reset_channel(%struct.ipoctal_channel* %0) #0 {
  %2 = alloca %struct.ipoctal_channel*, align 8
  store %struct.ipoctal_channel* %0, %struct.ipoctal_channel** %2, align 8
  %3 = load i32, i32* @CR_DISABLE_RX, align 4
  %4 = load i32, i32* @CR_DISABLE_TX, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %7 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @iowrite8(i32 %5, i32* %10)
  %12 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %13 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @CR_CMD_RESET_RX, align 4
  %15 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %16 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @iowrite8(i32 %14, i32* %19)
  %21 = load i32, i32* @CR_CMD_RESET_TX, align 4
  %22 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %23 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @iowrite8(i32 %21, i32* %26)
  %28 = load i32, i32* @CR_CMD_RESET_ERR_STATUS, align 4
  %29 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %30 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @iowrite8(i32 %28, i32* %33)
  %35 = load i32, i32* @CR_CMD_RESET_MR, align 4
  %36 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %2, align 8
  %37 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @iowrite8(i32 %35, i32* %40)
  ret void
}

declare dso_local i32 @iowrite8(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
