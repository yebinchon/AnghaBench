; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_atkbd.c_atkbd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i32, i64, %struct.ps2dev }
%struct.ps2dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@atkbd_reset = common dso_local global i64 0, align 8
@ATKBD_CMD_RESET_BAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"keyboard reset failed on %s\0A\00", align 1
@ATKBD_CMD_GETID = common dso_local global i32 0, align 4
@ATKBD_CMD_SETLEDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [118 x i8] c"NCD terminal keyboards are only supported on non-translating controllers. Use i8042.direct=1 to disable translation.\0A\00", align 1
@atkbd_skip_deactivate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*)* @atkbd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_probe(%struct.atkbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atkbd*, align 8
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca [2 x i8], align 1
  store %struct.atkbd* %0, %struct.atkbd** %3, align 8
  %6 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %7 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %6, i32 0, i32 2
  store %struct.ps2dev* %7, %struct.ps2dev** %4, align 8
  %8 = load i64, i64* @atkbd_reset, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %12 = load i32, i32* @ATKBD_CMD_RESET_BAT, align 4
  %13 = call i64 @ps2_command(%struct.ps2dev* %11, i8* null, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %17 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %21 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %15, %10
  br label %27

27:                                               ; preds = %26, %1
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  store i8 -91, i8* %28, align 1
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 -91, i8* %29, align 1
  %30 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %32 = load i32, i32* @ATKBD_CMD_GETID, align 4
  %33 = call i64 @ps2_command(%struct.ps2dev* %30, i8* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %36, align 1
  %37 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %38 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %39 = load i32, i32* @ATKBD_CMD_SETLEDS, align 4
  %40 = call i64 @ps2_command(%struct.ps2dev* %37, i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %85

43:                                               ; preds = %35
  %44 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %45 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %44, i32 0, i32 0
  store i32 43962, i32* %45, align 8
  store i32 0, i32* %2, align 4
  br label %85

46:                                               ; preds = %27
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @ps2_is_keyboard_id(i8 zeroext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %85

52:                                               ; preds = %46
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 8
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %56, %59
  %61 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %62 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %64 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 44193
  br i1 %66, label %67, label %78

67:                                               ; preds = %52
  %68 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %69 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %74 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %85

78:                                               ; preds = %67, %52
  %79 = load i32, i32* @atkbd_skip_deactivate, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %83 = call i32 @atkbd_deactivate(%struct.atkbd* %82)
  br label %84

84:                                               ; preds = %81, %78
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %72, %51, %43, %42
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @ps2_is_keyboard_id(i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @atkbd_deactivate(%struct.atkbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
