; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_end_read_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_end_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.r10bio*, i32 }
%struct.r10bio = type { i32, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.r10conf* }
%struct.r10conf = type { i32 }

@R10BIO_Uptodate = common dso_local global i32 0, align 4
@R10BIO_Previous = common dso_local global i32 0, align 4
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"md/raid10:%s: %s: rescheduling sector %llu\0A\00", align 1
@R10BIO_ReadError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @raid10_end_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid10_end_read_request(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.md_rdev*, align 8
  %7 = alloca %struct.r10conf*, align 8
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
  %18 = load %struct.r10bio*, %struct.r10bio** %17, align 8
  store %struct.r10bio* %18, %struct.r10bio** %4, align 8
  %19 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %20 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.r10conf*, %struct.r10conf** %22, align 8
  store %struct.r10conf* %23, %struct.r10conf** %7, align 8
  %24 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %25 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %28 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.md_rdev*, %struct.md_rdev** %33, align 8
  store %struct.md_rdev* %34, %struct.md_rdev** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %37 = call i32 @update_head_pos(i32 %35, %struct.r10bio* %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load i32, i32* @R10BIO_Uptodate, align 4
  %42 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %43 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %42, i32 0, i32 1
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %58

45:                                               ; preds = %1
  %46 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %47 = load i32, i32* @R10BIO_Previous, align 4
  %48 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %49 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %48, i32 0, i32 1
  %50 = call i32 @test_bit(i32 %47, i32* %49)
  %51 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %52 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @_enough(%struct.r10conf* %46, i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %63 = call i32 @raid_end_bio_io(%struct.r10bio* %62)
  %64 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %65 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %66 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @rdev_dec_pending(%struct.md_rdev* %64, i32 %67)
  br label %93

69:                                               ; preds = %58
  %70 = load i32, i32* @BDEVNAME_SIZE, align 4
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %8, align 8
  %73 = alloca i8, i64 %71, align 16
  store i64 %71, i64* %9, align 8
  %74 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %75 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mdname(i32 %76)
  %78 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %79 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bdevname(i32 %80, i8* %73)
  %82 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %83 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %81, i64 %84)
  %86 = load i32, i32* @R10BIO_ReadError, align 4
  %87 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %88 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %87, i32 0, i32 1
  %89 = call i32 @set_bit(i32 %86, i32* %88)
  %90 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %91 = call i32 @reschedule_retry(%struct.r10bio* %90)
  %92 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %92)
  br label %93

93:                                               ; preds = %69, %61
  ret void
}

declare dso_local i32 @update_head_pos(i32, %struct.r10bio*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @_enough(%struct.r10conf*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @raid_end_bio_io(%struct.r10bio*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_err_ratelimited(i8*, i32, i32, i64) #1

declare dso_local i32 @mdname(i32) #1

declare dso_local i32 @bdevname(i32, i8*) #1

declare dso_local i32 @reschedule_retry(%struct.r10bio*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
