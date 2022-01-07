; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-unstripe.c_map_to_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-unstripe.c_map_to_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.unstripe_c* }
%struct.unstripe_c = type { i32, i32, i32, i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @map_to_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_to_core(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.unstripe_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 0
  %10 = load %struct.unstripe_c*, %struct.unstripe_c** %9, align 8
  store %struct.unstripe_c* %10, %struct.unstripe_c** %5, align 8
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.unstripe_c*, %struct.unstripe_c** %5, align 8
  %17 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.unstripe_c*, %struct.unstripe_c** %5, align 8
  %22 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.unstripe_c*, %struct.unstripe_c** %5, align 8
  %29 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sector_div(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.unstripe_c*, %struct.unstripe_c** %5, align 8
  %34 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.unstripe_c*, %struct.unstripe_c** %5, align 8
  %42 = getelementptr inbounds %struct.unstripe_c, %struct.unstripe_c* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  ret i32 %44
}

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
