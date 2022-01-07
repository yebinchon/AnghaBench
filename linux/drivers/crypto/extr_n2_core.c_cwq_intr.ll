; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_cwq_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_cwq_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_queue = type { i64, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"CPU[%d]: Got CWQ interrupt for qhdl[%lx]\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"CPU[%d]: CWQ gethead[%lx] hv_ret[%lu]\0A\00", align 1
@HV_EOK = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cwq_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cwq_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.spu_queue*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.spu_queue*
  store %struct.spu_queue* %10, %struct.spu_queue** %8, align 8
  %11 = call i32 (...) @smp_processor_id()
  %12 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %13 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 (i8*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %15)
  %17 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %18 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %21 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @sun4v_ncs_gethead(i32 %22, i64* %6)
  store i64 %23, i64* %7, align 8
  %24 = call i32 (...) @smp_processor_id()
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 (i8*, i32, i64, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %24, i64 %25, i64 %26)
  %28 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %29 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %36, %2
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @spu_next_offset(%struct.spu_queue* %37, i64 %38)
  store i64 %39, i64* %5, align 8
  br label %31

40:                                               ; preds = %31
  %41 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %42 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @sun4v_ncs_sethead_marker(i32 %43, i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @HV_EOK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %52 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %40
  %54 = load %struct.spu_queue*, %struct.spu_queue** %8, align 8
  %55 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %54, i32 0, i32 1
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %57
}

declare dso_local i32 @pr_err(i8*, i32, i64, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @sun4v_ncs_gethead(i32, i64*) #1

declare dso_local i64 @spu_next_offset(%struct.spu_queue*, i64) #1

declare dso_local i64 @sun4v_ncs_sethead_marker(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
