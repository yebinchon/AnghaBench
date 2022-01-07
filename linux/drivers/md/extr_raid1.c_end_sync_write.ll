; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_end_sync_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_end_sync_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.r1bio = type { i64, i32, i32, i32, %struct.mddev* }
%struct.mddev = type { i32, %struct.r1conf* }
%struct.r1conf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32 }

@WriteErrorSeen = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@R1BIO_WriteError = common dso_local global i32 0, align 4
@R1BIO_MadeGood = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @end_sync_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_sync_write(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca %struct.r1conf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = call %struct.r1bio* @get_resync_r1bio(%struct.bio* %16)
  store %struct.r1bio* %17, %struct.r1bio** %4, align 8
  %18 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %19 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %18, i32 0, i32 4
  %20 = load %struct.mddev*, %struct.mddev** %19, align 8
  store %struct.mddev* %20, %struct.mddev** %5, align 8
  %21 = load %struct.mddev*, %struct.mddev** %5, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 1
  %23 = load %struct.r1conf*, %struct.r1conf** %22, align 8
  store %struct.r1conf* %23, %struct.r1conf** %6, align 8
  %24 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %25 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %28 = load %struct.bio*, %struct.bio** %2, align 8
  %29 = call i64 @find_bio_disk(%struct.r1bio* %27, %struct.bio* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.md_rdev*, %struct.md_rdev** %31, align 8
  store %struct.md_rdev* %32, %struct.md_rdev** %9, align 8
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %1
  %36 = load %struct.mddev*, %struct.mddev** %5, align 8
  %37 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %38 = call i32 @abort_sync_write(%struct.mddev* %36, %struct.r1bio* %37)
  %39 = load i32, i32* @WriteErrorSeen, align 4
  %40 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %41 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load i32, i32* @WantReplacement, align 4
  %44 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %45 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %44, i32 0, i32 0
  %46 = call i32 @test_and_set_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %50 = load %struct.mddev*, %struct.mddev** %5, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 0
  %52 = call i32 @set_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %35
  %54 = load i32, i32* @R1BIO_WriteError, align 4
  %55 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %56 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %55, i32 0, i32 1
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  br label %92

58:                                               ; preds = %1
  %59 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %60 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %61 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %64 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @is_badblock(%struct.md_rdev* %59, i32 %62, i32 %65, i32* %7, i32* %8)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %58
  %69 = load %struct.r1conf*, %struct.r1conf** %6, align 8
  %70 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %73 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.md_rdev*, %struct.md_rdev** %76, align 8
  %78 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %79 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %82 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @is_badblock(%struct.md_rdev* %77, i32 %80, i32 %83, i32* %7, i32* %8)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %68
  %87 = load i32, i32* @R1BIO_MadeGood, align 4
  %88 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %89 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %88, i32 0, i32 1
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %68, %58
  br label %92

92:                                               ; preds = %91, %53
  %93 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @put_sync_write_buf(%struct.r1bio* %93, i32 %94)
  ret void
}

declare dso_local %struct.r1bio* @get_resync_r1bio(%struct.bio*) #1

declare dso_local i64 @find_bio_disk(%struct.r1bio*, %struct.bio*) #1

declare dso_local i32 @abort_sync_write(%struct.mddev*, %struct.r1bio*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i32, i32, i32*, i32*) #1

declare dso_local i32 @put_sync_write_buf(%struct.r1bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
