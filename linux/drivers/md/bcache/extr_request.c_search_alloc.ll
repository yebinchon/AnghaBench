; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_search_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_request.c_search_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.search = type { i32, %struct.TYPE_4__, i32, i64, i32, %struct.bcache_device*, i64, i32*, %struct.bio*, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i32, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bio = type { i32 }
%struct.bcache_device = type { i32, %struct.TYPE_3__* }

@GFP_NOIO = common dso_local global i32 0, align 4
@request_endio = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@bcache_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.search* (%struct.bio*, %struct.bcache_device*)* @search_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.search* @search_alloc(%struct.bio* %0, %struct.bcache_device* %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bcache_device*, align 8
  %5 = alloca %struct.search*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store %struct.bcache_device* %1, %struct.bcache_device** %4, align 8
  %6 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %7 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* @GFP_NOIO, align 4
  %11 = call %struct.search* @mempool_alloc(i32* %9, i32 %10)
  store %struct.search* %11, %struct.search** %5, align 8
  %12 = load %struct.search*, %struct.search** %5, align 8
  %13 = getelementptr inbounds %struct.search, %struct.search* %12, i32 0, i32 9
  %14 = call i32 @closure_init(i32* %13, i32* null)
  %15 = load %struct.search*, %struct.search** %5, align 8
  %16 = load %struct.bio*, %struct.bio** %3, align 8
  %17 = load i32, i32* @request_endio, align 4
  %18 = call i32 @do_bio_hook(%struct.search* %15, %struct.bio* %16, i32 %17)
  %19 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %20 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc(i32* %22)
  %24 = load %struct.bio*, %struct.bio** %3, align 8
  %25 = load %struct.search*, %struct.search** %5, align 8
  %26 = getelementptr inbounds %struct.search, %struct.search* %25, i32 0, i32 8
  store %struct.bio* %24, %struct.bio** %26, align 8
  %27 = load %struct.search*, %struct.search** %5, align 8
  %28 = getelementptr inbounds %struct.search, %struct.search* %27, i32 0, i32 7
  store i32* null, i32** %28, align 8
  %29 = load %struct.search*, %struct.search** %5, align 8
  %30 = getelementptr inbounds %struct.search, %struct.search* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %32 = load %struct.search*, %struct.search** %5, align 8
  %33 = getelementptr inbounds %struct.search, %struct.search* %32, i32 0, i32 5
  store %struct.bcache_device* %31, %struct.bcache_device** %33, align 8
  %34 = load %struct.search*, %struct.search** %5, align 8
  %35 = getelementptr inbounds %struct.search, %struct.search* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.bio*, %struct.bio** %3, align 8
  %37 = call i32 @bio_op(%struct.bio* %36)
  %38 = call i32 @op_is_write(i32 %37)
  %39 = load %struct.search*, %struct.search** %5, align 8
  %40 = getelementptr inbounds %struct.search, %struct.search* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.search*, %struct.search** %5, align 8
  %42 = getelementptr inbounds %struct.search, %struct.search* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @jiffies, align 4
  %44 = load %struct.search*, %struct.search** %5, align 8
  %45 = getelementptr inbounds %struct.search, %struct.search* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %47 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.search*, %struct.search** %5, align 8
  %50 = getelementptr inbounds %struct.search, %struct.search* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 8
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %51, align 8
  %52 = load %struct.search*, %struct.search** %5, align 8
  %53 = getelementptr inbounds %struct.search, %struct.search* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 7
  store i32* null, i32** %54, align 8
  %55 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %56 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.search*, %struct.search** %5, align 8
  %59 = getelementptr inbounds %struct.search, %struct.search* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  store i32 %57, i32* %60, align 4
  %61 = load i64, i64* @current, align 8
  %62 = call i32 @hash_long(i64 %61, i32 16)
  %63 = load %struct.search*, %struct.search** %5, align 8
  %64 = getelementptr inbounds %struct.search, %struct.search* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 8
  %66 = load %struct.search*, %struct.search** %5, align 8
  %67 = getelementptr inbounds %struct.search, %struct.search* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.search*, %struct.search** %5, align 8
  %70 = getelementptr inbounds %struct.search, %struct.search* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.search*, %struct.search** %5, align 8
  %73 = getelementptr inbounds %struct.search, %struct.search* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.bio*, %struct.bio** %3, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @op_is_flush(i32 %77)
  %79 = load %struct.search*, %struct.search** %5, align 8
  %80 = getelementptr inbounds %struct.search, %struct.search* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @bcache_wq, align 4
  %83 = load %struct.search*, %struct.search** %5, align 8
  %84 = getelementptr inbounds %struct.search, %struct.search* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = load %struct.search*, %struct.search** %5, align 8
  ret %struct.search* %86
}

declare dso_local %struct.search* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @closure_init(i32*, i32*) #1

declare dso_local i32 @do_bio_hook(%struct.search*, %struct.bio*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @op_is_write(i32) #1

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local i32 @hash_long(i64, i32) #1

declare dso_local i32 @op_is_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
