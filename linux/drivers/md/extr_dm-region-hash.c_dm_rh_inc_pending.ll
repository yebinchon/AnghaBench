; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_rh_inc_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_rh_inc_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i32 }
%struct.bio_list = type { %struct.bio* }
%struct.bio = type { i32, %struct.bio* }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_rh_inc_pending(%struct.dm_region_hash* %0, %struct.bio_list* %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca %struct.bio_list*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store %struct.bio_list* %1, %struct.bio_list** %4, align 8
  %6 = load %struct.bio_list*, %struct.bio_list** %4, align 8
  %7 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %6, i32 0, i32 0
  %8 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %8, %struct.bio** %5, align 8
  br label %9

9:                                                ; preds = %31, %2
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = icmp ne %struct.bio* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load %struct.bio*, %struct.bio** %5, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @REQ_PREFLUSH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = call i64 @bio_op(%struct.bio* %20)
  %22 = load i64, i64* @REQ_OP_DISCARD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %12
  br label %31

25:                                               ; preds = %19
  %26 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %27 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = call i32 @dm_rh_bio_to_region(%struct.dm_region_hash* %27, %struct.bio* %28)
  %30 = call i32 @rh_inc(%struct.dm_region_hash* %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %24
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 1
  %34 = load %struct.bio*, %struct.bio** %33, align 8
  store %struct.bio* %34, %struct.bio** %5, align 8
  br label %9

35:                                               ; preds = %9
  ret void
}

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @rh_inc(%struct.dm_region_hash*, i32) #1

declare dso_local i32 @dm_rh_bio_to_region(%struct.dm_region_hash*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
