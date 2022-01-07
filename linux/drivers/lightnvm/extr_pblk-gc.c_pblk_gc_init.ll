; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_gc }
%struct.pblk_gc = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i64, i64, i64, i32 }

@pblk_gc_ts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pblk-gc-ts\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"could not allocate GC main kthread\0A\00", align 1
@pblk_gc_writer_ts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"pblk-gc-writer-ts\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"could not allocate GC writer kthread\0A\00", align 1
@pblk_gc_reader_ts = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"pblk-gc-reader-ts\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"could not allocate GC reader kthread\0A\00", align 1
@pblk_gc_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@GC_TIME_MSECS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"pblk-gc-line-reader-wq\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@WQ_UNBOUND = common dso_local global i32 0, align 4
@PBLK_GC_MAX_READERS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"could not allocate GC line reader workqueue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"pblk-gc-line_wq\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"could not allocate GC reader workqueue\0A\00", align 1
@PBLK_GC_RQ_QD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_gc_init(%struct.pblk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_gc*, align 8
  %5 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %6 = load %struct.pblk*, %struct.pblk** %3, align 8
  %7 = getelementptr inbounds %struct.pblk, %struct.pblk* %6, i32 0, i32 0
  store %struct.pblk_gc* %7, %struct.pblk_gc** %4, align 8
  %8 = load i32, i32* @pblk_gc_ts, align 4
  %9 = load %struct.pblk*, %struct.pblk** %3, align 8
  %10 = call i8* @kthread_create(i32 %8, %struct.pblk* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %12 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %14 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @IS_ERR(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.pblk*, %struct.pblk** %3, align 8
  %20 = call i32 @pblk_err(%struct.pblk* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %22 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %2, align 4
  br label %160

25:                                               ; preds = %1
  %26 = load i32, i32* @pblk_gc_writer_ts, align 4
  %27 = load %struct.pblk*, %struct.pblk** %3, align 8
  %28 = call i8* @kthread_create(i32 %26, %struct.pblk* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %30 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %32 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.pblk*, %struct.pblk** %3, align 8
  %38 = call i32 @pblk_err(%struct.pblk* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %40 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %5, align 4
  br label %154

43:                                               ; preds = %25
  %44 = load i32, i32* @pblk_gc_reader_ts, align 4
  %45 = load %struct.pblk*, %struct.pblk** %3, align 8
  %46 = call i8* @kthread_create(i32 %44, %struct.pblk* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %47 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %48 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %50 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.pblk*, %struct.pblk** %3, align 8
  %56 = call i32 @pblk_err(%struct.pblk* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %58 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  store i32 %60, i32* %5, align 4
  br label %149

61:                                               ; preds = %43
  %62 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %63 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %62, i32 0, i32 17
  %64 = load i32, i32* @pblk_gc_timer, align 4
  %65 = call i32 @timer_setup(i32* %63, i32 %64, i32 0)
  %66 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %67 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %66, i32 0, i32 17
  %68 = load i64, i64* @jiffies, align 8
  %69 = load i32, i32* @GC_TIME_MSECS, align 4
  %70 = call i64 @msecs_to_jiffies(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @mod_timer(i32* %67, i64 %71)
  %73 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %74 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %73, i32 0, i32 16
  store i64 0, i64* %74, align 8
  %75 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %76 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %75, i32 0, i32 15
  store i64 0, i64* %76, align 8
  %77 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %78 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %80 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %79, i32 0, i32 14
  store i64 0, i64* %80, align 8
  %81 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %82 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %81, i32 0, i32 13
  %83 = call i32 @atomic_set(i32* %82, i32 0)
  %84 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %85 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %84, i32 0, i32 12
  %86 = call i32 @atomic_set(i32* %85, i32 0)
  %87 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %88 = load i32, i32* @WQ_UNBOUND, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PBLK_GC_MAX_READERS, align 4
  %91 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %93 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %95 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %61
  %99 = load %struct.pblk*, %struct.pblk** %3, align 8
  %100 = call i32 @pblk_err(%struct.pblk* %99, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %144

103:                                              ; preds = %61
  %104 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %105 = load i32, i32* @WQ_UNBOUND, align 4
  %106 = or i32 %104, %105
  %107 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %106, i32 1)
  %108 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %109 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %108, i32 0, i32 11
  store i8* %107, i8** %109, align 8
  %110 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %111 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %110, i32 0, i32 11
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %103
  %115 = load %struct.pblk*, %struct.pblk** %3, align 8
  %116 = call i32 @pblk_err(%struct.pblk* %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %139

119:                                              ; preds = %103
  %120 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %121 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %120, i32 0, i32 10
  %122 = call i32 @spin_lock_init(i32* %121)
  %123 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %124 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %123, i32 0, i32 9
  %125 = call i32 @spin_lock_init(i32* %124)
  %126 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %127 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %126, i32 0, i32 8
  %128 = call i32 @spin_lock_init(i32* %127)
  %129 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %130 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %129, i32 0, i32 7
  %131 = load i32, i32* @PBLK_GC_RQ_QD, align 4
  %132 = call i32 @sema_init(i32* %130, i32 %131)
  %133 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %134 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %133, i32 0, i32 6
  %135 = call i32 @INIT_LIST_HEAD(i32* %134)
  %136 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %137 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %136, i32 0, i32 5
  %138 = call i32 @INIT_LIST_HEAD(i32* %137)
  store i32 0, i32* %2, align 4
  br label %160

139:                                              ; preds = %114
  %140 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %141 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %140, i32 0, i32 4
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @destroy_workqueue(i8* %142)
  br label %144

144:                                              ; preds = %139, %98
  %145 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %146 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %145, i32 0, i32 3
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @kthread_stop(i8* %147)
  br label %149

149:                                              ; preds = %144, %54
  %150 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %151 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @kthread_stop(i8* %152)
  br label %154

154:                                              ; preds = %149, %36
  %155 = load %struct.pblk_gc*, %struct.pblk_gc** %4, align 8
  %156 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @kthread_stop(i8* %157)
  %159 = load i32, i32* %5, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %154, %119, %18
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i8* @kthread_create(i32, %struct.pblk*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

declare dso_local i32 @kthread_stop(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
