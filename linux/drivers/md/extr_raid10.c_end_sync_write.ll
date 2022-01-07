; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_end_sync_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_end_sync_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64 }
%struct.r10bio = type { i32, i32, %struct.TYPE_6__*, %struct.mddev* }
%struct.TYPE_6__ = type { i32 }
%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.md_rdev*, %struct.md_rdev* }
%struct.md_rdev = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@WriteErrorSeen = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@R10BIO_WriteError = common dso_local global i32 0, align 4
@R10BIO_MadeGood = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @end_sync_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_sync_write(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.r10bio*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.r10conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.md_rdev*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %12 = load %struct.bio*, %struct.bio** %2, align 8
  %13 = call %struct.r10bio* @get_resync_r10bio(%struct.bio* %12)
  store %struct.r10bio* %13, %struct.r10bio** %3, align 8
  %14 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %15 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %14, i32 0, i32 3
  %16 = load %struct.mddev*, %struct.mddev** %15, align 8
  store %struct.mddev* %16, %struct.mddev** %4, align 8
  %17 = load %struct.mddev*, %struct.mddev** %4, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 0
  %19 = load %struct.r10conf*, %struct.r10conf** %18, align 8
  store %struct.r10conf* %19, %struct.r10conf** %5, align 8
  store %struct.md_rdev* null, %struct.md_rdev** %11, align 8
  %20 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %21 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = call i32 @find_bio_disk(%struct.r10conf* %20, %struct.r10bio* %21, %struct.bio* %22, i32* %9, i32* %10)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %28 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.md_rdev*, %struct.md_rdev** %33, align 8
  store %struct.md_rdev* %34, %struct.md_rdev** %11, align 8
  br label %44

35:                                               ; preds = %1
  %36 = load %struct.r10conf*, %struct.r10conf** %5, align 8
  %37 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.md_rdev*, %struct.md_rdev** %42, align 8
  store %struct.md_rdev* %43, %struct.md_rdev** %11, align 8
  br label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.bio*, %struct.bio** %2, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.mddev*, %struct.mddev** %4, align 8
  %54 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %55 = call i32 @md_error(%struct.mddev* %53, %struct.md_rdev* %54)
  br label %78

56:                                               ; preds = %49
  %57 = load i32, i32* @WriteErrorSeen, align 4
  %58 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %59 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %58, i32 0, i32 1
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load i32, i32* @WantReplacement, align 4
  %62 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %63 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %62, i32 0, i32 1
  %64 = call i32 @test_and_set_bit(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %68 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %69 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @set_bit(i32 %67, i32* %71)
  br label %73

73:                                               ; preds = %66, %56
  %74 = load i32, i32* @R10BIO_WriteError, align 4
  %75 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %76 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %75, i32 0, i32 0
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %73, %52
  br label %100

79:                                               ; preds = %44
  %80 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %81 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %82 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %90 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @is_badblock(%struct.md_rdev* %80, i32 %88, i32 %91, i32* %7, i32* %8)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %79
  %95 = load i32, i32* @R10BIO_MadeGood, align 4
  %96 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %97 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %96, i32 0, i32 0
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %94, %79
  br label %100

100:                                              ; preds = %99, %78
  %101 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %102 = load %struct.mddev*, %struct.mddev** %4, align 8
  %103 = call i32 @rdev_dec_pending(%struct.md_rdev* %101, %struct.mddev* %102)
  %104 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %105 = call i32 @end_sync_request(%struct.r10bio* %104)
  ret void
}

declare dso_local %struct.r10bio* @get_resync_r10bio(%struct.bio*) #1

declare dso_local i32 @find_bio_disk(%struct.r10conf*, %struct.r10bio*, %struct.bio*, i32*, i32*) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i32, i32, i32*, i32*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @end_sync_request(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
