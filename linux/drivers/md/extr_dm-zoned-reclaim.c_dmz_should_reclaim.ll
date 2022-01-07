; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_should_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-reclaim.c_dmz_should_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_reclaim = type { %struct.dmz_metadata* }
%struct.dmz_metadata = type { i32 }

@DMZ_RECLAIM_HIGH_UNMAP_RND = common dso_local global i32 0, align 4
@DMZ_RECLAIM_LOW_UNMAP_RND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_reclaim*)* @dmz_should_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_should_reclaim(%struct.dmz_reclaim* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmz_reclaim*, align 8
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dmz_reclaim* %0, %struct.dmz_reclaim** %3, align 8
  %8 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %9 = getelementptr inbounds %struct.dmz_reclaim, %struct.dmz_reclaim* %8, i32 0, i32 0
  %10 = load %struct.dmz_metadata*, %struct.dmz_metadata** %9, align 8
  store %struct.dmz_metadata* %10, %struct.dmz_metadata** %4, align 8
  %11 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %12 = call i32 @dmz_nr_rnd_zones(%struct.dmz_metadata* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %14 = call i32 @dmz_nr_unmap_rnd_zones(%struct.dmz_metadata* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul i32 %15, 100
  %17 = load i32, i32* %5, align 4
  %18 = udiv i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.dmz_reclaim*, %struct.dmz_reclaim** %3, align 8
  %20 = call i64 @dmz_target_idle(%struct.dmz_reclaim* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %37

27:                                               ; preds = %22, %1
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @DMZ_RECLAIM_HIGH_UNMAP_RND, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @DMZ_RECLAIM_LOW_UNMAP_RND, align 4
  %35 = icmp ule i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %31, %26
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @dmz_nr_rnd_zones(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_nr_unmap_rnd_zones(%struct.dmz_metadata*) #1

declare dso_local i64 @dmz_target_idle(%struct.dmz_reclaim*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
