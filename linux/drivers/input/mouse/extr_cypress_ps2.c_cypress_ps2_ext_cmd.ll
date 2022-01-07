; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_ps2_ext_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_ps2_ext_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@CYTP_PS2_CMD_TRIES = common dso_local global i32 0, align 4
@CYTP_PS2_RETRY = common dso_local global i32 0, align 4
@CYTP_PS2_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i16, i8)* @cypress_ps2_ext_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_ps2_ext_cmd(%struct.psmouse* %0, i16 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca %struct.ps2dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8 %2, i8* %6, align 1
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  store %struct.ps2dev* %11, %struct.ps2dev** %7, align 8
  %12 = load i32, i32* @CYTP_PS2_CMD_TRIES, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %14 = call i32 @ps2_begin_command(%struct.ps2dev* %13)
  br label %15

15:                                               ; preds = %57, %3
  %16 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 255
  %20 = trunc i32 %19 to i8
  %21 = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %16, i8 zeroext %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @CYTP_PS2_RETRY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %27 = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %26, i8 zeroext 0)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @CYTP_PS2_RETRY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %33 = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %32, i8 zeroext 10)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @CYTP_PS2_ERROR, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %57

40:                                               ; preds = %35
  %41 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %42 = load i8, i8* %6, align 1
  %43 = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %41, i8 zeroext %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @CYTP_PS2_RETRY, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %49 = load i8, i8* %6, align 1
  %50 = call i32 @cypress_ps2_sendbyte(%struct.psmouse* %48, i8 zeroext %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @CYTP_PS2_ERROR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %57

56:                                               ; preds = %51
  br label %61

57:                                               ; preds = %55, %39
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %8, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %15, label %61

61:                                               ; preds = %57, %56
  %62 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %63 = call i32 @ps2_end_command(%struct.ps2dev* %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i32 @cypress_ps2_sendbyte(%struct.psmouse*, i8 zeroext) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
