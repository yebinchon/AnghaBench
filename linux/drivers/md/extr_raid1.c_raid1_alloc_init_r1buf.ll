; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_alloc_init_r1buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_alloc_init_r1buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1bio = type { i32*, %struct.bio** }
%struct.bio = type { %struct.resync_pages* }
%struct.resync_pages = type { i32 }
%struct.r1conf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.r1bio* (%struct.r1conf*)* @raid1_alloc_init_r1buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.r1bio* @raid1_alloc_init_r1buf(%struct.r1conf* %0) #0 {
  %2 = alloca %struct.r1conf*, align 8
  %3 = alloca %struct.r1bio*, align 8
  %4 = alloca %struct.resync_pages*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.r1conf* %0, %struct.r1conf** %2, align 8
  %7 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %8 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %7, i32 0, i32 1
  %9 = load i32, i32* @GFP_NOIO, align 4
  %10 = call %struct.r1bio* @mempool_alloc(i32* %8, i32 %9)
  store %struct.r1bio* %10, %struct.r1bio** %3, align 8
  %11 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %12 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %20, %1
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %17, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %22 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %21, i32 0, i32 1
  %23 = load %struct.bio**, %struct.bio*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bio*, %struct.bio** %23, i64 %25
  %27 = load %struct.bio*, %struct.bio** %26, align 8
  store %struct.bio* %27, %struct.bio** %5, align 8
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = load %struct.resync_pages*, %struct.resync_pages** %29, align 8
  store %struct.resync_pages* %30, %struct.resync_pages** %4, align 8
  %31 = load %struct.bio*, %struct.bio** %5, align 8
  %32 = call i32 @bio_reset(%struct.bio* %31)
  %33 = load %struct.resync_pages*, %struct.resync_pages** %4, align 8
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  store %struct.resync_pages* %33, %struct.resync_pages** %35, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  %38 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.r1bio*, %struct.r1bio** %3, align 8
  ret %struct.r1bio* %39
}

declare dso_local %struct.r1bio* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @bio_reset(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
