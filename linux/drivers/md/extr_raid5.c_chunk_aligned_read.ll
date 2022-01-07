; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_chunk_aligned_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_chunk_aligned_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.r5conf* }
%struct.r5conf = type { i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.mddev*, %struct.bio*)* @chunk_aligned_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @chunk_aligned_read(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.r5conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mddev*, %struct.mddev** %4, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sub i32 %20, 1
  %22 = and i32 %19, %21
  %23 = sub i32 %18, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = call i32 @bio_sectors(%struct.bio* %25)
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %2
  %29 = load %struct.mddev*, %struct.mddev** %4, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 1
  %31 = load %struct.r5conf*, %struct.r5conf** %30, align 8
  store %struct.r5conf* %31, %struct.r5conf** %10, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @GFP_NOIO, align 4
  %35 = load %struct.r5conf*, %struct.r5conf** %10, align 8
  %36 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %35, i32 0, i32 0
  %37 = call %struct.bio* @bio_split(%struct.bio* %32, i32 %33, i32 %34, i32* %36)
  store %struct.bio* %37, %struct.bio** %6, align 8
  %38 = load %struct.bio*, %struct.bio** %6, align 8
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = call i32 @bio_chain(%struct.bio* %38, %struct.bio* %39)
  %41 = load %struct.bio*, %struct.bio** %5, align 8
  %42 = call i32 @generic_make_request(%struct.bio* %41)
  %43 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %43, %struct.bio** %5, align 8
  br label %44

44:                                               ; preds = %28, %2
  %45 = load %struct.mddev*, %struct.mddev** %4, align 8
  %46 = load %struct.bio*, %struct.bio** %5, align 8
  %47 = call i32 @raid5_read_one_chunk(%struct.mddev* %45, %struct.bio* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %50, %struct.bio** %3, align 8
  br label %52

51:                                               ; preds = %44
  store %struct.bio* null, %struct.bio** %3, align 8
  br label %52

52:                                               ; preds = %51, %49
  %53 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %53
}

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local %struct.bio* @bio_split(%struct.bio*, i32, i32, i32*) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @raid5_read_one_chunk(%struct.mddev*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
