; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_complete_subctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_complete_subctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_filedata = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@HFI1_CTXT_BASE_UNINIT = common dso_local global i32 0, align 4
@HFI1_CTXT_BASE_FAILED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_filedata*)* @complete_subctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @complete_subctxt(%struct.hfi1_filedata* %0) #0 {
  %2 = alloca %struct.hfi1_filedata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.hfi1_filedata* %0, %struct.hfi1_filedata** %2, align 8
  %5 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HFI1_CTXT_BASE_UNINIT, align 4
  %11 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = call i64 @test_bit(i32 %10, i32* %14)
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @wait_event_interruptible(i32 %9, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @HFI1_CTXT_BASE_FAILED, align 4
  %21 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %22 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = call i64 @test_bit(i32 %20, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  %34 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %35 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @hfi1_get_proc_affinity(i32 %38)
  %40 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %41 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %43 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %44 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @init_user_ctxt(%struct.hfi1_filedata* %42, %struct.TYPE_5__* %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %33, %30
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %52 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %58 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %61 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @__clear_bit(i32 %59, i32 %64)
  %66 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %67 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %73 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = call i32 @hfi1_rcd_put(%struct.TYPE_5__* %74)
  %76 = load %struct.hfi1_filedata*, %struct.hfi1_filedata** %2, align 8
  %77 = getelementptr inbounds %struct.hfi1_filedata, %struct.hfi1_filedata* %76, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %77, align 8
  br label %78

78:                                               ; preds = %50, %47
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hfi1_get_proc_affinity(i32) #1

declare dso_local i32 @init_user_ctxt(%struct.hfi1_filedata*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hfi1_rcd_put(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
