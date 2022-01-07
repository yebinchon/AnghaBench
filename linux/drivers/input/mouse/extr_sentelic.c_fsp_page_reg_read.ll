; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_page_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_page_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@FSP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@FSP_CMD_TIMEOUT2 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"READ PAGE REG: 0x%02x (rc = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32*)* @fsp_page_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_page_reg_read(%struct.psmouse* %0, i32* %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  store %struct.ps2dev* %9, %struct.ps2dev** %5, align 8
  store i32 -1, i32* %7, align 4
  %10 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %11 = call i32 @psmouse_deactivate(%struct.psmouse* %10)
  %12 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %13 = call i32 @ps2_begin_command(%struct.ps2dev* %12)
  %14 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %15 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %16 = call i64 @ps2_sendbyte(%struct.ps2dev* %14, i32 243, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %21 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %22 = call i64 @ps2_sendbyte(%struct.ps2dev* %20, i32 102, i32 %21)
  %23 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %24 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %25 = call i64 @ps2_sendbyte(%struct.ps2dev* %23, i32 136, i32 %24)
  %26 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %27 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %28 = call i64 @ps2_sendbyte(%struct.ps2dev* %26, i32 243, i32 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %49

31:                                               ; preds = %19
  %32 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %33 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %34 = call i64 @ps2_sendbyte(%struct.ps2dev* %32, i32 131, i32 %33)
  %35 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %36 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %37 = call i64 @ps2_sendbyte(%struct.ps2dev* %35, i32 136, i32 %36)
  %38 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %40 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %41 = call i64 @__ps2_command(%struct.ps2dev* %38, i8* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %49

44:                                               ; preds = %31
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32*, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %43, %30, %18
  %50 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %51 = call i32 @ps2_end_command(%struct.ps2dev* %50)
  %52 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %53 = call i32 @psmouse_activate(%struct.psmouse* %52)
  %54 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @psmouse_dbg(%struct.psmouse* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @psmouse_deactivate(%struct.psmouse*) #1

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i64 @ps2_sendbyte(%struct.ps2dev*, i32, i32) #1

declare dso_local i64 @__ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
