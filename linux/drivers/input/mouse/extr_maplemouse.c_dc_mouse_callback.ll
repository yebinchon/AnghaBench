; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_maplemouse.c_dc_mouse_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_maplemouse.c_dc_mouse_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapleq = type { %struct.TYPE_2__*, %struct.maple_device* }
%struct.TYPE_2__ = type { i8* }
%struct.maple_device = type { i32 }
%struct.dc_mouse = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapleq*)* @dc_mouse_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_mouse_callback(%struct.mapleq* %0) #0 {
  %2 = alloca %struct.mapleq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.maple_device*, align 8
  %8 = alloca %struct.dc_mouse*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i8*, align 8
  store %struct.mapleq* %0, %struct.mapleq** %2, align 8
  %11 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %12 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %11, i32 0, i32 1
  %13 = load %struct.maple_device*, %struct.maple_device** %12, align 8
  store %struct.maple_device* %13, %struct.maple_device** %7, align 8
  %14 = load %struct.maple_device*, %struct.maple_device** %7, align 8
  %15 = call %struct.dc_mouse* @maple_get_drvdata(%struct.maple_device* %14)
  store %struct.dc_mouse* %15, %struct.dc_mouse** %8, align 8
  %16 = load %struct.dc_mouse*, %struct.dc_mouse** %8, align 8
  %17 = getelementptr inbounds %struct.dc_mouse, %struct.dc_mouse* %16, i32 0, i32 0
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %9, align 8
  %19 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %20 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %27, -1
  store i32 %28, i32* %3, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 12
  %31 = bitcast i8* %30 to i16*
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %33, 512
  store i32 %34, i32* %4, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 14
  %37 = bitcast i8* %36 to i16*
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = sub nsw i32 %39, 512
  store i32 %40, i32* %5, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 16
  %43 = bitcast i8* %42 to i16*
  %44 = load i16, i16* %43, align 2
  %45 = zext i16 %44 to i32
  %46 = sub nsw i32 %45, 512
  store i32 %46, i32* %6, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %48 = load i32, i32* @BTN_LEFT, align 4
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 4
  %51 = call i32 @input_report_key(%struct.input_dev* %47, i32 %48, i32 %50)
  %52 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %53 = load i32, i32* @BTN_MIDDLE, align 4
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, 9
  %56 = call i32 @input_report_key(%struct.input_dev* %52, i32 %53, i32 %55)
  %57 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %58 = load i32, i32* @BTN_RIGHT, align 4
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, 2
  %61 = call i32 @input_report_key(%struct.input_dev* %57, i32 %58, i32 %60)
  %62 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %63 = load i32, i32* @REL_X, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @input_report_rel(%struct.input_dev* %62, i32 %63, i32 %64)
  %66 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %67 = load i32, i32* @REL_Y, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @input_report_rel(%struct.input_dev* %66, i32 %67, i32 %68)
  %70 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %71 = load i32, i32* @REL_WHEEL, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @input_report_rel(%struct.input_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %75 = call i32 @input_sync(%struct.input_dev* %74)
  ret void
}

declare dso_local %struct.dc_mouse* @maple_get_drvdata(%struct.maple_device*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
