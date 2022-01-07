; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@FSP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@FSP_CMD_TIMEOUT2 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"READ REG: 0x%02x is 0x%02x (rc = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32, i32*)* @fsp_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_reg_read(%struct.psmouse* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ps2dev*, align 8
  %8 = alloca [3 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  store %struct.ps2dev* %12, %struct.ps2dev** %7, align 8
  store i32 -1, i32* %10, align 4
  %13 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %14 = call i32 @psmouse_deactivate(%struct.psmouse* %13)
  %15 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %16 = call i32 @ps2_begin_command(%struct.ps2dev* %15)
  %17 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %18 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %19 = call i64 @ps2_sendbyte(%struct.ps2dev* %17, i8 zeroext -13, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %75

22:                                               ; preds = %3
  %23 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %24 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %25 = call i64 @ps2_sendbyte(%struct.ps2dev* %23, i8 zeroext 102, i32 %24)
  %26 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %27 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %28 = call i64 @ps2_sendbyte(%struct.ps2dev* %26, i8 zeroext -120, i32 %27)
  %29 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %30 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %31 = call i64 @ps2_sendbyte(%struct.ps2dev* %29, i8 zeroext -13, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %75

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = call zeroext i8 @fsp_test_invert_cmd(i32 %35)
  store i8 %36, i8* %9, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %42 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %43 = call i64 @ps2_sendbyte(%struct.ps2dev* %41, i8 zeroext 104, i32 %42)
  br label %59

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = call zeroext i8 @fsp_test_swap_cmd(i32 %45)
  store i8 %46, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %52 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %53 = call i64 @ps2_sendbyte(%struct.ps2dev* %51, i8 zeroext -52, i32 %52)
  br label %58

54:                                               ; preds = %44
  %55 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %56 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %57 = call i64 @ps2_sendbyte(%struct.ps2dev* %55, i8 zeroext 102, i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %61 = load i8, i8* %9, align 1
  %62 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %63 = call i64 @ps2_sendbyte(%struct.ps2dev* %60, i8 zeroext %61, i32 %62)
  %64 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %65 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %66 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %67 = call i64 @__ps2_command(%struct.ps2dev* %64, i8* %65, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %75

70:                                               ; preds = %59
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %70, %69, %33, %21
  %76 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %77 = call i32 @ps2_end_command(%struct.ps2dev* %76)
  %78 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %79 = call i32 @psmouse_activate(%struct.psmouse* %78)
  %80 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @psmouse_dbg(%struct.psmouse* %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %83, i32 %84)
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i32 @psmouse_deactivate(%struct.psmouse*) #1

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i64 @ps2_sendbyte(%struct.ps2dev*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @fsp_test_invert_cmd(i32) #1

declare dso_local zeroext i8 @fsp_test_swap_cmd(i32) #1

declare dso_local i64 @__ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
