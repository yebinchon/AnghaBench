; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_maceps2.c_maceps2_allocate_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_maceps2.c_maceps2_allocate_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.serio = type { %struct.TYPE_5__, i32*, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SERIO_8042 = common dso_local global i32 0, align 4
@maceps2_write = common dso_local global i32 0, align 4
@maceps2_open = common dso_local global i32 0, align 4
@maceps2_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MACE PS/2 port%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mace/serio%d\00", align 1
@port_data = common dso_local global i32* null, align 8
@maceps2_device = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.serio* (i32)* @maceps2_allocate_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.serio* @maceps2_allocate_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serio*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.serio* @kzalloc(i32 40, i32 %4)
  store %struct.serio* %5, %struct.serio** %3, align 8
  %6 = load %struct.serio*, %struct.serio** %3, align 8
  %7 = icmp ne %struct.serio* %6, null
  br i1 %7, label %8, label %43

8:                                                ; preds = %1
  %9 = load i32, i32* @SERIO_8042, align 4
  %10 = load %struct.serio*, %struct.serio** %3, align 8
  %11 = getelementptr inbounds %struct.serio, %struct.serio* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @maceps2_write, align 4
  %14 = load %struct.serio*, %struct.serio** %3, align 8
  %15 = getelementptr inbounds %struct.serio, %struct.serio* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @maceps2_open, align 4
  %17 = load %struct.serio*, %struct.serio** %3, align 8
  %18 = getelementptr inbounds %struct.serio, %struct.serio* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @maceps2_close, align 4
  %20 = load %struct.serio*, %struct.serio** %3, align 8
  %21 = getelementptr inbounds %struct.serio, %struct.serio* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.serio*, %struct.serio** %3, align 8
  %23 = getelementptr inbounds %struct.serio, %struct.serio* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @snprintf(i32 %24, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.serio*, %struct.serio** %3, align 8
  %28 = getelementptr inbounds %struct.serio, %struct.serio* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @snprintf(i32 %29, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** @port_data, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct.serio*, %struct.serio** %3, align 8
  %37 = getelementptr inbounds %struct.serio, %struct.serio* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @maceps2_device, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.serio*, %struct.serio** %3, align 8
  %41 = getelementptr inbounds %struct.serio, %struct.serio* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  br label %43

43:                                               ; preds = %8, %1
  %44 = load %struct.serio*, %struct.serio** %3, align 8
  ret %struct.serio* %44
}

declare dso_local %struct.serio* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
