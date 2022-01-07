; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_flush_bio_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_flush_bio_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { %struct.TYPE_3__*, %struct.bio* }
%struct.TYPE_3__ = type { i32 }
%struct.md_rdev = type { i32, i32 }

@Faulty = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*, %struct.bio*)* @flush_bio_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_bio_list(%struct.r1conf* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.r1conf*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.md_rdev*, align 8
  store %struct.r1conf* %0, %struct.r1conf** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %8 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @md_bitmap_unplug(i32 %11)
  %13 = load %struct.r1conf*, %struct.r1conf** %3, align 8
  %14 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %13, i32 0, i32 0
  %15 = call i32 @wake_up(i32* %14)
  br label %16

16:                                               ; preds = %69, %2
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  %18 = icmp ne %struct.bio* %17, null
  br i1 %18, label %19, label %71

19:                                               ; preds = %16
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 1
  %22 = load %struct.bio*, %struct.bio** %21, align 8
  store %struct.bio* %22, %struct.bio** %5, align 8
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = bitcast %struct.TYPE_3__* %25 to i8*
  %27 = bitcast i8* %26 to %struct.md_rdev*
  store %struct.md_rdev* %27, %struct.md_rdev** %6, align 8
  %28 = load %struct.bio*, %struct.bio** %4, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %29, align 8
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bio_set_dev(%struct.bio* %30, i32 %33)
  %35 = load i32, i32* @Faulty, align 4
  %36 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %37 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %19
  %41 = load %struct.bio*, %struct.bio** %4, align 8
  %42 = call i32 @bio_io_error(%struct.bio* %41)
  br label %69

43:                                               ; preds = %19
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = call i64 @bio_op(%struct.bio* %44)
  %46 = load i64, i64* @REQ_OP_DISCARD, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @blk_queue_discard(i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %48, %43
  %58 = phi i1 [ false, %43 ], [ %56, %48 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = call i32 @bio_endio(%struct.bio* %63)
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.bio*, %struct.bio** %4, align 8
  %67 = call i32 @generic_make_request(%struct.bio* %66)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %40
  %70 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %70, %struct.bio** %4, align 8
  br label %16

71:                                               ; preds = %16
  ret void
}

declare dso_local i32 @md_bitmap_unplug(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @blk_queue_discard(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
