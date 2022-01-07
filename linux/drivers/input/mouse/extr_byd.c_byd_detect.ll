; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_byd.c_byd_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_byd.c_byd_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, %struct.ps2dev }
%struct.ps2dev = type { i32 }

@__const.byd_detect.param = private unnamed_addr constant [4 x i32] [i32 3, i32 0, i32 0, i32 0], align 16
@PSMOUSE_CMD_SETRES = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"BYD touchpad detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"BYD\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"TouchPad\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @byd_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca [4 x i32], align 16
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2
  store %struct.ps2dev* %9, %struct.ps2dev** %6, align 8
  %10 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x i32]* @__const.byd_detect.param to i8*), i64 16, i1 false)
  %11 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %13 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %14 = call i64 @ps2_command(%struct.ps2dev* %11, i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %21 = call i64 @ps2_command(%struct.ps2dev* %18, i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %67

24:                                               ; preds = %17
  %25 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %28 = call i64 @ps2_command(%struct.ps2dev* %25, i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %34 = load i32, i32* @PSMOUSE_CMD_SETRES, align 4
  %35 = call i64 @ps2_command(%struct.ps2dev* %32, i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %67

38:                                               ; preds = %31
  %39 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %41 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %42 = call i64 @ps2_command(%struct.ps2dev* %39, i32* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %67

45:                                               ; preds = %38
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 3
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 100
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %67

56:                                               ; preds = %49
  %57 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %58 = call i32 @psmouse_dbg(%struct.psmouse* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %63 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %63, align 8
  %64 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %65 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %64, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %65, align 8
  br label %66

66:                                               ; preds = %61, %56
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %53, %44, %37, %30, %23, %16
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ps2_command(%struct.ps2dev*, i32*, i32) #2

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
