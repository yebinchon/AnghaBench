; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_ll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_disk = type { i32, i32, i32, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.dm_transaction_manager* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.dm_transaction_manager* }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.dm_transaction_manager* }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32* }
%struct.dm_transaction_manager = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"block size too big to hold bitmaps\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENTRIES_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ll_disk*, %struct.dm_transaction_manager*)* @sm_ll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_ll_init(%struct.ll_disk* %0, %struct.dm_transaction_manager* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ll_disk*, align 8
  %5 = alloca %struct.dm_transaction_manager*, align 8
  store %struct.ll_disk* %0, %struct.ll_disk** %4, align 8
  store %struct.dm_transaction_manager* %1, %struct.dm_transaction_manager** %5, align 8
  %6 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %7 = call i32 @memset(%struct.ll_disk* %6, i32 0, i32 144)
  %8 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %9 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %10 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %9, i32 0, i32 8
  store %struct.dm_transaction_manager* %8, %struct.dm_transaction_manager** %10, align 8
  %11 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %12 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %13 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store %struct.dm_transaction_manager* %11, %struct.dm_transaction_manager** %14, align 8
  %15 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %16 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %19 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %23 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %27 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %31 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %35 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %36 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store %struct.dm_transaction_manager* %34, %struct.dm_transaction_manager** %37, align 8
  %38 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %39 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %42 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 4, i32* %44, align 8
  %45 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %46 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  %49 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %50 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %54 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %58 = call i32 @dm_tm_get_bm(%struct.dm_transaction_manager* %57)
  %59 = call i32 @dm_bm_block_size(i32 %58)
  %60 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %61 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %63 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 1073741824
  br i1 %65, label %66, label %70

66:                                               ; preds = %2
  %67 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %90

70:                                               ; preds = %2
  %71 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %72 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, 4
  %76 = load i32, i32* @ENTRIES_PER_BYTE, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %75, %77
  %79 = trunc i64 %78 to i32
  %80 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %81 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %83 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %82, i32 0, i32 5
  store i64 0, i64* %83, align 8
  %84 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %85 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %87 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.ll_disk*, %struct.ll_disk** %4, align 8
  %89 = getelementptr inbounds %struct.ll_disk, %struct.ll_disk* %88, i32 0, i32 2
  store i32 0, i32* %89, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %70, %66
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @memset(%struct.ll_disk*, i32, i32) #1

declare dso_local i32 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(%struct.dm_transaction_manager*) #1

declare dso_local i32 @DMERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
