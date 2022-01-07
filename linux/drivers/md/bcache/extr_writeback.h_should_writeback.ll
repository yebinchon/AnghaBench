; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.h_should_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.h_should_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CACHE_MODE_WRITEBACK = common dso_local global i32 0, align 4
@BCACHE_DEV_DETACHING = common dso_local global i32 0, align 4
@bch_cutoff_writeback_sync = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@bch_cutoff_writeback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cached_dev*, %struct.bio*, i32, i32)* @should_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_writeback(%struct.cached_dev* %0, %struct.bio* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cached_dev*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cached_dev* %0, %struct.cached_dev** %6, align 8
  store %struct.bio* %1, %struct.bio** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.cached_dev*, %struct.cached_dev** %6, align 8
  %12 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @CACHE_MODE_WRITEBACK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @BCACHE_DEV_DETACHING, align 4
  %23 = load %struct.cached_dev*, %struct.cached_dev** %6, align 8
  %24 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i64 @test_bit(i32 %22, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @bch_cutoff_writeback_sync, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %21, %4
  store i32 0, i32* %5, align 4
  br label %81

33:                                               ; preds = %28
  %34 = load %struct.bio*, %struct.bio** %7, align 8
  %35 = call i64 @bio_op(%struct.bio* %34)
  %36 = load i64, i64* @REQ_OP_DISCARD, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %81

39:                                               ; preds = %33
  %40 = load %struct.cached_dev*, %struct.cached_dev** %6, align 8
  %41 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.cached_dev*, %struct.cached_dev** %6, align 8
  %46 = load %struct.bio*, %struct.bio** %7, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bio*, %struct.bio** %7, align 8
  %51 = call i32 @bio_sectors(%struct.bio* %50)
  %52 = call i64 @bcache_dev_stripe_dirty(%struct.cached_dev* %45, i32 %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %81

55:                                               ; preds = %44, %39
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %81

59:                                               ; preds = %55
  %60 = load %struct.bio*, %struct.bio** %7, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @op_is_sync(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %59
  %66 = load %struct.bio*, %struct.bio** %7, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @REQ_META, align 4
  %70 = load i32, i32* @REQ_PRIO, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @bch_cutoff_writeback, align 4
  %77 = icmp ule i32 %75, %76
  br label %78

78:                                               ; preds = %74, %65, %59
  %79 = phi i1 [ true, %65 ], [ true, %59 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %58, %54, %38, %32
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @bcache_dev_stripe_dirty(%struct.cached_dev*, i32, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @op_is_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
