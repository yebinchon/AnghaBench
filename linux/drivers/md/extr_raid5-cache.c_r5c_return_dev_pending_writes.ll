; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_return_dev_pending_writes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_return_dev_pending_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32 }
%struct.r5dev = type { i64, %struct.bio* }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@STRIPE_SECTORS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r5conf*, %struct.r5dev*)* @r5c_return_dev_pending_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r5c_return_dev_pending_writes(%struct.r5conf* %0, %struct.r5dev* %1) #0 {
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca %struct.r5dev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %3, align 8
  store %struct.r5dev* %1, %struct.r5dev** %4, align 8
  %7 = load %struct.r5dev*, %struct.r5dev** %4, align 8
  %8 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %7, i32 0, i32 1
  %9 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %9, %struct.bio** %5, align 8
  %10 = load %struct.r5dev*, %struct.r5dev** %4, align 8
  %11 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %10, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %11, align 8
  br label %12

12:                                               ; preds = %28, %2
  %13 = load %struct.bio*, %struct.bio** %5, align 8
  %14 = icmp ne %struct.bio* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.r5dev*, %struct.r5dev** %4, align 8
  %21 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STRIPE_SECTORS, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp slt i64 %19, %24
  br label %26

26:                                               ; preds = %15, %12
  %27 = phi i1 [ false, %12 ], [ %25, %15 ]
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = load %struct.r5dev*, %struct.r5dev** %4, align 8
  %31 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.bio* @r5_next_bio(%struct.bio* %29, i64 %32)
  store %struct.bio* %33, %struct.bio** %6, align 8
  %34 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %35 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @md_write_end(i32 %36)
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = call i32 @bio_endio(%struct.bio* %38)
  %40 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %40, %struct.bio** %5, align 8
  br label %12

41:                                               ; preds = %26
  ret void
}

declare dso_local %struct.bio* @r5_next_bio(%struct.bio*, i64) #1

declare dso_local i32 @md_write_end(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
