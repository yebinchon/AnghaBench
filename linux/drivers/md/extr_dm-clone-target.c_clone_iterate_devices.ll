; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_clone_iterate_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_clone_iterate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, %struct.clone* }
%struct.clone = type { %struct.dm_dev*, %struct.dm_dev* }
%struct.dm_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)*, i8*)* @clone_iterate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clone_iterate_devices(%struct.dm_target* %0, i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.clone*, align 8
  %9 = alloca %struct.dm_dev*, align 8
  %10 = alloca %struct.dm_dev*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)* %1, i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 1
  %13 = load %struct.clone*, %struct.clone** %12, align 8
  store %struct.clone* %13, %struct.clone** %8, align 8
  %14 = load %struct.clone*, %struct.clone** %8, align 8
  %15 = getelementptr inbounds %struct.clone, %struct.clone* %14, i32 0, i32 1
  %16 = load %struct.dm_dev*, %struct.dm_dev** %15, align 8
  store %struct.dm_dev* %16, %struct.dm_dev** %9, align 8
  %17 = load %struct.clone*, %struct.clone** %8, align 8
  %18 = getelementptr inbounds %struct.clone, %struct.clone* %17, i32 0, i32 0
  %19 = load %struct.dm_dev*, %struct.dm_dev** %18, align 8
  store %struct.dm_dev* %19, %struct.dm_dev** %10, align 8
  %20 = load i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)*, i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)** %5, align 8
  %21 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %22 = load %struct.dm_dev*, %struct.dm_dev** %10, align 8
  %23 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %24 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 %20(%struct.dm_target* %21, %struct.dm_dev* %22, i32 0, i32 %25, i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %3
  %31 = load i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)*, i32 (%struct.dm_target*, %struct.dm_dev*, i32, i32, i8*)** %5, align 8
  %32 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %33 = load %struct.dm_dev*, %struct.dm_dev** %9, align 8
  %34 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %35 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 %31(%struct.dm_target* %32, %struct.dm_dev* %33, i32 0, i32 %36, i8* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %3
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
