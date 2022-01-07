; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_fetch_ra_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_fetch_ra_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.r5l_recovery_ctx = type { i64, i64, %struct.TYPE_10__*, i32*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BLOCK_SECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*, %struct.r5l_recovery_ctx*, i64)* @r5l_recovery_fetch_ra_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_recovery_fetch_ra_pool(%struct.r5l_log* %0, %struct.r5l_recovery_ctx* %1, i64 %2) #0 {
  %4 = alloca %struct.r5l_log*, align 8
  %5 = alloca %struct.r5l_recovery_ctx*, align 8
  %6 = alloca i64, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %4, align 8
  store %struct.r5l_recovery_ctx* %1, %struct.r5l_recovery_ctx** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %8 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = call i32 @bio_reset(%struct.TYPE_10__* %9)
  %11 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %11, i32 0, i32 2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %15 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bio_set_dev(%struct.TYPE_10__* %13, i32 %18)
  %20 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = load i32, i32* @REQ_OP_READ, align 4
  %24 = call i32 @bio_set_op_attrs(%struct.TYPE_10__* %22, i32 %23, i32 0)
  %25 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %26 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i64 %31, i64* %36, align 8
  %37 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %75, %3
  %43 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %42
  %51 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %52 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %55 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = call i32 @bio_add_page(%struct.TYPE_10__* %53, i32 %61, i32 %62, i32 0)
  %64 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* @BLOCK_SECTORS, align 4
  %71 = call i64 @r5l_ring_add(%struct.r5l_log* %68, i64 %69, i32 %70)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %50
  br label %76

75:                                               ; preds = %50
  br label %42

76:                                               ; preds = %74, %42
  %77 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %78 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = call i32 @submit_bio_wait(%struct.TYPE_10__* %79)
  ret i32 %80
}

declare dso_local i32 @bio_reset(%struct.TYPE_10__*) #1

declare dso_local i32 @bio_set_dev(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i64 @r5l_ring_add(%struct.r5l_log*, i64, i32) #1

declare dso_local i32 @submit_bio_wait(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
