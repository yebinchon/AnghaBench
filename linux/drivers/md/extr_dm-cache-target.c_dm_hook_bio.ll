; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_dm_hook_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_dm_hook_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_hook_info = type { i32* }
%struct.bio = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_hook_info*, %struct.bio*, i32*, i8*)* @dm_hook_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_hook_bio(%struct.dm_hook_info* %0, %struct.bio* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.dm_hook_info*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.dm_hook_info* %0, %struct.dm_hook_info** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.bio*, %struct.bio** %6, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.dm_hook_info*, %struct.dm_hook_info** %5, align 8
  %13 = getelementptr inbounds %struct.dm_hook_info, %struct.dm_hook_info* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.bio*, %struct.bio** %6, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
