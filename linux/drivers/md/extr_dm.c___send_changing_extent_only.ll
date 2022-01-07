; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___send_changing_extent_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___send_changing_extent_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone_info = type { i32, i64 }
%struct.dm_target = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone_info*, %struct.dm_target*, i32)* @__send_changing_extent_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__send_changing_extent_only(%struct.clone_info* %0, %struct.dm_target* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clone_info*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clone_info* %0, %struct.clone_info** %5, align 8
  store %struct.dm_target* %1, %struct.dm_target** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %16 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %20 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %23 = call i32 @max_io_len_target_boundary(i32 %21, %struct.dm_target* %22)
  %24 = call i32 @min(i32 %18, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %26 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @__send_duplicate_bios(%struct.clone_info* %25, %struct.dm_target* %26, i32 %27, i32* %8)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %31 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = load %struct.clone_info*, %struct.clone_info** %5, align 8
  %37 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %14, %11
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max_io_len_target_boundary(i32, %struct.dm_target*) #1

declare dso_local i32 @__send_duplicate_bios(%struct.clone_info*, %struct.dm_target*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
