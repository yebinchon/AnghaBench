; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_writes_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_writes_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, i32, i32, i32, %struct.log_writes_c*, i32 }
%struct.log_writes_c = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dm_arg_set = type { i32, i8** }

@.str = private unnamed_addr constant [23 x i8] c"Invalid argument count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot allocate context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Device lookup failed\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Log device lookup failed\00", align 1
@log_writes_kthread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"log-write\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Couldn't alloc kthread\00", align 1
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @log_writes_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_writes_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.log_writes_c*, align 8
  %9 = alloca %struct.dm_arg_set, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %9, i32 0, i32 1
  store i8** %15, i8*** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %21 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %167

24:                                               ; preds = %3
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.log_writes_c* @kzalloc(i32 80, i32 %25)
  store %struct.log_writes_c* %26, %struct.log_writes_c** %8, align 8
  %27 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %28 = icmp ne %struct.log_writes_c* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %31 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %167

34:                                               ; preds = %24
  %35 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %36 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %35, i32 0, i32 15
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %39 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %38, i32 0, i32 14
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %42 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %41, i32 0, i32 13
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %45 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %44, i32 0, i32 12
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %48 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %47, i32 0, i32 11
  %49 = call i32 @init_completion(i32* %48)
  %50 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %51 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %50, i32 0, i32 10
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  %53 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %54 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %53, i32 0, i32 9
  %55 = call i32 @atomic_set(i32* %54, i32 0)
  %56 = call i8* @dm_shift_arg(%struct.dm_arg_set* %9)
  store i8* %56, i8** %10, align 8
  %57 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %60 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dm_table_get_mode(i32 %61)
  %63 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %64 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %63, i32 0, i32 6
  %65 = call i32 @dm_get_device(%struct.dm_target* %57, i8* %58, i32 %62, %struct.TYPE_3__** %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %34
  %69 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %70 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %70, align 8
  br label %163

71:                                               ; preds = %34
  %72 = call i8* @dm_shift_arg(%struct.dm_arg_set* %9)
  store i8* %72, i8** %11, align 8
  %73 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %76 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dm_table_get_mode(i32 %77)
  %79 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %80 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %79, i32 0, i32 5
  %81 = call i32 @dm_get_device(%struct.dm_target* %73, i8* %74, i32 %78, %struct.TYPE_3__** %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %71
  %85 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %86 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %86, align 8
  %87 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %88 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %89 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %88, i32 0, i32 6
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = call i32 @dm_put_device(%struct.dm_target* %87, %struct.TYPE_3__* %90)
  br label %163

92:                                               ; preds = %71
  %93 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %94 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %93, i32 0, i32 6
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bdev_logical_block_size(i32 %97)
  %99 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %100 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %102 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ilog2(i32 %103)
  %105 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %106 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %105, i32 0, i32 8
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @log_writes_kthread, align 4
  %108 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %109 = call i32 @kthread_run(i32 %107, %struct.log_writes_c* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %110 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %111 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %113 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @IS_ERR(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %92
  %118 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %119 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @PTR_ERR(i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %123 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %122, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %123, align 8
  %124 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %125 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %126 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %125, i32 0, i32 6
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = call i32 @dm_put_device(%struct.dm_target* %124, %struct.TYPE_3__* %127)
  %129 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %130 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %131 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %130, i32 0, i32 5
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = call i32 @dm_put_device(%struct.dm_target* %129, %struct.TYPE_3__* %132)
  br label %163

134:                                              ; preds = %92
  %135 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %136 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SECTOR_SHIFT, align 4
  %139 = ashr i32 %137, %138
  %140 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %141 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %143 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %142, i32 0, i32 2
  store i32 1, i32* %143, align 8
  %144 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %145 = call i32 @logdev_last_sector(%struct.log_writes_c* %144)
  %146 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %147 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 8
  %148 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %149 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %148, i32 0, i32 3
  store i32 1, i32* %149, align 4
  %150 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %151 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %150, i32 0, i32 1
  store i32 1, i32* %151, align 8
  %152 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %153 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %152, i32 0, i32 2
  store i32 1, i32* %153, align 4
  %154 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %155 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %154, i32 0, i32 3
  store i32 1, i32* %155, align 8
  %156 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %157 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %156, i32 0, i32 4
  store i32 1, i32* %157, align 4
  %158 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %159 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %158, i32 0, i32 5
  store i32 4, i32* %159, align 8
  %160 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %161 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %162 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %161, i32 0, i32 6
  store %struct.log_writes_c* %160, %struct.log_writes_c** %162, align 8
  store i32 0, i32* %4, align 4
  br label %167

163:                                              ; preds = %117, %84, %68
  %164 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %165 = call i32 @kfree(%struct.log_writes_c* %164)
  %166 = load i32, i32* %12, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %163, %134, %29, %19
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.log_writes_c* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, %struct.TYPE_3__**) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.TYPE_3__*) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @kthread_run(i32, %struct.log_writes_c*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @logdev_last_sector(%struct.log_writes_c*) #1

declare dso_local i32 @kfree(%struct.log_writes_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
