; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_send_ext_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_send_ext_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@CYTP_PS2_CMD_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"send extension cmd 0x%02x, [%d %d %d %d]\0A\00", align 1
@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8, i8*)* @cypress_send_ext_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_send_ext_cmd(%struct.psmouse* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @CYTP_PS2_CMD_TRIES, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %12 = load i8, i8* %6, align 1
  %13 = load i8, i8* %6, align 1
  %14 = call i32 @DECODE_CMD_AA(i8 zeroext %13)
  %15 = load i8, i8* %6, align 1
  %16 = call i32 @DECODE_CMD_BB(i8 zeroext %15)
  %17 = load i8, i8* %6, align 1
  %18 = call i32 @DECODE_CMD_CC(i8 zeroext %17)
  %19 = load i8, i8* %6, align 1
  %20 = call i32 @DECODE_CMD_DD(i8 zeroext %19)
  %21 = call i32 @psmouse_dbg(%struct.psmouse* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8 zeroext %12, i32 %14, i32 %16, i32 %18, i32 %20)
  br label %22

22:                                               ; preds = %58, %3
  %23 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %24 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %25 = load i8, i8* %6, align 1
  %26 = call i32 @DECODE_CMD_DD(i8 zeroext %25)
  %27 = call i32 @cypress_ps2_ext_cmd(%struct.psmouse* %23, i32 %24, i32 %26)
  %28 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %29 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %30 = load i8, i8* %6, align 1
  %31 = call i32 @DECODE_CMD_CC(i8 zeroext %30)
  %32 = call i32 @cypress_ps2_ext_cmd(%struct.psmouse* %28, i32 %29, i32 %31)
  %33 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %34 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %35 = load i8, i8* %6, align 1
  %36 = call i32 @DECODE_CMD_BB(i8 zeroext %35)
  %37 = call i32 @cypress_ps2_ext_cmd(%struct.psmouse* %33, i32 %34, i32 %36)
  %38 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %39 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %40 = load i8, i8* %6, align 1
  %41 = call i32 @DECODE_CMD_AA(i8 zeroext %40)
  %42 = call i32 @cypress_ps2_ext_cmd(%struct.psmouse* %38, i32 %39, i32 %41)
  %43 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %44 = load i8, i8* %6, align 1
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @cypress_ps2_read_cmd_status(%struct.psmouse* %43, i8 zeroext %44, i8* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %22
  br label %58

50:                                               ; preds = %22
  %51 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %52 = load i8, i8* %6, align 1
  %53 = load i8*, i8** %7, align 8
  %54 = call i64 @cypress_verify_cmd_state(%struct.psmouse* %51, i8 zeroext %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %65

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %8, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %22, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i8 zeroext, i32, i32, i32, i32) #1

declare dso_local i32 @DECODE_CMD_AA(i8 zeroext) #1

declare dso_local i32 @DECODE_CMD_BB(i8 zeroext) #1

declare dso_local i32 @DECODE_CMD_CC(i8 zeroext) #1

declare dso_local i32 @DECODE_CMD_DD(i8 zeroext) #1

declare dso_local i32 @cypress_ps2_ext_cmd(%struct.psmouse*, i32, i32) #1

declare dso_local i32 @cypress_ps2_read_cmd_status(%struct.psmouse*, i8 zeroext, i8*) #1

declare dso_local i64 @cypress_verify_cmd_state(%struct.psmouse*, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
