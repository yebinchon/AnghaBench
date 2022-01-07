; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_dolphin_get_device_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_dolphin_get_device_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }
%struct.alps_data = type { i32, i32, i32, i32 }

@PSMOUSE_CMD_RESET_WRAP = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETPOLL = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@DOLPHIN_PROFILE_XOFFSET = common dso_local global i8 0, align 1
@DOLPHIN_PROFILE_YOFFSET = common dso_local global i8 0, align 1
@DOLPHIN_COUNT_PER_ELECTRODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, %struct.alps_data*)* @alps_dolphin_get_device_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_dolphin_get_device_area(%struct.psmouse* %0, %struct.alps_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca %struct.alps_data*, align 8
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store %struct.alps_data* %1, %struct.alps_data** %5, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  store %struct.ps2dev* %11, %struct.ps2dev** %6, align 8
  %12 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %14 = call i64 @alps_enter_command_mode(%struct.psmouse* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %92

17:                                               ; preds = %2
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 10, i8* %18, align 1
  %19 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %20 = load i32, i32* @PSMOUSE_CMD_RESET_WRAP, align 4
  %21 = call i64 @ps2_command(%struct.ps2dev* %19, i8* null, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %25 = load i32, i32* @PSMOUSE_CMD_SETPOLL, align 4
  %26 = call i64 @ps2_command(%struct.ps2dev* %24, i8* null, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %30 = load i32, i32* @PSMOUSE_CMD_SETPOLL, align 4
  %31 = call i64 @ps2_command(%struct.ps2dev* %29, i8* null, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %36 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %37 = call i64 @ps2_command(%struct.ps2dev* %34, i8* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %42 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %43 = call i64 @ps2_command(%struct.ps2dev* %40, i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %33, %28, %23, %17
  store i32 -1, i32* %3, align 4
  br label %92

46:                                               ; preds = %39
  %47 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %49 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %50 = call i64 @ps2_command(%struct.ps2dev* %47, i8* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %92

53:                                               ; preds = %46
  %54 = load i8, i8* @DOLPHIN_PROFILE_XOFFSET, align 1
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 15
  %60 = add nsw i32 %55, %59
  store i32 %60, i32* %8, align 4
  %61 = load i8, i8* @DOLPHIN_PROFILE_YOFFSET, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = ashr i32 %65, 4
  %67 = and i32 %66, 15
  %68 = add nsw i32 %62, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %71 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %74 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @DOLPHIN_COUNT_PER_ELECTRODE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %80 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* @DOLPHIN_COUNT_PER_ELECTRODE, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %86 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %88 = call i64 @alps_exit_command_mode(%struct.psmouse* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %92

91:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %90, %52, %45, %16
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @alps_enter_command_mode(%struct.psmouse*) #2

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #2

declare dso_local i64 @alps_exit_command_mode(%struct.psmouse*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
