; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_retry_origin_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_retry_origin_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32 }
%struct.bio = type { %struct.bio* }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*, %struct.bio*)* @retry_origin_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retry_origin_bios(%struct.dm_snapshot* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  br label %7

7:                                                ; preds = %27, %2
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = icmp ne %struct.bio* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %13, %struct.bio** %5, align 8
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %15, align 8
  %16 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %17 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = call i32 @do_origin(i32 %18, %struct.bio* %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %10
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = call i32 @generic_make_request(%struct.bio* %25)
  br label %27

27:                                               ; preds = %24, %10
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %28, %struct.bio** %4, align 8
  br label %7

29:                                               ; preds = %7
  ret void
}

declare dso_local i32 @do_origin(i32, %struct.bio*, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
