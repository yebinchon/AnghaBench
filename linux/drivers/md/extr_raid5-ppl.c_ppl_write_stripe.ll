; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_write_stripe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_write_stripe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { %struct.ppl_conf* }
%struct.ppl_conf = type { i32, i32, %struct.ppl_log* }
%struct.ppl_log = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.stripe_head = type { i64, i32, i32, i32, %struct.TYPE_3__*, i32, %struct.ppl_io_unit* }
%struct.TYPE_3__ = type { i32 }
%struct.ppl_io_unit = type { i32 }

@STRIPE_SYNCING = common dso_local global i32 0, align 4
@R5_Wantwrite = common dso_local global i32 0, align 4
@R5_Insync = common dso_local global i32 0, align 4
@STRIPE_LOG_TRAPPED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@STRIPE_DELAYED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppl_write_stripe(%struct.r5conf* %0, %struct.stripe_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca %struct.stripe_head*, align 8
  %6 = alloca %struct.ppl_conf*, align 8
  %7 = alloca %struct.ppl_io_unit*, align 8
  %8 = alloca %struct.ppl_log*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %4, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %5, align 8
  %9 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %10 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %9, i32 0, i32 0
  %11 = load %struct.ppl_conf*, %struct.ppl_conf** %10, align 8
  store %struct.ppl_conf* %11, %struct.ppl_conf** %6, align 8
  %12 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %13 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %12, i32 0, i32 6
  %14 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %13, align 8
  store %struct.ppl_io_unit* %14, %struct.ppl_io_unit** %7, align 8
  %15 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %16 = icmp ne %struct.ppl_io_unit* %15, null
  br i1 %16, label %52, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @STRIPE_SYNCING, align 4
  %19 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %20 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %19, i32 0, i32 3
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %17
  %24 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %25 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load i32, i32* @R5_Wantwrite, align 4
  %30 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %31 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %34 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i64 @test_bit(i32 %29, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load i32, i32* @R5_Insync, align 4
  %42 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %43 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %46 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i64 @test_bit(i32 %41, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %40, %28, %23, %17, %2
  %53 = load i32, i32* @STRIPE_LOG_TRAPPED, align 4
  %54 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %55 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %54, i32 0, i32 3
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %120

59:                                               ; preds = %40
  %60 = load %struct.ppl_conf*, %struct.ppl_conf** %6, align 8
  %61 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %60, i32 0, i32 2
  %62 = load %struct.ppl_log*, %struct.ppl_log** %61, align 8
  %63 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %64 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %62, i64 %65
  store %struct.ppl_log* %66, %struct.ppl_log** %8, align 8
  %67 = load %struct.ppl_log*, %struct.ppl_log** %8, align 8
  %68 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.ppl_log*, %struct.ppl_log** %8, align 8
  %71 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %59
  %75 = load i32, i32* @Faulty, align 4
  %76 = load %struct.ppl_log*, %struct.ppl_log** %8, align 8
  %77 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i64 @test_bit(i32 %75, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74, %59
  %83 = load %struct.ppl_log*, %struct.ppl_log** %8, align 8
  %84 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* @EAGAIN, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %120

88:                                               ; preds = %74
  %89 = load i32, i32* @STRIPE_LOG_TRAPPED, align 4
  %90 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %91 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %90, i32 0, i32 3
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  %93 = load i32, i32* @STRIPE_DELAYED, align 4
  %94 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %95 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %94, i32 0, i32 3
  %96 = call i32 @clear_bit(i32 %93, i32* %95)
  %97 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %98 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %97, i32 0, i32 2
  %99 = call i32 @atomic_inc(i32* %98)
  %100 = load %struct.ppl_log*, %struct.ppl_log** %8, align 8
  %101 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %102 = call i64 @ppl_log_stripe(%struct.ppl_log* %100, %struct.stripe_head* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %88
  %105 = load %struct.ppl_conf*, %struct.ppl_conf** %6, align 8
  %106 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %105, i32 0, i32 0
  %107 = call i32 @spin_lock_irq(i32* %106)
  %108 = load %struct.stripe_head*, %struct.stripe_head** %5, align 8
  %109 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %108, i32 0, i32 1
  %110 = load %struct.ppl_conf*, %struct.ppl_conf** %6, align 8
  %111 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %110, i32 0, i32 1
  %112 = call i32 @list_add_tail(i32* %109, i32* %111)
  %113 = load %struct.ppl_conf*, %struct.ppl_conf** %6, align 8
  %114 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock_irq(i32* %114)
  br label %116

116:                                              ; preds = %104, %88
  %117 = load %struct.ppl_log*, %struct.ppl_log** %8, align 8
  %118 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %82, %52
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @ppl_log_stripe(%struct.ppl_log*, %struct.stripe_head*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
