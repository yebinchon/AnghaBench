; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@FSP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@FSP_CMD_TIMEOUT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"WRITE REG: 0x%02x to 0x%02x (rc = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32, i32)* @fsp_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_reg_write(%struct.psmouse* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps2dev*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  store %struct.ps2dev* %11, %struct.ps2dev** %7, align 8
  store i32 -1, i32* %9, align 4
  %12 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %13 = call i32 @ps2_begin_command(%struct.ps2dev* %12)
  %14 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %15 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %16 = call i64 @ps2_sendbyte(%struct.ps2dev* %14, i8 zeroext -13, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %84

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call zeroext i8 @fsp_test_invert_cmd(i32 %20)
  store i8 %21, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %27 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %28 = call i64 @ps2_sendbyte(%struct.ps2dev* %26, i8 zeroext 116, i32 %27)
  br label %44

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = call zeroext i8 @fsp_test_swap_cmd(i32 %30)
  store i8 %31, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %37 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %38 = call i64 @ps2_sendbyte(%struct.ps2dev* %36, i8 zeroext 119, i32 %37)
  br label %43

39:                                               ; preds = %29
  %40 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %41 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %42 = call i64 @ps2_sendbyte(%struct.ps2dev* %40, i8 zeroext 85, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %46 = load i8, i8* %8, align 1
  %47 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %48 = call i64 @ps2_sendbyte(%struct.ps2dev* %45, i8 zeroext %46, i32 %47)
  %49 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %50 = load i32, i32* @FSP_CMD_TIMEOUT, align 4
  %51 = call i64 @ps2_sendbyte(%struct.ps2dev* %49, i8 zeroext -13, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %84

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = call zeroext i8 @fsp_test_invert_cmd(i32 %55)
  store i8 %56, i8* %8, align 1
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %62 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %63 = call i64 @ps2_sendbyte(%struct.ps2dev* %61, i8 zeroext 71, i32 %62)
  br label %79

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = call zeroext i8 @fsp_test_swap_cmd(i32 %65)
  store i8 %66, i8* %8, align 1
  %67 = zext i8 %66 to i32
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %72 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %73 = call i64 @ps2_sendbyte(%struct.ps2dev* %71, i8 zeroext 68, i32 %72)
  br label %78

74:                                               ; preds = %64
  %75 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %76 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %77 = call i64 @ps2_sendbyte(%struct.ps2dev* %75, i8 zeroext 51, i32 %76)
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %81 = load i8, i8* %8, align 1
  %82 = load i32, i32* @FSP_CMD_TIMEOUT2, align 4
  %83 = call i64 @ps2_sendbyte(%struct.ps2dev* %80, i8 zeroext %81, i32 %82)
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %79, %53, %18
  %85 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %86 = call i32 @ps2_end_command(%struct.ps2dev* %85)
  %87 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @psmouse_dbg(%struct.psmouse* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @ps2_begin_command(%struct.ps2dev*) #1

declare dso_local i64 @ps2_sendbyte(%struct.ps2dev*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @fsp_test_invert_cmd(i32) #1

declare dso_local zeroext i8 @fsp_test_swap_cmd(i32) #1

declare dso_local i32 @ps2_end_command(%struct.ps2dev*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
