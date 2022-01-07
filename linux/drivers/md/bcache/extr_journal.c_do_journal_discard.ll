; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_journal.c_do_journal_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_journal.c_do_journal_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__, i32, %struct.journal_device }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.journal_device = type { i32, i32, i32, i32, %struct.bio }
%struct.bio = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@REQ_OP_DISCARD = common dso_local global i32 0, align 4
@journal_discard_endio = common dso_local global i32 0, align 4
@journal_discard_work = common dso_local global i32 0, align 4
@bch_journal_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*)* @do_journal_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_journal_discard(%struct.cache* %0) #0 {
  %2 = alloca %struct.cache*, align 8
  %3 = alloca %struct.journal_device*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.cache* %0, %struct.cache** %2, align 8
  %5 = load %struct.cache*, %struct.cache** %2, align 8
  %6 = getelementptr inbounds %struct.cache, %struct.cache* %5, i32 0, i32 4
  store %struct.journal_device* %6, %struct.journal_device** %3, align 8
  %7 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %8 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %7, i32 0, i32 4
  store %struct.bio* %8, %struct.bio** %4, align 8
  %9 = load %struct.cache*, %struct.cache** %2, align 8
  %10 = getelementptr inbounds %struct.cache, %struct.cache* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %15 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %18 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %103

19:                                               ; preds = %1
  %20 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %21 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %20, i32 0, i32 3
  %22 = call i32 @atomic_read(i32* %21)
  switch i32 %22, label %103 [
    i32 129, label %23
    i32 130, label %24
    i32 128, label %39
  ]

23:                                               ; preds = %19
  br label %103

24:                                               ; preds = %19
  %25 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %26 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = load %struct.cache*, %struct.cache** %2, align 8
  %30 = getelementptr inbounds %struct.cache, %struct.cache* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = srem i32 %28, %32
  %34 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %35 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %37 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %36, i32 0, i32 3
  %38 = call i32 @atomic_set(i32* %37, i32 128)
  br label %39

39:                                               ; preds = %19, %24
  %40 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %41 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %44 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %103

48:                                               ; preds = %39
  %49 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %50 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %49, i32 0, i32 3
  %51 = call i32 @atomic_set(i32* %50, i32 129)
  %52 = load %struct.bio*, %struct.bio** %4, align 8
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bio_init(%struct.bio* %52, i32 %55, i32 1)
  %57 = load %struct.bio*, %struct.bio** %4, align 8
  %58 = load i32, i32* @REQ_OP_DISCARD, align 4
  %59 = call i32 @bio_set_op_attrs(%struct.bio* %57, i32 %58, i32 0)
  %60 = load %struct.cache*, %struct.cache** %2, align 8
  %61 = getelementptr inbounds %struct.cache, %struct.cache* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load %struct.cache*, %struct.cache** %2, align 8
  %64 = getelementptr inbounds %struct.cache, %struct.cache* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %68 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @bucket_to_sector(%struct.TYPE_6__* %62, i32 %72)
  %74 = load %struct.bio*, %struct.bio** %4, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.bio*, %struct.bio** %4, align 8
  %78 = load %struct.cache*, %struct.cache** %2, align 8
  %79 = getelementptr inbounds %struct.cache, %struct.cache* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bio_set_dev(%struct.bio* %77, i32 %80)
  %82 = load %struct.cache*, %struct.cache** %2, align 8
  %83 = call i32 @bucket_bytes(%struct.cache* %82)
  %84 = load %struct.bio*, %struct.bio** %4, align 8
  %85 = getelementptr inbounds %struct.bio, %struct.bio* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @journal_discard_endio, align 4
  %88 = load %struct.bio*, %struct.bio** %4, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.cache*, %struct.cache** %2, align 8
  %91 = getelementptr inbounds %struct.cache, %struct.cache* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @closure_get(i32* %93)
  %95 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %96 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %95, i32 0, i32 2
  %97 = load i32, i32* @journal_discard_work, align 4
  %98 = call i32 @INIT_WORK(i32* %96, i32 %97)
  %99 = load i32, i32* @bch_journal_wq, align 4
  %100 = load %struct.journal_device*, %struct.journal_device** %3, align 8
  %101 = getelementptr inbounds %struct.journal_device, %struct.journal_device* %100, i32 0, i32 2
  %102 = call i32 @queue_work(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %13, %23, %47, %48, %19
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bio_init(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @bucket_to_sector(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bucket_bytes(%struct.cache*) #1

declare dso_local i32 @closure_get(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
