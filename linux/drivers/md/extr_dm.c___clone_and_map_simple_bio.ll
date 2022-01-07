; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___clone_and_map_simple_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___clone_and_map_simple_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone_info = type { i32, i32 }
%struct.dm_target_io = type { i32*, %struct.bio }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone_info*, %struct.dm_target_io*, i32*)* @__clone_and_map_simple_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clone_and_map_simple_bio(%struct.clone_info* %0, %struct.dm_target_io* %1, i32* %2) #0 {
  %4 = alloca %struct.clone_info*, align 8
  %5 = alloca %struct.dm_target_io*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.clone_info* %0, %struct.clone_info** %4, align 8
  store %struct.dm_target_io* %1, %struct.dm_target_io** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.dm_target_io*, %struct.dm_target_io** %5, align 8
  %9 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %8, i32 0, i32 1
  store %struct.bio* %9, %struct.bio** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.dm_target_io*, %struct.dm_target_io** %5, align 8
  %12 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.bio*, %struct.bio** %7, align 8
  %14 = load %struct.clone_info*, %struct.clone_info** %4, align 8
  %15 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @__bio_clone_fast(%struct.bio* %13, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.bio*, %struct.bio** %7, align 8
  %22 = load %struct.clone_info*, %struct.clone_info** %4, align 8
  %23 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bio_setup_sector(%struct.bio* %21, i32 %24, i32 %26)
  br label %28

28:                                               ; preds = %20, %3
  %29 = load %struct.dm_target_io*, %struct.dm_target_io** %5, align 8
  %30 = call i32 @__map_bio(%struct.dm_target_io* %29)
  ret i32 %30
}

declare dso_local i32 @__bio_clone_fast(%struct.bio*, i32) #1

declare dso_local i32 @bio_setup_sector(%struct.bio*, i32, i32) #1

declare dso_local i32 @__map_bio(%struct.dm_target_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
