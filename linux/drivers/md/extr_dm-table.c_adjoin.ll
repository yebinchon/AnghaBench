; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_adjoin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_adjoin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, %struct.dm_target* }
%struct.dm_target = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*, %struct.dm_target*)* @adjoin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjoin(%struct.dm_table* %0, %struct.dm_target* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca %struct.dm_target*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store %struct.dm_target* %1, %struct.dm_target** %5, align 8
  %7 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %8 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %13 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %20 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %19, i32 0, i32 1
  %21 = load %struct.dm_target*, %struct.dm_target** %20, align 8
  %22 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %23 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i64 %26
  store %struct.dm_target* %27, %struct.dm_target** %6, align 8
  %28 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %29 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %32 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %35 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = icmp eq i64 %30, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %18, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
