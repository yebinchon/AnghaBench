; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32, i32, i32, i32 (%struct.serio*)*, i32, i32, i32, %struct.serio* }

@serio_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"device_add() failed for %s (%s), error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @serio_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serio_add_port(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %2, align 8
  %5 = load %struct.serio*, %struct.serio** %2, align 8
  %6 = getelementptr inbounds %struct.serio, %struct.serio* %5, i32 0, i32 7
  %7 = load %struct.serio*, %struct.serio** %6, align 8
  store %struct.serio* %7, %struct.serio** %3, align 8
  %8 = load %struct.serio*, %struct.serio** %3, align 8
  %9 = icmp ne %struct.serio* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.serio*, %struct.serio** %3, align 8
  %12 = call i32 @serio_pause_rx(%struct.serio* %11)
  %13 = load %struct.serio*, %struct.serio** %2, align 8
  %14 = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 6
  %15 = load %struct.serio*, %struct.serio** %3, align 8
  %16 = getelementptr inbounds %struct.serio, %struct.serio* %15, i32 0, i32 5
  %17 = call i32 @list_add_tail(i32* %14, i32* %16)
  %18 = load %struct.serio*, %struct.serio** %3, align 8
  %19 = call i32 @serio_continue_rx(%struct.serio* %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.serio*, %struct.serio** %2, align 8
  %22 = getelementptr inbounds %struct.serio, %struct.serio* %21, i32 0, i32 4
  %23 = call i32 @list_add_tail(i32* %22, i32* @serio_list)
  %24 = load %struct.serio*, %struct.serio** %2, align 8
  %25 = getelementptr inbounds %struct.serio, %struct.serio* %24, i32 0, i32 3
  %26 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %25, align 8
  %27 = icmp ne i32 (%struct.serio*)* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.serio*, %struct.serio** %2, align 8
  %30 = getelementptr inbounds %struct.serio, %struct.serio* %29, i32 0, i32 3
  %31 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %30, align 8
  %32 = load %struct.serio*, %struct.serio** %2, align 8
  %33 = call i32 %31(%struct.serio* %32)
  br label %34

34:                                               ; preds = %28, %20
  %35 = load %struct.serio*, %struct.serio** %2, align 8
  %36 = getelementptr inbounds %struct.serio, %struct.serio* %35, i32 0, i32 2
  %37 = call i32 @device_add(i32* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.serio*, %struct.serio** %2, align 8
  %42 = getelementptr inbounds %struct.serio, %struct.serio* %41, i32 0, i32 2
  %43 = load %struct.serio*, %struct.serio** %2, align 8
  %44 = getelementptr inbounds %struct.serio, %struct.serio* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.serio*, %struct.serio** %2, align 8
  %47 = getelementptr inbounds %struct.serio, %struct.serio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %40, %34
  ret void
}

declare dso_local i32 @serio_pause_rx(%struct.serio*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @serio_continue_rx(%struct.serio*) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
