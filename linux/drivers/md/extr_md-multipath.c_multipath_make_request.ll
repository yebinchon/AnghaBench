; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-multipath.c_multipath_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.mpconf* }
%struct.mpconf = type { %struct.multipath_info*, i32 }
%struct.multipath_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.bio = type { i32 }
%struct.multipath_bh = type { i64, %struct.TYPE_11__, %struct.mddev*, %struct.bio* }
%struct.TYPE_11__ = type { %struct.multipath_bh*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@REQ_FAILFAST_TRANSPORT = common dso_local global i32 0, align 4
@multipath_end_request = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @multipath_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multipath_make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.mpconf*, align 8
  %7 = alloca %struct.multipath_bh*, align 8
  %8 = alloca %struct.multipath_info*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.mddev*, %struct.mddev** %4, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  %11 = load %struct.mpconf*, %struct.mpconf** %10, align 8
  store %struct.mpconf* %11, %struct.mpconf** %6, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REQ_PREFLUSH, align 4
  %16 = and i32 %14, %15
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.mddev*, %struct.mddev** %4, align 8
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = call i32 @md_flush_request(%struct.mddev* %20, %struct.bio* %21)
  store i32 1, i32* %3, align 4
  br label %110

23:                                               ; preds = %2
  %24 = load %struct.mpconf*, %struct.mpconf** %6, align 8
  %25 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %24, i32 0, i32 1
  %26 = load i32, i32* @GFP_NOIO, align 4
  %27 = call %struct.multipath_bh* @mempool_alloc(i32* %25, i32 %26)
  store %struct.multipath_bh* %27, %struct.multipath_bh** %7, align 8
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %30 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %29, i32 0, i32 3
  store %struct.bio* %28, %struct.bio** %30, align 8
  %31 = load %struct.mddev*, %struct.mddev** %4, align 8
  %32 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %33 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %32, i32 0, i32 2
  store %struct.mddev* %31, %struct.mddev** %33, align 8
  %34 = load %struct.mpconf*, %struct.mpconf** %6, align 8
  %35 = call i64 @multipath_map(%struct.mpconf* %34)
  %36 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %37 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %39 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %23
  %43 = load %struct.bio*, %struct.bio** %5, align 8
  %44 = call i32 @bio_io_error(%struct.bio* %43)
  %45 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %46 = load %struct.mpconf*, %struct.mpconf** %6, align 8
  %47 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %46, i32 0, i32 1
  %48 = call i32 @mempool_free(%struct.multipath_bh* %45, i32* %47)
  store i32 1, i32* %3, align 4
  br label %110

49:                                               ; preds = %23
  %50 = load %struct.mpconf*, %struct.mpconf** %6, align 8
  %51 = getelementptr inbounds %struct.mpconf, %struct.mpconf* %50, i32 0, i32 0
  %52 = load %struct.multipath_info*, %struct.multipath_info** %51, align 8
  %53 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %54 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %52, i64 %55
  store %struct.multipath_info* %56, %struct.multipath_info** %8, align 8
  %57 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %58 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %57, i32 0, i32 1
  %59 = call i32 @bio_init(%struct.TYPE_11__* %58, i32* null, i32 0)
  %60 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %61 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %60, i32 0, i32 1
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = call i32 @__bio_clone_fast(%struct.TYPE_11__* %61, %struct.bio* %62)
  %64 = load %struct.multipath_info*, %struct.multipath_info** %8, align 8
  %65 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %70 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %68
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 8
  %77 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %78 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %77, i32 0, i32 1
  %79 = load %struct.multipath_info*, %struct.multipath_info** %8, align 8
  %80 = getelementptr inbounds %struct.multipath_info, %struct.multipath_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @bio_set_dev(%struct.TYPE_11__* %78, i32 %83)
  %85 = load i32, i32* @REQ_FAILFAST_TRANSPORT, align 4
  %86 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %87 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* @multipath_end_request, align 4
  %92 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %93 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  %95 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %96 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %97 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store %struct.multipath_bh* %95, %struct.multipath_bh** %98, align 8
  %99 = load %struct.mddev*, %struct.mddev** %4, align 8
  %100 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %101 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %100, i32 0, i32 1
  %102 = call i32 @mddev_check_writesame(%struct.mddev* %99, %struct.TYPE_11__* %101)
  %103 = load %struct.mddev*, %struct.mddev** %4, align 8
  %104 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %105 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %104, i32 0, i32 1
  %106 = call i32 @mddev_check_write_zeroes(%struct.mddev* %103, %struct.TYPE_11__* %105)
  %107 = load %struct.multipath_bh*, %struct.multipath_bh** %7, align 8
  %108 = getelementptr inbounds %struct.multipath_bh, %struct.multipath_bh* %107, i32 0, i32 1
  %109 = call i32 @generic_make_request(%struct.TYPE_11__* %108)
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %49, %42, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @md_flush_request(%struct.mddev*, %struct.bio*) #1

declare dso_local %struct.multipath_bh* @mempool_alloc(i32*, i32) #1

declare dso_local i64 @multipath_map(%struct.mpconf*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @mempool_free(%struct.multipath_bh*, i32*) #1

declare dso_local i32 @bio_init(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @__bio_clone_fast(%struct.TYPE_11__*, %struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mddev_check_writesame(%struct.mddev*, %struct.TYPE_11__*) #1

declare dso_local i32 @mddev_check_write_zeroes(%struct.mddev*, %struct.TYPE_11__*) #1

declare dso_local i32 @generic_make_request(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
