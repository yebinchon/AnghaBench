; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_alloc_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_alloc_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, %struct.dm_target*, i32* }
%struct.dm_target = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*, i32)* @alloc_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_targets(%struct.dm_table* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dm_target*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @dm_vcalloc(i32 %8, i32 8)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = bitcast i32* %20 to %struct.dm_target*
  store %struct.dm_target* %21, %struct.dm_target** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i32* %22, i32 -1, i32 %26)
  %28 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %29 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @vfree(i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %34 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %37 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %39 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %40 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %39, i32 0, i32 1
  store %struct.dm_target* %38, %struct.dm_target** %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %16, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @dm_vcalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
