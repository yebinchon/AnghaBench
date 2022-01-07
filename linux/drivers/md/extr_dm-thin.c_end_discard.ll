; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_end_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_end_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discard_op = type { %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@REQ_OP_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.discard_op*, i32)* @end_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_discard(%struct.discard_op* %0, i32 %1) #0 {
  %3 = alloca %struct.discard_op*, align 8
  %4 = alloca i32, align 4
  store %struct.discard_op* %0, %struct.discard_op** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.discard_op*, %struct.discard_op** %3, align 8
  %6 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.discard_op*, %struct.discard_op** %3, align 8
  %11 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.discard_op*, %struct.discard_op** %3, align 8
  %14 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @bio_chain(i64 %12, %struct.TYPE_3__* %15)
  %17 = load %struct.discard_op*, %struct.discard_op** %3, align 8
  %18 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @REQ_OP_DISCARD, align 4
  %21 = call i32 @bio_set_op_attrs(i64 %19, i32 %20, i32 0)
  %22 = load %struct.discard_op*, %struct.discard_op** %3, align 8
  %23 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @submit_bio(i64 %24)
  br label %26

26:                                               ; preds = %9, %2
  %27 = load %struct.discard_op*, %struct.discard_op** %3, align 8
  %28 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %27, i32 0, i32 1
  %29 = call i32 @blk_finish_plug(i32* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.discard_op*, %struct.discard_op** %3, align 8
  %34 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @errno_to_blk_status(i32 %40)
  %42 = load %struct.discard_op*, %struct.discard_op** %3, align 8
  %43 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %32, %26
  %47 = load %struct.discard_op*, %struct.discard_op** %3, align 8
  %48 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @bio_endio(%struct.TYPE_3__* %49)
  ret void
}

declare dso_local i32 @bio_chain(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @bio_set_op_attrs(i64, i32, i32) #1

declare dso_local i32 @submit_bio(i64) #1

declare dso_local i32 @blk_finish_plug(i32*) #1

declare dso_local i64 @errno_to_blk_status(i32) #1

declare dso_local i32 @bio_endio(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
