; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___clone_and_map_data_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___clone_and_map_data_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone_info = type { %struct.bio* }
%struct.bio = type { i32 }
%struct.dm_target = type { i32 }
%struct.dm_target_io = type { i32* }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone_info*, %struct.dm_target*, i32, i32*)* @__clone_and_map_data_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clone_and_map_data_bio(%struct.clone_info* %0, %struct.dm_target* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clone_info*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca %struct.dm_target_io*, align 8
  %12 = alloca i32, align 4
  store %struct.clone_info* %0, %struct.clone_info** %6, align 8
  store %struct.dm_target* %1, %struct.dm_target** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.clone_info*, %struct.clone_info** %6, align 8
  %14 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %13, i32 0, i32 0
  %15 = load %struct.bio*, %struct.bio** %14, align 8
  store %struct.bio* %15, %struct.bio** %10, align 8
  %16 = load %struct.clone_info*, %struct.clone_info** %6, align 8
  %17 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %18 = load i32, i32* @GFP_NOIO, align 4
  %19 = call %struct.dm_target_io* @alloc_tio(%struct.clone_info* %16, %struct.dm_target* %17, i32 0, i32 %18)
  store %struct.dm_target_io* %19, %struct.dm_target_io** %11, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.dm_target_io*, %struct.dm_target_io** %11, align 8
  %22 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.dm_target_io*, %struct.dm_target_io** %11, align 8
  %24 = load %struct.bio*, %struct.bio** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clone_bio(%struct.dm_target_io* %23, %struct.bio* %24, i32 %25, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load %struct.dm_target_io*, %struct.dm_target_io** %11, align 8
  %33 = call i32 @free_tio(%struct.dm_target_io* %32)
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %38

35:                                               ; preds = %4
  %36 = load %struct.dm_target_io*, %struct.dm_target_io** %11, align 8
  %37 = call i32 @__map_bio(%struct.dm_target_io* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.dm_target_io* @alloc_tio(%struct.clone_info*, %struct.dm_target*, i32, i32) #1

declare dso_local i32 @clone_bio(%struct.dm_target_io*, %struct.bio*, i32, i32) #1

declare dso_local i32 @free_tio(%struct.dm_target_io*) #1

declare dso_local i32 @__map_bio(%struct.dm_target_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
