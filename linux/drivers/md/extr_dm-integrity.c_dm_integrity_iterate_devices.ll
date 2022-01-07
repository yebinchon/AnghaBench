; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_iterate_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_iterate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32, %struct.dm_integrity_c* }
%struct.dm_integrity_c = type { i32, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32 (%struct.dm_target*, i32, i64, i32, i8*)*, i8*)* @dm_integrity_iterate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_integrity_iterate_devices(%struct.dm_target* %0, i32 (%struct.dm_target*, i32, i64, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32 (%struct.dm_target*, i32, i64, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dm_integrity_c*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 (%struct.dm_target*, i32, i64, i32, i8*)* %1, i32 (%struct.dm_target*, i32, i64, i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 1
  %11 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %10, align 8
  store %struct.dm_integrity_c* %11, %struct.dm_integrity_c** %8, align 8
  %12 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %13 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %3
  %17 = load i32 (%struct.dm_target*, i32, i64, i32, i8*)*, i32 (%struct.dm_target*, i32, i64, i32, i8*)** %6, align 8
  %18 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %19 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %20 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %23 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %26 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %30 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %34 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 %17(%struct.dm_target* %18, i32 %21, i64 %32, i32 %35, i8* %36)
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %3
  %39 = load i32 (%struct.dm_target*, i32, i64, i32, i8*)*, i32 (%struct.dm_target*, i32, i64, i32, i8*)** %6, align 8
  %40 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %41 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %42 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %45 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 %39(%struct.dm_target* %40, i32 %43, i64 0, i32 %46, i8* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %38, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
