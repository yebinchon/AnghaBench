; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bcache_device_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bcache_device_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_device = type { i32, i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@bch_register_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s stopped\00", align 1
@GENHD_FL_UP = common dso_local global i32 0, align 4
@bcache_device_idx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcache_device*)* @bcache_device_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcache_device_free(%struct.bcache_device* %0) #0 {
  %2 = alloca %struct.bcache_device*, align 8
  store %struct.bcache_device* %0, %struct.bcache_device** %2, align 8
  %3 = call i32 @lockdep_assert_held(i32* @bch_register_lock)
  %4 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %5 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %4, i32 0, i32 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %11 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %16 = call i32 @bcache_device_detach(%struct.bcache_device* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %19 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %24 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GENHD_FL_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %33 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i32 @del_gendisk(%struct.TYPE_3__* %34)
  br label %36

36:                                               ; preds = %31, %22, %17
  %37 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %38 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %37, i32 0, i32 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %43 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %50 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %49, i32 0, i32 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @blk_cleanup_queue(i64 %53)
  br label %55

55:                                               ; preds = %48, %41, %36
  %56 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %57 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %56, i32 0, i32 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %62 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %61, i32 0, i32 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @first_minor_to_idx(i32 %65)
  %67 = call i32 @ida_simple_remove(i32* @bcache_device_idx, i32 %66)
  %68 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %69 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %68, i32 0, i32 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = call i32 @put_disk(%struct.TYPE_3__* %70)
  br label %72

72:                                               ; preds = %60, %55
  %73 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %74 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %73, i32 0, i32 3
  %75 = call i32 @bioset_exit(i32* %74)
  %76 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %77 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @kvfree(i32 %78)
  %80 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %81 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kvfree(i32 %82)
  %84 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %85 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %84, i32 0, i32 0
  %86 = call i32 @closure_debug_destroy(i32* %85)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @bcache_device_detach(%struct.bcache_device*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_3__*) #1

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @first_minor_to_idx(i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_3__*) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @closure_debug_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
