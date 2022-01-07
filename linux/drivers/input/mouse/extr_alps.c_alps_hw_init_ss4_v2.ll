; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_ss4_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_ss4_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@__const.alps_hw_init_ss4_v2.param = private unnamed_addr constant [2 x i8] c"d(", align 1
@PSMOUSE_CMD_SETSTREAM = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_hw_init_ss4_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_hw_init_ss4_v2(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca [2 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 0
  store %struct.ps2dev* %8, %struct.ps2dev** %4, align 8
  %9 = bitcast [2 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.alps_hw_init_ss4_v2.param, i32 0, i32 0), i64 2, i1 false)
  store i32 -1, i32* %6, align 4
  %10 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %11 = load i32, i32* @PSMOUSE_CMD_SETSTREAM, align 4
  %12 = call i32 @ps2_command(%struct.ps2dev* %10, i8* null, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %1
  %15 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %16 = load i32, i32* @PSMOUSE_CMD_SETSTREAM, align 4
  %17 = call i32 @ps2_command(%struct.ps2dev* %15, i8* null, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  %22 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %23 = call i32 @ps2_command(%struct.ps2dev* %20, i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 1
  %28 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %29 = call i32 @ps2_command(%struct.ps2dev* %26, i8* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19, %14, %1
  br label %51

32:                                               ; preds = %25
  %33 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %34 = call i64 @alps_exit_command_mode(%struct.psmouse* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %38 = call i64 @alps_enter_command_mode(%struct.psmouse* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %42 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %41, i32 29, i32 32)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %36, %32
  br label %51

45:                                               ; preds = %40
  %46 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %47 = call i64 @alps_exit_command_mode(%struct.psmouse* %46)
  %48 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %49 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %50 = call i32 @ps2_command(%struct.ps2dev* %48, i8* null, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %44, %31
  %52 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %53 = call i64 @alps_exit_command_mode(%struct.psmouse* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %45
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #2

declare dso_local i64 @alps_exit_command_mode(%struct.psmouse*) #2

declare dso_local i64 @alps_enter_command_mode(%struct.psmouse*) #2

declare dso_local i64 @alps_command_mode_write_reg(%struct.psmouse*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
