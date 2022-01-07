; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_align_endio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_align_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32*, i32, %struct.bio* }
%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i32, i32, i32 }
%struct.md_rdev = type { %struct.mddev* }

@.str = private unnamed_addr constant [55 x i8] c"raid5_align_endio : io error...handing IO for a retry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @raid5_align_endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5_align_endio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.r5conf*, align 8
  %6 = alloca %struct.md_rdev*, align 8
  %7 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 2
  %10 = load %struct.bio*, %struct.bio** %9, align 8
  store %struct.bio* %10, %struct.bio** %3, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.bio*, %struct.bio** %2, align 8
  %15 = call i32 @bio_put(%struct.bio* %14)
  %16 = load %struct.bio*, %struct.bio** %3, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = bitcast i8* %19 to %struct.md_rdev*
  store %struct.md_rdev* %20, %struct.md_rdev** %6, align 8
  %21 = load %struct.bio*, %struct.bio** %3, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %24 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %23, i32 0, i32 0
  %25 = load %struct.mddev*, %struct.mddev** %24, align 8
  store %struct.mddev* %25, %struct.mddev** %4, align 8
  %26 = load %struct.mddev*, %struct.mddev** %4, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 0
  %28 = load %struct.r5conf*, %struct.r5conf** %27, align 8
  store %struct.r5conf* %28, %struct.r5conf** %5, align 8
  %29 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %30 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %31 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rdev_dec_pending(%struct.md_rdev* %29, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %1
  %37 = load %struct.bio*, %struct.bio** %3, align 8
  %38 = call i32 @bio_endio(%struct.bio* %37)
  %39 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %40 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %39, i32 0, i32 1
  %41 = call i64 @atomic_dec_and_test(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %45 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %44, i32 0, i32 0
  %46 = call i32 @wake_up(i32* %45)
  br label %47

47:                                               ; preds = %43, %36
  br label %53

48:                                               ; preds = %1
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.bio*, %struct.bio** %3, align 8
  %51 = load %struct.r5conf*, %struct.r5conf** %5, align 8
  %52 = call i32 @add_bio_to_retry(%struct.bio* %50, %struct.r5conf* %51)
  br label %53

53:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @add_bio_to_retry(%struct.bio*, %struct.r5conf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
