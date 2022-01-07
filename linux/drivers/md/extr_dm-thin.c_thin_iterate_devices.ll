; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_iterate_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_iterate_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.thin_c* }
%struct.thin_c = type { i32, %struct.pool* }
%struct.pool = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i8*)* @thin_iterate_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thin_iterate_devices(%struct.dm_target* %0, i32 (%struct.dm_target*, i32, i32, i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32 (%struct.dm_target*, i32, i32, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.thin_c*, align 8
  %10 = alloca %struct.pool*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 (%struct.dm_target*, i32, i32, i32, i8*)* %1, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load %struct.thin_c*, %struct.thin_c** %12, align 8
  store %struct.thin_c* %13, %struct.thin_c** %9, align 8
  %14 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %15 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %14, i32 0, i32 1
  %16 = load %struct.pool*, %struct.pool** %15, align 8
  store %struct.pool* %16, %struct.pool** %10, align 8
  %17 = load %struct.pool*, %struct.pool** %10, align 8
  %18 = getelementptr inbounds %struct.pool, %struct.pool* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

22:                                               ; preds = %3
  %23 = load %struct.pool*, %struct.pool** %10, align 8
  %24 = getelementptr inbounds %struct.pool, %struct.pool* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.pool*, %struct.pool** %10, align 8
  %30 = getelementptr inbounds %struct.pool, %struct.pool* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sector_div(i32 %28, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %22
  %36 = load i32 (%struct.dm_target*, i32, i32, i32, i8*)*, i32 (%struct.dm_target*, i32, i32, i32, i8*)** %6, align 8
  %37 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %38 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %39 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pool*, %struct.pool** %10, align 8
  %42 = getelementptr inbounds %struct.pool, %struct.pool* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 %36(%struct.dm_target* %37, i32 %40, i32 0, i32 %45, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %35, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
