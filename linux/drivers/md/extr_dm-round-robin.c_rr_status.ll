; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-round-robin.c_rr_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-round-robin.c_rr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector = type { i32 }
%struct.dm_path = type { %struct.path_info* }
%struct.path_info = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"0 \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path_selector*, %struct.dm_path*, i32, i8*, i32)* @rr_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr_status(%struct.path_selector* %0, %struct.dm_path* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.path_selector*, align 8
  %7 = alloca %struct.dm_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.path_info*, align 8
  %12 = alloca i32, align 4
  store %struct.path_selector* %0, %struct.path_selector** %6, align 8
  store %struct.dm_path* %1, %struct.dm_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.dm_path*, %struct.dm_path** %7, align 8
  %14 = icmp ne %struct.dm_path* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %29

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %28 [
    i32 129, label %19
    i32 128, label %20
  ]

19:                                               ; preds = %17
  br label %28

20:                                               ; preds = %17
  %21 = load %struct.dm_path*, %struct.dm_path** %7, align 8
  %22 = getelementptr inbounds %struct.dm_path, %struct.dm_path* %21, i32 0, i32 0
  %23 = load %struct.path_info*, %struct.path_info** %22, align 8
  store %struct.path_info* %23, %struct.path_info** %11, align 8
  %24 = load %struct.path_info*, %struct.path_info** %11, align 8
  %25 = getelementptr inbounds %struct.path_info, %struct.path_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %17, %20, %19
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* %12, align 4
  ret i32 %30
}

declare dso_local i32 @DMEMIT(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
