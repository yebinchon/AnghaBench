; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_stripe_write_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_stripe_write_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { %struct.ppl_io_unit* }
%struct.ppl_io_unit = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppl_stripe_write_finished(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.ppl_io_unit*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %4 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %5 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %4, i32 0, i32 0
  %6 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %5, align 8
  store %struct.ppl_io_unit* %6, %struct.ppl_io_unit** %3, align 8
  %7 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %8 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %7, i32 0, i32 0
  store %struct.ppl_io_unit* null, %struct.ppl_io_unit** %8, align 8
  %9 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %3, align 8
  %10 = icmp ne %struct.ppl_io_unit* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %3, align 8
  %13 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %12, i32 0, i32 1
  %14 = call i64 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %3, align 8
  %18 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %3, align 8
  %25 = call i32 @ppl_do_flush(%struct.ppl_io_unit* %24)
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %3, align 8
  %28 = call i32 @ppl_io_unit_finished(%struct.ppl_io_unit* %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %11, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @ppl_do_flush(%struct.ppl_io_unit*) #1

declare dso_local i32 @ppl_io_unit_finished(%struct.ppl_io_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
