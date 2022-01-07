; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32, i32, i32, %struct.alps_data* }
%struct.alps_data = type { i32, i8, i8 }

@ALPS_PASS = common dso_local global i32 0, align 4
@PSMOUSE_CMD_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_poll(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  %5 = alloca [4 x i8], align 1
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 4
  %9 = load %struct.alps_data*, %struct.alps_data** %8, align 8
  store %struct.alps_data* %9, %struct.alps_data** %4, align 8
  %10 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %11 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ALPS_PASS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %18 = call i32 @alps_passthrough_mode_v2(%struct.psmouse* %17, i32 1)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 3
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %23 = load i32, i32* @PSMOUSE_CMD_POLL, align 4
  %24 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %25 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 8
  %28 = or i32 %23, %27
  %29 = call i64 @ps2_command(i32* %21, i8* %22, i32 %28)
  %30 = icmp slt i64 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %33 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ALPS_PASS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %19
  %39 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %40 = call i32 @alps_passthrough_mode_v2(%struct.psmouse* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %19
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %49 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %48, i32 0, i32 1
  %50 = load i8, i8* %49, align 4
  %51 = zext i8 %50 to i32
  %52 = and i32 %47, %51
  %53 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %54 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %53, i32 0, i32 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %44, %41
  store i32 -1, i32* %2, align 4
  br label %81

59:                                               ; preds = %44
  %60 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %61 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 200
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %67 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %66, i32 0, i32 3
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %69 = load i32, i32* @PSMOUSE_CMD_POLL, align 4
  %70 = or i32 %69, 768
  %71 = call i64 @ps2_command(i32* %67, i8* %68, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 -1, i32* %2, align 4
  br label %81

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %59
  %76 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %77 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %80 = call i32 @memcpy(i32 %78, i8* %79, i32 4)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %73, %58
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @alps_passthrough_mode_v2(%struct.psmouse*, i32) #1

declare dso_local i64 @ps2_command(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
