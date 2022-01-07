; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_bch_writeback_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_writeback.c_bch_writeback_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, i64, i32, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, %struct.cache_set* }
%struct.cache_set = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@CACHE_SET_IO_DISABLE = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@BCACHE_DEV_DETACHING = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@BDEV_STATE_CLEAN = common dso_local global i32 0, align 4
@BCH_ENABLE_AUTO_GC = common dso_local global i32 0, align 4
@BCH_DO_AUTO_GC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bch_writeback_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bch_writeback_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cached_dev*, align 8
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.cached_dev*
  store %struct.cached_dev* %8, %struct.cached_dev** %3, align 8
  %9 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.cache_set*, %struct.cache_set** %11, align 8
  store %struct.cache_set* %12, %struct.cache_set** %4, align 8
  %13 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %13, i32 0, i32 2
  %15 = call i32 @bch_ratelimit_reset(i32* %14)
  br label %16

16:                                               ; preds = %161, %65, %1
  %17 = call i64 (...) @kthread_should_stop()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @CACHE_SET_IO_DISABLE, align 4
  %21 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %22 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %21, i32 0, i32 1
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %19, %16
  %27 = phi i1 [ false, %16 ], [ %25, %19 ]
  br i1 %27, label %28, label %162

28:                                               ; preds = %26
  %29 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %30 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %29, i32 0, i32 4
  %31 = call i32 @down_write(i32* %30)
  %32 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %33 = call i32 @set_current_state(i32 %32)
  %34 = load i32, i32* @BCACHE_DEV_DETACHING, align 4
  %35 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %36 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %34, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %28
  %41 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %42 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %41, i32 0, i32 6
  %43 = call i32 @atomic_read(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %52 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %51, i32 0, i32 4
  %53 = call i32 @up_write(i32* %52)
  %54 = call i64 (...) @kthread_should_stop()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @CACHE_SET_IO_DISABLE, align 4
  %58 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %59 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %58, i32 0, i32 1
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %50
  %63 = load i32, i32* @TASK_RUNNING, align 4
  %64 = call i32 @set_current_state(i32 %63)
  br label %162

65:                                               ; preds = %56
  %66 = call i32 (...) @schedule()
  br label %16

67:                                               ; preds = %45, %28
  %68 = load i32, i32* @TASK_RUNNING, align 4
  %69 = call i32 @set_current_state(i32 %68)
  %70 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %71 = call i32 @refill_dirty(%struct.cached_dev* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %118

74:                                               ; preds = %67
  %75 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %76 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i64 @RB_EMPTY_ROOT(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %118

80:                                               ; preds = %74
  %81 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %82 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %81, i32 0, i32 6
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  %84 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %85 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %84, i32 0, i32 5
  %86 = load i32, i32* @BDEV_STATE_CLEAN, align 4
  %87 = call i32 @SET_BDEV_STATE(i32* %85, i32 %86)
  %88 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %89 = call i32 @bch_write_bdev_super(%struct.cached_dev* %88, i32* null)
  %90 = load i32, i32* @BCACHE_DEV_DETACHING, align 4
  %91 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %92 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i64 @test_bit(i32 %90, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %80
  %97 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %98 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %97, i32 0, i32 4
  %99 = call i32 @up_write(i32* %98)
  br label %162

100:                                              ; preds = %80
  %101 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %102 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @BCH_ENABLE_AUTO_GC, align 4
  %105 = load i32, i32* @BCH_DO_AUTO_GC, align 4
  %106 = or i32 %104, %105
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load i32, i32* @BCH_DO_AUTO_GC, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %112 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %116 = call i32 @force_wake_up_gc(%struct.cache_set* %115)
  br label %117

117:                                              ; preds = %108, %100
  br label %118

118:                                              ; preds = %117, %74, %67
  %119 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %120 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %119, i32 0, i32 4
  %121 = call i32 @up_write(i32* %120)
  %122 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %123 = call i32 @read_dirty(%struct.cached_dev* %122)
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %161

126:                                              ; preds = %118
  %127 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %128 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @HZ, align 4
  %131 = mul i32 %129, %130
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %154, %126
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %132
  %136 = call i64 (...) @kthread_should_stop()
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @CACHE_SET_IO_DISABLE, align 4
  %140 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %141 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %140, i32 0, i32 1
  %142 = call i64 @test_bit(i32 %139, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* @BCACHE_DEV_DETACHING, align 4
  %146 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %147 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = call i64 @test_bit(i32 %145, i32* %148)
  %150 = icmp ne i64 %149, 0
  %151 = xor i1 %150, true
  br label %152

152:                                              ; preds = %144, %138, %135, %132
  %153 = phi i1 [ false, %138 ], [ false, %135 ], [ false, %132 ], [ %151, %144 ]
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @schedule_timeout_interruptible(i32 %155)
  store i32 %156, i32* %6, align 4
  br label %132

157:                                              ; preds = %152
  %158 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %159 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %158, i32 0, i32 2
  %160 = call i32 @bch_ratelimit_reset(i32* %159)
  br label %161

161:                                              ; preds = %157, %118
  br label %16

162:                                              ; preds = %96, %62, %26
  %163 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %164 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %169 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @flush_workqueue(i64 %170)
  %172 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %173 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @destroy_workqueue(i64 %174)
  br label %176

176:                                              ; preds = %167, %162
  %177 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %178 = call i32 @cached_dev_put(%struct.cached_dev* %177)
  %179 = call i32 (...) @wait_for_kthread_stop()
  ret i32 0
}

declare dso_local i32 @bch_ratelimit_reset(i32*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @refill_dirty(%struct.cached_dev*) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @SET_BDEV_STATE(i32*, i32) #1

declare dso_local i32 @bch_write_bdev_super(%struct.cached_dev*, i32*) #1

declare dso_local i32 @force_wake_up_gc(%struct.cache_set*) #1

declare dso_local i32 @read_dirty(%struct.cached_dev*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @cached_dev_put(%struct.cached_dev*) #1

declare dso_local i32 @wait_for_kthread_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
