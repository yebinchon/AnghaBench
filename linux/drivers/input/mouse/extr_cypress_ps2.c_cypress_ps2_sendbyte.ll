; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_ps2_sendbyte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_ps2_sendbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i64 }

@CYTP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"sending command 0x%02x failed, resp 0x%02x\0A\00", align 1
@CYTP_PS2_RETRY = common dso_local global i64 0, align 8
@CYTP_PS2_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @cypress_ps2_sendbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_ps2_sendbyte(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 0
  store %struct.ps2dev* %8, %struct.ps2dev** %6, align 8
  %9 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 255
  %12 = load i32, i32* @CYTP_CMD_TIMEOUT, align 4
  %13 = call i64 @ps2_sendbyte(%struct.ps2dev* %9, i32 %11, i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 255
  %19 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %20 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct.psmouse*, i8*, i32, ...) @psmouse_dbg(%struct.psmouse* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %21)
  %23 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %24 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CYTP_PS2_RETRY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i64, i64* @CYTP_PS2_RETRY, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %34

31:                                               ; preds = %15
  %32 = load i32, i32* @CYTP_PS2_ERROR, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %28
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @ps2_sendbyte(%struct.ps2dev*, i32, i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
