; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_migration = type { i32, %struct.TYPE_6__*, %struct.cache* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.cache = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dm_io_region = type { i32, i32, i32 }

@copy_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_cache_migration*, i32)* @copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy(%struct.dm_cache_migration* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_cache_migration*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_io_region, align 4
  %6 = alloca %struct.dm_io_region, align 4
  %7 = alloca %struct.cache*, align 8
  store %struct.dm_cache_migration* %0, %struct.dm_cache_migration** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %9 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %8, i32 0, i32 2
  %10 = load %struct.cache*, %struct.cache** %9, align 8
  store %struct.cache* %10, %struct.cache** %7, align 8
  %11 = load %struct.cache*, %struct.cache** %7, align 8
  %12 = getelementptr inbounds %struct.cache, %struct.cache* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %5, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %18 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @from_oblock(i32 %21)
  %23 = load %struct.cache*, %struct.cache** %7, align 8
  %24 = getelementptr inbounds %struct.cache, %struct.cache* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %22, %25
  %27 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.cache*, %struct.cache** %7, align 8
  %29 = getelementptr inbounds %struct.cache, %struct.cache* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.cache*, %struct.cache** %7, align 8
  %33 = getelementptr inbounds %struct.cache, %struct.cache* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %6, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %39 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @from_cblock(i32 %42)
  %44 = load %struct.cache*, %struct.cache** %7, align 8
  %45 = getelementptr inbounds %struct.cache, %struct.cache* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  %48 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %6, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.cache*, %struct.cache** %7, align 8
  %50 = getelementptr inbounds %struct.cache, %struct.cache* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %6, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %2
  %56 = load %struct.cache*, %struct.cache** %7, align 8
  %57 = getelementptr inbounds %struct.cache, %struct.cache* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @copy_complete, align 4
  %60 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %61 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %60, i32 0, i32 0
  %62 = call i32 @dm_kcopyd_copy(i32 %58, %struct.dm_io_region* %5, i32 1, %struct.dm_io_region* %6, i32 0, i32 %59, i32* %61)
  br label %71

63:                                               ; preds = %2
  %64 = load %struct.cache*, %struct.cache** %7, align 8
  %65 = getelementptr inbounds %struct.cache, %struct.cache* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @copy_complete, align 4
  %68 = load %struct.dm_cache_migration*, %struct.dm_cache_migration** %3, align 8
  %69 = getelementptr inbounds %struct.dm_cache_migration, %struct.dm_cache_migration* %68, i32 0, i32 0
  %70 = call i32 @dm_kcopyd_copy(i32 %66, %struct.dm_io_region* %6, i32 1, %struct.dm_io_region* %5, i32 0, i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %63, %55
  ret void
}

declare dso_local i32 @from_oblock(i32) #1

declare dso_local i32 @from_cblock(i32) #1

declare dso_local i32 @dm_kcopyd_copy(i32, %struct.dm_io_region*, i32, %struct.dm_io_region*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
