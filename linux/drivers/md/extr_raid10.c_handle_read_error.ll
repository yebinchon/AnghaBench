; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_handle_read_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_handle_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.mddev = type { i64, %struct.r10conf* }
%struct.r10conf = type { i32 }
%struct.r10bio = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bio*, %struct.md_rdev* }
%struct.md_rdev = type { i32 }

@IO_BLOCKED = common dso_local global %struct.bio* null, align 8
@FailFast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*, %struct.r10bio*)* @handle_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_read_error(%struct.mddev* %0, %struct.r10bio* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r10bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.r10conf*, align 8
  %8 = alloca %struct.md_rdev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.r10bio* %1, %struct.r10bio** %4, align 8
  %9 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %10 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mddev*, %struct.mddev** %3, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 1
  %14 = load %struct.r10conf*, %struct.r10conf** %13, align 8
  store %struct.r10conf* %14, %struct.r10conf** %7, align 8
  %15 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %16 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.md_rdev*, %struct.md_rdev** %21, align 8
  store %struct.md_rdev* %22, %struct.md_rdev** %8, align 8
  %23 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %24 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.bio*, %struct.bio** %29, align 8
  store %struct.bio* %30, %struct.bio** %6, align 8
  %31 = load %struct.bio*, %struct.bio** %6, align 8
  %32 = call i32 @bio_put(%struct.bio* %31)
  %33 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %34 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %39, align 8
  %40 = load %struct.mddev*, %struct.mddev** %3, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %2
  %45 = load %struct.bio*, %struct.bio** @IO_BLOCKED, align 8
  %46 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %47 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.bio* %45, %struct.bio** %52, align 8
  br label %73

53:                                               ; preds = %2
  %54 = load i32, i32* @FailFast, align 4
  %55 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %56 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %55, i32 0, i32 0
  %57 = call i32 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %61 = call i32 @freeze_array(%struct.r10conf* %60, i32 1)
  %62 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %63 = load %struct.mddev*, %struct.mddev** %3, align 8
  %64 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %65 = call i32 @fix_read_error(%struct.r10conf* %62, %struct.mddev* %63, %struct.r10bio* %64)
  %66 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %67 = call i32 @unfreeze_array(%struct.r10conf* %66)
  br label %72

68:                                               ; preds = %53
  %69 = load %struct.mddev*, %struct.mddev** %3, align 8
  %70 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %71 = call i32 @md_error(%struct.mddev* %69, %struct.md_rdev* %70)
  br label %72

72:                                               ; preds = %68, %59
  br label %73

73:                                               ; preds = %72, %44
  %74 = load %struct.md_rdev*, %struct.md_rdev** %8, align 8
  %75 = load %struct.mddev*, %struct.mddev** %3, align 8
  %76 = call i32 @rdev_dec_pending(%struct.md_rdev* %74, %struct.mddev* %75)
  %77 = load %struct.r10conf*, %struct.r10conf** %7, align 8
  %78 = call i32 @allow_barrier(%struct.r10conf* %77)
  %79 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %80 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %struct.mddev*, %struct.mddev** %3, align 8
  %82 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %83 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.r10bio*, %struct.r10bio** %4, align 8
  %86 = call i32 @raid10_read_request(%struct.mddev* %81, i32 %84, %struct.r10bio* %85)
  ret void
}

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @freeze_array(%struct.r10conf*, i32) #1

declare dso_local i32 @fix_read_error(%struct.r10conf*, %struct.mddev*, %struct.r10bio*) #1

declare dso_local i32 @unfreeze_array(%struct.r10conf*) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @allow_barrier(%struct.r10conf*) #1

declare dso_local i32 @raid10_read_request(%struct.mddev*, i32, %struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
