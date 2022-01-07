; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_select_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_select_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.hgpk_data*, %struct.ps2dev }
%struct.hgpk_data = type { i32 }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE11 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE21 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @hgpk_select_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_select_mode(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca %struct.hgpk_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [7 x i32], align 16
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 2
  store %struct.ps2dev* %10, %struct.ps2dev** %4, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 1
  %13 = load %struct.hgpk_data*, %struct.hgpk_data** %12, align 8
  store %struct.hgpk_data* %13, %struct.hgpk_data** %5, align 8
  %14 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %15 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  %19 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 242, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 242, i32* %23, align 4
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 242, i32* %24, align 4
  %25 = load %struct.hgpk_data*, %struct.hgpk_data** %5, align 8
  %26 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %73 [
    i32 129, label %28
    i32 130, label %31
    i32 128, label %31
  ]

28:                                               ; preds = %1
  %29 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %30 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %29, i32 0, i32 0
  store i32 3, i32* %30, align 8
  br label %76

31:                                               ; preds = %1, %1
  %32 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %33 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %32, i32 0, i32 0
  store i32 6, i32* %33, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %51, %31
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 0
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [7 x i32], [7 x i32]* %8, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ps2_command(%struct.ps2dev* %40, i32* null, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %77

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %34

54:                                               ; preds = %34
  %55 = load %struct.hgpk_data*, %struct.hgpk_data** %5, align 8
  %56 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 130
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @PSMOUSE_CMD_SETSCALE11, align 4
  br label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @PSMOUSE_CMD_SETSCALE21, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  store i32 %64, i32* %7, align 4
  %65 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ps2_command(%struct.ps2dev* %65, i32* null, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %77

72:                                               ; preds = %63
  br label %76

73:                                               ; preds = %1
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %77

76:                                               ; preds = %72, %28
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %73, %69, %47
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
