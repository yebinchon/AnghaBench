; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_super_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_super_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32 }
%struct.md_rdev = type { i32, i64, i64, i32 }
%struct.page = type { i32 }
%struct.bio = type { i32, i32, %struct.md_rdev*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@Faulty = common dso_local global i32 0, align 4
@super_written = common dso_local global i32 0, align 4
@MD_FAILFAST_SUPPORTED = common dso_local global i32 0, align 4
@FailFast = common dso_local global i32 0, align 4
@LastDev = common dso_local global i32 0, align 4
@MD_FAILFAST = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_super_write(%struct.mddev* %0, %struct.md_rdev* %1, i32 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca %struct.md_rdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.bio*, align 8
  %12 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %6, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.page* %4, %struct.page** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.page*, %struct.page** %10, align 8
  %14 = icmp ne %struct.page* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %95

16:                                               ; preds = %5
  %17 = load i32, i32* @Faulty, align 4
  %18 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %19 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %95

23:                                               ; preds = %16
  %24 = load %struct.mddev*, %struct.mddev** %6, align 8
  %25 = call %struct.bio* @md_bio_alloc_sync(%struct.mddev* %24)
  store %struct.bio* %25, %struct.bio** %11, align 8
  %26 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 3
  %28 = call i32 @atomic_inc(i32* %27)
  %29 = load %struct.bio*, %struct.bio** %11, align 8
  %30 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %31 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %36 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  br label %42

38:                                               ; preds = %23
  %39 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %40 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i64 [ %37, %34 ], [ %41, %38 ]
  %44 = call i32 @bio_set_dev(%struct.bio* %29, i64 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.bio*, %struct.bio** %11, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.bio*, %struct.bio** %11, align 8
  %50 = load %struct.page*, %struct.page** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @bio_add_page(%struct.bio* %49, %struct.page* %50, i32 %51, i32 0)
  %53 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %54 = load %struct.bio*, %struct.bio** %11, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 2
  store %struct.md_rdev* %53, %struct.md_rdev** %55, align 8
  %56 = load i32, i32* @super_written, align 4
  %57 = load %struct.bio*, %struct.bio** %11, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @MD_FAILFAST_SUPPORTED, align 4
  %60 = load %struct.mddev*, %struct.mddev** %6, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 1
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %42
  %65 = load i32, i32* @FailFast, align 4
  %66 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %67 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %66, i32 0, i32 0
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i32, i32* @LastDev, align 4
  %72 = load %struct.md_rdev*, %struct.md_rdev** %7, align 8
  %73 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %72, i32 0, i32 0
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @MD_FAILFAST, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %76, %70, %64, %42
  %79 = load i32, i32* @REQ_OP_WRITE, align 4
  %80 = load i32, i32* @REQ_SYNC, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @REQ_PREFLUSH, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @REQ_FUA, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %12, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.bio*, %struct.bio** %11, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.mddev*, %struct.mddev** %6, align 8
  %91 = getelementptr inbounds %struct.mddev, %struct.mddev* %90, i32 0, i32 0
  %92 = call i32 @atomic_inc(i32* %91)
  %93 = load %struct.bio*, %struct.bio** %11, align 8
  %94 = call i32 @submit_bio(%struct.bio* %93)
  br label %95

95:                                               ; preds = %78, %22, %15
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.bio* @md_bio_alloc_sync(%struct.mddev*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i64) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
