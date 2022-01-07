; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_handle_sync_write_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_handle_sync_write_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32 }
%struct.r1bio = type { i32, i32, i32, %struct.bio** }
%struct.bio = type { i64, i32* }

@R1BIO_MadeGood = common dso_local global i32 0, align 4
@R1BIO_WriteError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*, %struct.r1bio*)* @handle_sync_write_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_sync_write_finished(%struct.r1conf* %0, %struct.r1bio* %1) #0 {
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca %struct.r1bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca %struct.bio*, align 8
  store %struct.r1conf* %0, %struct.r1conf** %3, align 8
  store %struct.r1bio* %1, %struct.r1bio** %4, align 8
  %9 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %10 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %85, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %15 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 2
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %12
  %20 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %21 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.md_rdev*, %struct.md_rdev** %26, align 8
  store %struct.md_rdev* %27, %struct.md_rdev** %7, align 8
  %28 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %29 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %28, i32 0, i32 3
  %30 = load %struct.bio**, %struct.bio*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.bio*, %struct.bio** %30, i64 %32
  %34 = load %struct.bio*, %struct.bio** %33, align 8
  store %struct.bio* %34, %struct.bio** %8, align 8
  %35 = load %struct.bio*, %struct.bio** %8, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %85

40:                                               ; preds = %19
  %41 = load %struct.bio*, %struct.bio** %8, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @R1BIO_MadeGood, align 4
  %47 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %48 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %47, i32 0, i32 2
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %53 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %54 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @rdev_clear_badblocks(%struct.md_rdev* %52, i32 %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %51, %45, %40
  %59 = load %struct.bio*, %struct.bio** %8, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load i32, i32* @R1BIO_WriteError, align 4
  %65 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %66 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %65, i32 0, i32 2
  %67 = call i64 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %71 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %72 = getelementptr inbounds %struct.r1bio, %struct.r1bio* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @rdev_set_badblocks(%struct.md_rdev* %70, i32 %73, i32 %74, i32 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %69
  %78 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %79 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %82 = call i32 @md_error(i32 %80, %struct.md_rdev* %81)
  br label %83

83:                                               ; preds = %77, %69
  br label %84

84:                                               ; preds = %83, %63, %58
  br label %85

85:                                               ; preds = %84, %39
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %12

88:                                               ; preds = %12
  %89 = load %struct.r1bio*, %struct.r1bio** %4, align 8
  %90 = call i32 @put_buf(%struct.r1bio* %89)
  %91 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %92 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @md_done_sync(i32 %93, i32 %94, i32 1)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rdev_clear_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i32, i32, i32) #1

declare dso_local i32 @md_error(i32, %struct.md_rdev*) #1

declare dso_local i32 @put_buf(%struct.r1bio*) #1

declare dso_local i32 @md_done_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
