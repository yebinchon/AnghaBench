; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_ps2_read_cmd_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_ps2_read_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32, i32, %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_MODE = common dso_local global i32 0, align 4
@CYTP_CMD_READ_TP_METRICS = common dso_local global i8 0, align 1
@CYTP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Command 0x%02x response data (0x): %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8, i8*)* @cypress_ps2_read_cmd_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_ps2_read_cmd_status(%struct.psmouse* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ps2dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 3
  store %struct.ps2dev* %12, %struct.ps2dev** %8, align 8
  %13 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %14 = call i32 @ps2_begin_command(%struct.ps2dev* %13)
  %15 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @PSMOUSE_CMD_MODE, align 4
  %19 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %22 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @CYTP_CMD_READ_TP_METRICS, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 8, i32 3
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @memset(i8* %30, i32 0, i32 %31)
  %33 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %34 = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %33, i32 233)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %62

38:                                               ; preds = %3
  %39 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %40 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @CYTP_CMD_TIMEOUT, align 4
  %49 = call i32 @msecs_to_jiffies(i32 %48)
  %50 = call i32 @wait_event_timeout(i32 %41, i32 %47, i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %53 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @memcpy(i8* %51, i32 %54, i32 %55)
  %57 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %58 = load i8, i8* %5, align 1
  %59 = load i32, i32* %10, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @psmouse_dbg(%struct.psmouse* %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8 zeroext %58, i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %38, %37
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %65 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %67 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %69 = call i32 @ps2_end_command(%struct.ps2dev* %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @cypress_ps2_sendbyte(%struct.psmouse*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i8 zeroext, i32, i8*) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
