; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_cached_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_cached_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_18__, %struct.TYPE_12__, %struct.TYPE_17__*, i32, i32, %struct.io*, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.io = type { i32, i32 }
%struct.request_queue = type { %struct.TYPE_16__*, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@cached_dev_flush = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@bch_cached_dev_ktype = common dso_local global i32 0, align 4
@cached_dev_detach_finish = common dso_local global i32 0, align 4
@RECENT_IO = common dso_local global i32 0, align 4
@DEFAULT_CACHED_DEV_ERROR_LIMIT = common dso_local global i32 0, align 4
@BCH_CACHED_DEV_STOP_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cached_dev*, i32)* @cached_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cached_dev_init(%struct.cached_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cached_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.io*, align 8
  %8 = alloca %struct.request_queue*, align 8
  store %struct.cached_dev* %0, %struct.cached_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %10 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %9, i32 0, i32 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %12 = call %struct.request_queue* @bdev_get_queue(%struct.TYPE_17__* %11)
  store %struct.request_queue* %12, %struct.request_queue** %8, align 8
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = call i32 @__module_get(i32 %13)
  %15 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %16 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %15, i32 0, i32 16
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %19 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %21 = call i32 @closure_init(i32* %20, i32* null)
  %22 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %23 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load i32, i32* @cached_dev_flush, align 4
  %26 = load i32, i32* @system_wq, align 4
  %27 = call i32 @set_closure_fn(i32* %24, i32 %25, i32 %26)
  %28 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %29 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 3
  %31 = call i32 @kobject_init(i32* %30, i32* @bch_cached_dev_ktype)
  %32 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %33 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %32, i32 0, i32 15
  %34 = load i32, i32* @cached_dev_detach_finish, align 4
  %35 = call i32 @INIT_WORK(i32* %33, i32 %34)
  %36 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %37 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %36, i32 0, i32 14
  %38 = call i32 @sema_init(i32* %37, i32 1)
  %39 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %40 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %39, i32 0, i32 10
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %43 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %42, i32 0, i32 13
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %46 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %45, i32 0, i32 12
  %47 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %48 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = call i32 @bch_cache_accounting_init(i32* %46, i32* %49)
  %51 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %52 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %51, i32 0, i32 0
  store i32 4194304, i32* %52, align 8
  %53 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %54 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %53, i32 0, i32 11
  %55 = load %struct.io*, %struct.io** %54, align 8
  store %struct.io* %55, %struct.io** %7, align 8
  br label %56

56:                                               ; preds = %79, %2
  %57 = load %struct.io*, %struct.io** %7, align 8
  %58 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %59 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %58, i32 0, i32 11
  %60 = load %struct.io*, %struct.io** %59, align 8
  %61 = load i32, i32* @RECENT_IO, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.io, %struct.io* %60, i64 %62
  %64 = icmp ult %struct.io* %57, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %56
  %66 = load %struct.io*, %struct.io** %7, align 8
  %67 = getelementptr inbounds %struct.io, %struct.io* %66, i32 0, i32 1
  %68 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %69 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %68, i32 0, i32 10
  %70 = call i32 @list_add(i32* %67, i32* %69)
  %71 = load %struct.io*, %struct.io** %7, align 8
  %72 = getelementptr inbounds %struct.io, %struct.io* %71, i32 0, i32 0
  %73 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %74 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RECENT_IO, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 @hlist_add_head(i32* %72, i32 %77)
  br label %79

79:                                               ; preds = %65
  %80 = load %struct.io*, %struct.io** %7, align 8
  %81 = getelementptr inbounds %struct.io, %struct.io* %80, i32 1
  store %struct.io* %81, %struct.io** %7, align 8
  br label %56

82:                                               ; preds = %56
  %83 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %84 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 9
  %88 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %89 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %92 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %82
  %97 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %98 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %102 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %101, i32 0, i32 9
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %96, %82
  %104 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %105 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %104, i32 0, i32 6
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %108 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %107, i32 0, i32 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %115 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %113, %117
  %119 = call i32 @bcache_device_init(%struct.TYPE_18__* %105, i32 %106, i64 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %103
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %165

124:                                              ; preds = %103
  %125 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %126 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %136 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %135, i32 0, i32 0
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @max(i32 %134, i32 %139)
  %141 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %142 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i32 %140, i32* %149, align 4
  %150 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %151 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %150, i32 0, i32 5
  %152 = call i32 @atomic_set(i32* %151, i32 0)
  %153 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %154 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %153, i32 0, i32 2
  store i32 0, i32* %154, align 8
  %155 = load i32, i32* @DEFAULT_CACHED_DEV_ERROR_LIMIT, align 4
  %156 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %157 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* @BCH_CACHED_DEV_STOP_AUTO, align 4
  %159 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %160 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %162 = call i32 @bch_cached_dev_request_init(%struct.cached_dev* %161)
  %163 = load %struct.cached_dev*, %struct.cached_dev** %4, align 8
  %164 = call i32 @bch_cached_dev_writeback_init(%struct.cached_dev* %163)
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %124, %122
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.TYPE_17__*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @closure_init(i32*, i32*) #1

declare dso_local i32 @set_closure_fn(i32*, i32, i32) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bch_cache_accounting_init(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32) #1

declare dso_local i32 @bcache_device_init(%struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bch_cached_dev_request_init(%struct.cached_dev*) #1

declare dso_local i32 @bch_cached_dev_writeback_init(%struct.cached_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
