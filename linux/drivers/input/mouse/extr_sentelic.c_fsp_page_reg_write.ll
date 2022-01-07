; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_page_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_page_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@FSP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@FSP_CMD_TIMEOUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WRITE PAGE REG: to 0x%02x (rc = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @fsp_page_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_page_reg_write(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  store %struct.ps2dev* %9, %struct.ps2dev** %5, align 8
  store i32 -1, i32* %7, align 4
  %10 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %11 = call i32 @ps2_begin_command(%struct.ps2dev* %10)
  %12 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %13 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %14 = call i64 @ps2_sendbyte(%struct.ps2dev* %12, i8 zeroext -13, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %19 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %20 = call i64 @ps2_sendbyte(%struct.ps2dev* %18, i8 zeroext 56, i32 %19)
  %21 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %22 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %23 = call i64 @ps2_sendbyte(%struct.ps2dev* %21, i8 zeroext -120, i32 %22)
  %24 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %25 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %26 = call i64 @ps2_sendbyte(%struct.ps2dev* %24, i8 zeroext -13, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %59

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = call zeroext i8 @fsp_test_invert_cmd(i32 %30)
  store i8 %31, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %37 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %38 = call i64 @ps2_sendbyte(%struct.ps2dev* %36, i8 zeroext 71, i32 %37)
  br label %54

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = call zeroext i8 @fsp_test_swap_cmd(i32 %40)
  store i8 %41, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %47 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %48 = call i64 @ps2_sendbyte(%struct.ps2dev* %46, i8 zeroext 68, i32 %47)
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %51 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %52 = call i64 @ps2_sendbyte(%struct.ps2dev* %50, i8 zeroext 51, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %56 = load i8, i8* %6, align 1
  %57 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %58 = call i64 @ps2_sendbyte(%struct.ps2dev* %55, i8 zeroext %56, i32 %57)
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %54, %28, %16
  %60 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %61 = call i32 @ps2_end_command(%struct.ps2dev* %60)
  %62 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @psmouse_dbg(%struct.psmouse* %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i64 @ps2_sendbyte(%struct.ps2dev*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @fsp_test_invert_cmd(i32) #1

declare dso_local zeroext i8 @fsp_test_swap_cmd(i32) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
