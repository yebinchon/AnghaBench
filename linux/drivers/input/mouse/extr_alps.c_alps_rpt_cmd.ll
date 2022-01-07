; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_rpt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_rpt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%2.2X report: %3ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32, i32, i8*)* @alps_rpt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_rpt_cmd(%struct.psmouse* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ps2dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  store %struct.ps2dev* %12, %struct.ps2dev** %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.ps2dev*, %struct.ps2dev** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @ps2_command(%struct.ps2dev* %18, i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %64

26:                                               ; preds = %17, %4
  %27 = load %struct.ps2dev*, %struct.ps2dev** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @ps2_command(%struct.ps2dev* %27, i8* null, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.ps2dev*, %struct.ps2dev** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @ps2_command(%struct.ps2dev* %32, i8* null, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.ps2dev*, %struct.ps2dev** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @ps2_command(%struct.ps2dev* %37, i8* null, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %31, %26
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %64

44:                                               ; preds = %36
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8 -1, i8* %46, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8 -1, i8* %48, align 1
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 -1, i8* %50, align 1
  %51 = load %struct.ps2dev*, %struct.ps2dev** %10, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %54 = call i64 @ps2_command(%struct.ps2dev* %51, i8* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %44
  %60 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @psmouse_dbg(%struct.psmouse* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %61, i8* %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %56, %41, %23
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
