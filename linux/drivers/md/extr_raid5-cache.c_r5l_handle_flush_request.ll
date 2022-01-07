; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_handle_flush_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_handle_flush_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.bio = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@R5C_JOURNAL_MODE_WRITE_THROUGH = common dso_local global i64 0, align 8
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r5l_handle_flush_request(%struct.r5l_log* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5l_log*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.r5l_log* %0, %struct.r5l_log** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %6 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %7 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @R5C_JOURNAL_MODE_WRITE_THROUGH, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.bio*, %struct.bio** %5, align 8
  %19 = call i32 @bio_endio(%struct.bio* %18)
  store i32 0, i32* %3, align 4
  br label %67

20:                                               ; preds = %11
  %21 = load i32, i32* @REQ_PREFLUSH, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %64

27:                                               ; preds = %2
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %35 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %38 = call i32 @r5l_get_meta(%struct.r5l_log* %37, i32 0)
  %39 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %40 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load %struct.bio*, %struct.bio** %5, align 8
  %44 = call i32 @bio_list_add(i32* %42, %struct.bio* %43)
  %45 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %46 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %50 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %54 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = call i32 @atomic_inc(i32* %56)
  %58 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %59 = call i32 @r5l_submit_current_io(%struct.r5l_log* %58)
  %60 = load %struct.r5l_log*, %struct.r5l_log** %4, align 8
  %61 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  store i32 0, i32* %3, align 4
  br label %67

63:                                               ; preds = %27
  br label %64

64:                                               ; preds = %63, %20
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %33, %17
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @r5l_get_meta(%struct.r5l_log*, i32) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @r5l_submit_current_io(%struct.r5l_log*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
