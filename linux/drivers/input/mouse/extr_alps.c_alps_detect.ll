; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i8*, i32*, i32 }
%struct.alps_data = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"ALPS CS19 trackpoint-only device detected, ignoring\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ALPS\00", align 1
@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"DualPoint TouchPad\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"GlidePoint\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alps_detect(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alps_data*, align 8
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = call i32 @alps_identify(%struct.psmouse* %8, %struct.alps_data* null)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %70

14:                                               ; preds = %2
  %15 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %16 = call i64 @alps_is_cs19_trackpoint(%struct.psmouse* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %20 = call i32 @psmouse_dbg(%struct.psmouse* %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %70

23:                                               ; preds = %14
  %24 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %25 = call i32 @psmouse_reset(%struct.psmouse* %24)
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.alps_data* @kzalloc(i32 8, i32 %26)
  store %struct.alps_data* %27, %struct.alps_data** %6, align 8
  %28 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %29 = icmp ne %struct.alps_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %70

33:                                               ; preds = %23
  %34 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %35 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %36 = call i32 @alps_identify(%struct.psmouse* %34, %struct.alps_data* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %41 = call i32 @kfree(%struct.alps_data* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %70

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %48 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %48, align 8
  %49 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %50 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ALPS_DUALPOINT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %57 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %58 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %60 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %63 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  br label %69

64:                                               ; preds = %43
  %65 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  %66 = call i32 @kfree(%struct.alps_data* %65)
  %67 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %68 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %64, %46
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %39, %30, %18, %12
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @alps_identify(%struct.psmouse*, %struct.alps_data*) #1

declare dso_local i64 @alps_is_cs19_trackpoint(%struct.psmouse*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local %struct.alps_data* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.alps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
