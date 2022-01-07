; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_set_pool_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_set_pool_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32, %struct.TYPE_7__, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.pool_c* }
%struct.pool_c = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@no_space_timeout_secs = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"%s: unable to switch pool to write mode until repaired.\00", align 1
@process_bio_fail = common dso_local global i8* null, align 8
@process_cell_fail = common dso_local global i8* null, align 8
@process_prepared_mapping_fail = common dso_local global i8* null, align 8
@process_prepared_discard_fail = common dso_local global i32 0, align 4
@process_bio_read_only = common dso_local global i8* null, align 8
@process_bio_success = common dso_local global i8* null, align 8
@process_cell_read_only = common dso_local global i8* null, align 8
@process_cell_success = common dso_local global i8* null, align 8
@process_prepared_discard_success = common dso_local global i32 0, align 4
@process_discard_bio = common dso_local global i8* null, align 8
@process_prepared_mapping = common dso_local global i8* null, align 8
@process_bio = common dso_local global i8* null, align 8
@process_cell = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*, i32)* @set_pool_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_pool_mode(%struct.pool* %0, i32 %1) #0 {
  %3 = alloca %struct.pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pool_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.pool* %0, %struct.pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pool*, %struct.pool** %3, align 8
  %10 = getelementptr inbounds %struct.pool, %struct.pool* %9, i32 0, i32 12
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.pool_c*, %struct.pool_c** %12, align 8
  store %struct.pool_c* %13, %struct.pool_c** %5, align 8
  %14 = load %struct.pool*, %struct.pool** %3, align 8
  %15 = getelementptr inbounds %struct.pool, %struct.pool* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dm_pool_metadata_needs_check(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.pool*, %struct.pool** %3, align 8
  %19 = call i32 @get_pool_mode(%struct.pool* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @no_space_timeout_secs, align 4
  %21 = call i64 @READ_ONCE(i32 %20)
  %22 = load i64, i64* @HZ, align 8
  %23 = mul i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %42

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.pool*, %struct.pool** %3, align 8
  %31 = getelementptr inbounds %struct.pool, %struct.pool* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dm_device_name(i32 %32)
  %34 = call i32 @DMERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %29
  store i32 129, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %38
  br label %42

42:                                               ; preds = %41, %26, %2
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 132
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32, i32* %4, align 4
  switch i32 %48, label %168 [
    i32 132, label %49
    i32 130, label %74
    i32 129, label %74
    i32 131, label %99
    i32 128, label %133
  ]

49:                                               ; preds = %47
  %50 = load %struct.pool*, %struct.pool** %3, align 8
  %51 = getelementptr inbounds %struct.pool, %struct.pool* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dm_pool_metadata_read_only(i32 %52)
  %54 = load i8*, i8** @process_bio_fail, align 8
  %55 = load %struct.pool*, %struct.pool** %3, align 8
  %56 = getelementptr inbounds %struct.pool, %struct.pool* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @process_bio_fail, align 8
  %58 = load %struct.pool*, %struct.pool** %3, align 8
  %59 = getelementptr inbounds %struct.pool, %struct.pool* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** @process_cell_fail, align 8
  %61 = load %struct.pool*, %struct.pool** %3, align 8
  %62 = getelementptr inbounds %struct.pool, %struct.pool* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @process_cell_fail, align 8
  %64 = load %struct.pool*, %struct.pool** %3, align 8
  %65 = getelementptr inbounds %struct.pool, %struct.pool* %64, i32 0, i32 10
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @process_prepared_mapping_fail, align 8
  %67 = load %struct.pool*, %struct.pool** %3, align 8
  %68 = getelementptr inbounds %struct.pool, %struct.pool* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @process_prepared_discard_fail, align 4
  %70 = load %struct.pool*, %struct.pool** %3, align 8
  %71 = getelementptr inbounds %struct.pool, %struct.pool* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 4
  %72 = load %struct.pool*, %struct.pool** %3, align 8
  %73 = call i32 @error_retry_list(%struct.pool* %72)
  br label %168

74:                                               ; preds = %47, %47
  %75 = load %struct.pool*, %struct.pool** %3, align 8
  %76 = getelementptr inbounds %struct.pool, %struct.pool* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @dm_pool_metadata_read_only(i32 %77)
  %79 = load i8*, i8** @process_bio_read_only, align 8
  %80 = load %struct.pool*, %struct.pool** %3, align 8
  %81 = getelementptr inbounds %struct.pool, %struct.pool* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @process_bio_success, align 8
  %83 = load %struct.pool*, %struct.pool** %3, align 8
  %84 = getelementptr inbounds %struct.pool, %struct.pool* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @process_cell_read_only, align 8
  %86 = load %struct.pool*, %struct.pool** %3, align 8
  %87 = getelementptr inbounds %struct.pool, %struct.pool* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** @process_cell_success, align 8
  %89 = load %struct.pool*, %struct.pool** %3, align 8
  %90 = getelementptr inbounds %struct.pool, %struct.pool* %89, i32 0, i32 10
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @process_prepared_mapping_fail, align 8
  %92 = load %struct.pool*, %struct.pool** %3, align 8
  %93 = getelementptr inbounds %struct.pool, %struct.pool* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @process_prepared_discard_success, align 4
  %95 = load %struct.pool*, %struct.pool** %3, align 8
  %96 = getelementptr inbounds %struct.pool, %struct.pool* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load %struct.pool*, %struct.pool** %3, align 8
  %98 = call i32 @error_retry_list(%struct.pool* %97)
  br label %168

99:                                               ; preds = %47
  %100 = load %struct.pool*, %struct.pool** %3, align 8
  %101 = getelementptr inbounds %struct.pool, %struct.pool* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load i8*, i8** @process_bio_read_only, align 8
  %103 = load %struct.pool*, %struct.pool** %3, align 8
  %104 = getelementptr inbounds %struct.pool, %struct.pool* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** @process_discard_bio, align 8
  %106 = load %struct.pool*, %struct.pool** %3, align 8
  %107 = getelementptr inbounds %struct.pool, %struct.pool* %106, i32 0, i32 4
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @process_cell_read_only, align 8
  %109 = load %struct.pool*, %struct.pool** %3, align 8
  %110 = getelementptr inbounds %struct.pool, %struct.pool* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @process_prepared_mapping, align 8
  %112 = load %struct.pool*, %struct.pool** %3, align 8
  %113 = getelementptr inbounds %struct.pool, %struct.pool* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.pool*, %struct.pool** %3, align 8
  %115 = call i32 @set_discard_callbacks(%struct.pool* %114)
  %116 = load %struct.pool*, %struct.pool** %3, align 8
  %117 = getelementptr inbounds %struct.pool, %struct.pool* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %99
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load %struct.pool*, %struct.pool** %3, align 8
  %126 = getelementptr inbounds %struct.pool, %struct.pool* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.pool*, %struct.pool** %3, align 8
  %129 = getelementptr inbounds %struct.pool, %struct.pool* %128, i32 0, i32 7
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @queue_delayed_work(i32 %127, i32* %129, i64 %130)
  br label %132

132:                                              ; preds = %124, %121, %99
  br label %168

133:                                              ; preds = %47
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 131
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.pool*, %struct.pool** %3, align 8
  %138 = getelementptr inbounds %struct.pool, %struct.pool* %137, i32 0, i32 7
  %139 = call i32 @cancel_delayed_work_sync(i32* %138)
  br label %140

140:                                              ; preds = %136, %133
  %141 = load %struct.pool*, %struct.pool** %3, align 8
  %142 = getelementptr inbounds %struct.pool, %struct.pool* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  %143 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %144 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.pool*, %struct.pool** %3, align 8
  %148 = getelementptr inbounds %struct.pool, %struct.pool* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load %struct.pool*, %struct.pool** %3, align 8
  %151 = getelementptr inbounds %struct.pool, %struct.pool* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @dm_pool_metadata_read_write(i32 %152)
  %154 = load i8*, i8** @process_bio, align 8
  %155 = load %struct.pool*, %struct.pool** %3, align 8
  %156 = getelementptr inbounds %struct.pool, %struct.pool* %155, i32 0, i32 5
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** @process_discard_bio, align 8
  %158 = load %struct.pool*, %struct.pool** %3, align 8
  %159 = getelementptr inbounds %struct.pool, %struct.pool* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** @process_cell, align 8
  %161 = load %struct.pool*, %struct.pool** %3, align 8
  %162 = getelementptr inbounds %struct.pool, %struct.pool* %161, i32 0, i32 3
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** @process_prepared_mapping, align 8
  %164 = load %struct.pool*, %struct.pool** %3, align 8
  %165 = getelementptr inbounds %struct.pool, %struct.pool* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load %struct.pool*, %struct.pool** %3, align 8
  %167 = call i32 @set_discard_callbacks(%struct.pool* %166)
  br label %168

168:                                              ; preds = %47, %140, %132, %74, %49
  %169 = load i32, i32* %4, align 4
  %170 = load %struct.pool*, %struct.pool** %3, align 8
  %171 = getelementptr inbounds %struct.pool, %struct.pool* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 4
  %173 = load i32, i32* %4, align 4
  %174 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %175 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %4, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %168
  %181 = load %struct.pool*, %struct.pool** %3, align 8
  %182 = call i32 @notify_of_pool_mode_change(%struct.pool* %181)
  br label %183

183:                                              ; preds = %180, %168
  ret void
}

declare dso_local i32 @dm_pool_metadata_needs_check(i32) #1

declare dso_local i32 @get_pool_mode(%struct.pool*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @DMERR(i8*, i32) #1

declare dso_local i32 @dm_device_name(i32) #1

declare dso_local i32 @dm_pool_metadata_read_only(i32) #1

declare dso_local i32 @error_retry_list(%struct.pool*) #1

declare dso_local i32 @set_discard_callbacks(%struct.pool*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @dm_pool_metadata_read_write(i32) #1

declare dso_local i32 @notify_of_pool_mode_change(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
