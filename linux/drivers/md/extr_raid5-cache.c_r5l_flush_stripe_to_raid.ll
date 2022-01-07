; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_flush_stripe_to_raid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_flush_stripe_to_raid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@r5l_log_flush_endio = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r5l_flush_stripe_to_raid(%struct.r5l_log* %0) #0 {
  %2 = alloca %struct.r5l_log*, align 8
  %3 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %2, align 8
  %4 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %5 = icmp ne %struct.r5l_log* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %8 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %67

12:                                               ; preds = %6
  %13 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %14 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %13, i32 0, i32 2
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %17 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %16, i32 0, i32 3
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %22 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %21, i32 0, i32 2
  %23 = call i32 @spin_unlock_irq(i32* %22)
  br label %67

24:                                               ; preds = %12
  %25 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %26 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %25, i32 0, i32 4
  %27 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %28 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %27, i32 0, i32 3
  %29 = call i32 @list_splice_tail_init(i32* %26, i32* %28)
  %30 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %31 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %30, i32 0, i32 3
  %32 = call i32 @list_empty(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  %36 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %37 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %36, i32 0, i32 2
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %24
  br label %67

42:                                               ; preds = %24
  %43 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %44 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %43, i32 0, i32 0
  %45 = call i32 @bio_reset(%struct.TYPE_6__* %44)
  %46 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %47 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %46, i32 0, i32 0
  %48 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %49 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bio_set_dev(%struct.TYPE_6__* %47, i32 %52)
  %54 = load i32, i32* @r5l_log_flush_endio, align 4
  %55 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %56 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @REQ_OP_WRITE, align 4
  %59 = load i32, i32* @REQ_PREFLUSH, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %62 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.r5l_log*, %struct.r5l_log** %2, align 8
  %65 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %64, i32 0, i32 0
  %66 = call i32 @submit_bio(%struct.TYPE_6__* %65)
  br label %67

67:                                               ; preds = %42, %41, %20, %11
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @bio_reset(%struct.TYPE_6__*) #1

declare dso_local i32 @bio_set_dev(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @submit_bio(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
