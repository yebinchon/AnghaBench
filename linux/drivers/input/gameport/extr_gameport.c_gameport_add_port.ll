; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gameport* }

@use_ktime = common dso_local global i64 0, align 8
@gameport_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s is %s, io %#x, speed %dkHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s is %s, speed %dkHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"device_add() failed for %s (%s), error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @gameport_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gameport_add_port(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %4 = load %struct.gameport*, %struct.gameport** %2, align 8
  %5 = getelementptr inbounds %struct.gameport, %struct.gameport* %4, i32 0, i32 6
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.gameport*, %struct.gameport** %2, align 8
  %10 = load %struct.gameport*, %struct.gameport** %2, align 8
  %11 = getelementptr inbounds %struct.gameport, %struct.gameport* %10, i32 0, i32 6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.gameport* %9, %struct.gameport** %13, align 8
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i64, i64* @use_ktime, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.gameport*, %struct.gameport** %2, align 8
  %19 = call i32 @gameport_measure_speed(%struct.gameport* %18)
  br label %23

20:                                               ; preds = %14
  %21 = load %struct.gameport*, %struct.gameport** %2, align 8
  %22 = call i32 @old_gameport_measure_speed(%struct.gameport* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  %25 = load %struct.gameport*, %struct.gameport** %2, align 8
  %26 = getelementptr inbounds %struct.gameport, %struct.gameport* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.gameport*, %struct.gameport** %2, align 8
  %28 = getelementptr inbounds %struct.gameport, %struct.gameport* %27, i32 0, i32 5
  %29 = call i32 @list_add_tail(i32* %28, i32* @gameport_list)
  %30 = load %struct.gameport*, %struct.gameport** %2, align 8
  %31 = getelementptr inbounds %struct.gameport, %struct.gameport* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %23
  %35 = load %struct.gameport*, %struct.gameport** %2, align 8
  %36 = getelementptr inbounds %struct.gameport, %struct.gameport* %35, i32 0, i32 2
  %37 = load %struct.gameport*, %struct.gameport** %2, align 8
  %38 = getelementptr inbounds %struct.gameport, %struct.gameport* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.gameport*, %struct.gameport** %2, align 8
  %41 = getelementptr inbounds %struct.gameport, %struct.gameport* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gameport*, %struct.gameport** %2, align 8
  %44 = getelementptr inbounds %struct.gameport, %struct.gameport* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.gameport*, %struct.gameport** %2, align 8
  %48 = getelementptr inbounds %struct.gameport, %struct.gameport* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_info(i32* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %46, i32 %49)
  br label %64

51:                                               ; preds = %23
  %52 = load %struct.gameport*, %struct.gameport** %2, align 8
  %53 = getelementptr inbounds %struct.gameport, %struct.gameport* %52, i32 0, i32 2
  %54 = load %struct.gameport*, %struct.gameport** %2, align 8
  %55 = getelementptr inbounds %struct.gameport, %struct.gameport* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.gameport*, %struct.gameport** %2, align 8
  %58 = getelementptr inbounds %struct.gameport, %struct.gameport* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gameport*, %struct.gameport** %2, align 8
  %61 = getelementptr inbounds %struct.gameport, %struct.gameport* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_info(i32* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %51, %34
  %65 = load %struct.gameport*, %struct.gameport** %2, align 8
  %66 = getelementptr inbounds %struct.gameport, %struct.gameport* %65, i32 0, i32 2
  %67 = call i32 @device_add(i32* %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load %struct.gameport*, %struct.gameport** %2, align 8
  %72 = getelementptr inbounds %struct.gameport, %struct.gameport* %71, i32 0, i32 2
  %73 = load %struct.gameport*, %struct.gameport** %2, align 8
  %74 = getelementptr inbounds %struct.gameport, %struct.gameport* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.gameport*, %struct.gameport** %2, align 8
  %77 = getelementptr inbounds %struct.gameport, %struct.gameport* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %70, %64
  ret void
}

declare dso_local i32 @gameport_measure_speed(%struct.gameport*) #1

declare dso_local i32 @old_gameport_measure_speed(%struct.gameport*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
