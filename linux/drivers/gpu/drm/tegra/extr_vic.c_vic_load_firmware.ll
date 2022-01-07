; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vic = type { %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vic*)* @vic_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vic_load_firmware(%struct.vic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vic*, align 8
  %4 = alloca i32, align 4
  store %struct.vic* %0, %struct.vic** %3, align 8
  %5 = load %struct.vic*, %struct.vic** %3, align 8
  %6 = getelementptr inbounds %struct.vic, %struct.vic* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load %struct.vic*, %struct.vic** %3, align 8
  %13 = getelementptr inbounds %struct.vic, %struct.vic* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.vic*, %struct.vic** %3, align 8
  %17 = getelementptr inbounds %struct.vic, %struct.vic* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32* %15, i32** %18, align 8
  %19 = load %struct.vic*, %struct.vic** %3, align 8
  %20 = getelementptr inbounds %struct.vic, %struct.vic* %19, i32 0, i32 0
  %21 = load %struct.vic*, %struct.vic** %3, align 8
  %22 = getelementptr inbounds %struct.vic, %struct.vic* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @falcon_read_firmware(%struct.TYPE_7__* %20, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  br label %38

30:                                               ; preds = %11
  %31 = load %struct.vic*, %struct.vic** %3, align 8
  %32 = getelementptr inbounds %struct.vic, %struct.vic* %31, i32 0, i32 0
  %33 = call i32 @falcon_load_firmware(%struct.TYPE_7__* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %38

37:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %43

38:                                               ; preds = %36, %29
  %39 = load %struct.vic*, %struct.vic** %3, align 8
  %40 = getelementptr inbounds %struct.vic, %struct.vic* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %37, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @falcon_read_firmware(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @falcon_load_firmware(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
