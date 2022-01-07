; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_end_read_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_raid1_end_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.r1bio*, i32 }
%struct.r1bio = type { i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.r1conf* }
%struct.r1conf = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, i32 }

@R1BIO_Uptodate = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@R1BIO_FailFast = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"md/raid1:%s: %s: rescheduling sector %llu\0A\00", align 1
@R1BIO_ReadError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @raid1_end_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid1_end_read_request(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca %struct.md_rdev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load %struct.bio*, %struct.bio** %2, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load %struct.r1bio*, %struct.r1bio** %17, align 8
  store %struct.r1bio* %18, %struct.r1bio** %4, align 8
  %19 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %20 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.r1conf*, %struct.r1conf** %22, align 8
  store %struct.r1conf* %23, %struct.r1conf** %5, align 8
  %24 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %25 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %28 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.md_rdev*, %struct.md_rdev** %31, align 8
  store %struct.md_rdev* %32, %struct.md_rdev** %6, align 8
  %33 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %34 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %37 = call i32 @update_head_pos(i64 %35, %struct.r1bio* %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load i32, i32* @R1BIO_Uptodate, align 4
  %42 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %43 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %42, i32 0, i32 1
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %96

45:                                               ; preds = %1
  %46 = load i32, i32* @FailFast, align 4
  %47 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %48 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %47, i32 0, i32 1
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @R1BIO_FailFast, align 4
  %53 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %54 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %53, i32 0, i32 1
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %95

58:                                               ; preds = %51, %45
  %59 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %60 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %59, i32 0, i32 2
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %64 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %69 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %89, label %72

72:                                               ; preds = %58
  %73 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %74 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %79 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = icmp eq i32 %77, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load i32, i32* @In_sync, align 4
  %85 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %86 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %85, i32 0, i32 1
  %87 = call i64 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %58
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %83, %72
  %91 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %92 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %91, i32 0, i32 2
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %90, %57
  br label %96

96:                                               ; preds = %95, %40
  %97 = load i32, i32* %3, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %101 = call i32 @raid_end_bio_io(%struct.r1bio* %100)
  %102 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %103 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %104 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rdev_dec_pending(%struct.md_rdev* %102, i32 %105)
  br label %131

107:                                              ; preds = %96
  %108 = load i32, i32* @BDEVNAME_SIZE, align 4
  %109 = zext i32 %108 to i64
  %110 = call i8* @llvm.stacksave()
  store i8* %110, i8** %8, align 8
  %111 = alloca i8, i64 %109, align 16
  store i64 %109, i64* %9, align 8
  %112 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %113 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @mdname(i32 %114)
  %116 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %117 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bdevname(i32 %118, i8* %111)
  %120 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %121 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %119, i64 %122)
  %124 = load i32, i32* @R1BIO_ReadError, align 4
  %125 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %126 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %125, i32 0, i32 1
  %127 = call i32 @set_bit(i32 %124, i32* %126)
  %128 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %129 = call i32 @reschedule_retry(%struct.r1bio* %128)
  %130 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %130)
  br label %131

131:                                              ; preds = %107, %99
  ret void
}

declare dso_local i32 @update_head_pos(i64, %struct.r1bio*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @raid_end_bio_io(%struct.r1bio*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_err_ratelimited(i8*, i32, i32, i64) #1

declare dso_local i32 @mdname(i32) #1

declare dso_local i32 @bdevname(i32, i8*) #1

declare dso_local i32 @reschedule_retry(%struct.r1bio*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
