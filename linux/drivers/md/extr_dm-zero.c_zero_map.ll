; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zero.c_zero_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zero.c_zero_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.bio = type { i32 }

@REQ_RAHEAD = common dso_local global i32 0, align 4
@DM_MAPIO_KILL = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @zero_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zero_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %6 = load %struct.bio*, %struct.bio** %5, align 8
  %7 = call i32 @bio_op(%struct.bio* %6)
  switch i32 %7, label %21 [
    i32 129, label %8
    i32 128, label %20
  ]

8:                                                ; preds = %2
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @REQ_RAHEAD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %8
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = call i32 @zero_fill_bio(%struct.bio* %18)
  br label %23

20:                                               ; preds = %2
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %20, %17
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  %25 = call i32 @bio_endio(%struct.bio* %24)
  %26 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %21, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local i32 @zero_fill_bio(%struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
