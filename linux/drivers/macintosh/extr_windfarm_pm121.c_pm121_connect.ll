; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm121.c_pm121_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm121.c_pm121_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_8__*, i32*)* }

@pm121_connection = common dso_local global %struct.TYPE_9__* null, align 8
@controls = common dso_local global %struct.TYPE_8__** null, align 8
@.str = private unnamed_addr constant [56 x i8] c"pm121: %s depending on %s, corrected from %d to %d RPM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pm121_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm121_connect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm121_connection, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %76

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @controls, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %14, i64 %16
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %21, align 8
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @controls, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = call i32 %22(%struct.TYPE_8__* %27, i32* %6)
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm121_connection, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %29, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm121_connection, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %13
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 16
  %49 = call i32 @max(i32 %46, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %45
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @controls, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @controls, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pm121_connection, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %61, i64 %64
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %53, %45
  br label %75

73:                                               ; preds = %13
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %73, %72
  br label %78

76:                                               ; preds = %2
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
