; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_alloc_init_r10buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_alloc_init_r10buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10bio = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bio*, %struct.bio* }
%struct.bio = type { %struct.rsync_pages* }
%struct.rsync_pages = type { i32 }
%struct.r10conf = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@MD_RECOVERY_RESHAPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.r10bio* (%struct.r10conf*)* @raid10_alloc_init_r10buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.r10bio* @raid10_alloc_init_r10buf(%struct.r10conf* %0) #0 {
  %2 = alloca %struct.r10conf*, align 8
  %3 = alloca %struct.r10bio*, align 8
  %4 = alloca %struct.rsync_pages*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.r10conf* %0, %struct.r10conf** %2, align 8
  %8 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %9 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %8, i32 0, i32 2
  %10 = load i32, i32* @GFP_NOIO, align 4
  %11 = call %struct.r10bio* @mempool_alloc(i32* %9, i32 %10)
  store %struct.r10bio* %11, %struct.r10bio** %3, align 8
  %12 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %13 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %14 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %12, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %21 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %22 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %20, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19, %1
  %28 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %29 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  br label %32

31:                                               ; preds = %19
  store i32 2, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %27
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %33
  %38 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %39 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.bio*, %struct.bio** %44, align 8
  store %struct.bio* %45, %struct.bio** %5, align 8
  %46 = load %struct.bio*, %struct.bio** %5, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 0
  %48 = load %struct.rsync_pages*, %struct.rsync_pages** %47, align 8
  store %struct.rsync_pages* %48, %struct.rsync_pages** %4, align 8
  %49 = load %struct.bio*, %struct.bio** %5, align 8
  %50 = call i32 @bio_reset(%struct.bio* %49)
  %51 = load %struct.rsync_pages*, %struct.rsync_pages** %4, align 8
  %52 = load %struct.bio*, %struct.bio** %5, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 0
  store %struct.rsync_pages* %51, %struct.rsync_pages** %53, align 8
  %54 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  %55 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.bio*, %struct.bio** %60, align 8
  store %struct.bio* %61, %struct.bio** %5, align 8
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = icmp ne %struct.bio* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %37
  %65 = load %struct.bio*, %struct.bio** %5, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 0
  %67 = load %struct.rsync_pages*, %struct.rsync_pages** %66, align 8
  store %struct.rsync_pages* %67, %struct.rsync_pages** %4, align 8
  %68 = load %struct.bio*, %struct.bio** %5, align 8
  %69 = call i32 @bio_reset(%struct.bio* %68)
  %70 = load %struct.rsync_pages*, %struct.rsync_pages** %4, align 8
  %71 = load %struct.bio*, %struct.bio** %5, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 0
  store %struct.rsync_pages* %70, %struct.rsync_pages** %72, align 8
  br label %73

73:                                               ; preds = %64, %37
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %33

77:                                               ; preds = %33
  %78 = load %struct.r10bio*, %struct.r10bio** %3, align 8
  ret %struct.r10bio* %78
}

declare dso_local %struct.r10bio* @mempool_alloc(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bio_reset(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
