; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_iterate_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_iterate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, %struct.delay_c* }
%struct.delay_c = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i8*)* @delay_iterate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_iterate_devices(%struct.dm_target* %0, i32 (%struct.dm_target*, i32, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32 (%struct.dm_target*, i32, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.delay_c*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 (%struct.dm_target*, i32, i32, i32, i8*)* %1, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 1
  %11 = load %struct.delay_c*, %struct.delay_c** %10, align 8
  store %struct.delay_c* %11, %struct.delay_c** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %5, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %14 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %15 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %19 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %23 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 %12(%struct.dm_target* %13, i32 %17, i32 %21, i32 %24, i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %69

30:                                               ; preds = %3
  %31 = load i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %5, align 8
  %32 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %33 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %34 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %38 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %42 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 %31(%struct.dm_target* %32, i32 %36, i32 %40, i32 %43, i8* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  br label %69

49:                                               ; preds = %30
  %50 = load i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %5, align 8
  %51 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %52 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %53 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.delay_c*, %struct.delay_c** %7, align 8
  %57 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %61 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 %50(%struct.dm_target* %51, i32 %55, i32 %59, i32 %62, i8* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  br label %69

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %67, %48, %29
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
