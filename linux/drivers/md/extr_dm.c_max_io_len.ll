; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_max_io_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_max_io_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dm_target*)* @max_io_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_io_len(i32 %0, %struct.dm_target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.dm_target* %1, %struct.dm_target** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = call i32 @max_io_len_target_boundary(i32 %8, %struct.dm_target* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %12 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %2
  %16 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @dm_target_offset(%struct.dm_target* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %20 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %23 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %21, %25
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %32 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sector_div(i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %42

35:                                               ; preds = %15
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %38 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %36, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %44 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %42
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @max_io_len_target_boundary(i32, %struct.dm_target*) #1

declare dso_local i32 @dm_target_offset(%struct.dm_target*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
