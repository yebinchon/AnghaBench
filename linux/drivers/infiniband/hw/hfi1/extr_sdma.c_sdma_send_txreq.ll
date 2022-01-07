; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_send_txreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_send_txreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.iowait_work = type { i32 }
%struct.sdma_txreq = type { i32, i64, i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@system_highpri_wq = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdma_send_txreq(%struct.sdma_engine* %0, %struct.iowait_work* %1, %struct.sdma_txreq* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdma_engine*, align 8
  %7 = alloca %struct.iowait_work*, align 8
  %8 = alloca %struct.sdma_txreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.sdma_engine* %0, %struct.sdma_engine** %6, align 8
  store %struct.iowait_work* %1, %struct.iowait_work** %7, align 8
  store %struct.sdma_txreq* %2, %struct.sdma_txreq** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %14 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %122

21:                                               ; preds = %4
  %22 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %23 = call i32 @iowait_ioww_to_iow(%struct.iowait_work* %22)
  %24 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %25 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %27 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %26, i32 0, i32 7
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  br label %30

30:                                               ; preds = %116, %21
  %31 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %32 = call i32 @__sdma_running(%struct.sdma_engine* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %71

39:                                               ; preds = %30
  %40 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %41 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %44 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %106

51:                                               ; preds = %39
  %52 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %53 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %54 = call i32 @submit_tx(%struct.sdma_engine* %52, %struct.sdma_txreq* %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %56 = icmp ne %struct.iowait_work* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %59 = call i32 @iowait_ioww_to_iow(%struct.iowait_work* %58)
  %60 = call i32 @iowait_sdma_inc(i32 %59)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @sdma_update_tail(%struct.sdma_engine* %62, i32 %63)
  br label %65

65:                                               ; preds = %117, %78, %61
  %66 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %67 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %66, i32 0, i32 7
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %122

71:                                               ; preds = %38
  %72 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %73 = icmp ne %struct.iowait_work* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %76 = call i32 @iowait_ioww_to_iow(%struct.iowait_work* %75)
  %77 = call i32 @iowait_sdma_inc(i32 %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %80 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %82 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %81, i32 0, i32 4
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %85 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %84, i32 0, i32 2
  %86 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %87 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %86, i32 0, i32 5
  %88 = call i32 @list_add_tail(i32* %85, i32* %87)
  %89 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %90 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %89, i32 0, i32 4
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %93 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %94 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @iowait_inc_wait_count(%struct.iowait_work* %92, i64 %95)
  %97 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %98 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @system_highpri_wq, align 4
  %101 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %102 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %101, i32 0, i32 2
  %103 = call i32 @queue_work_on(i32 %99, i32 %100, i32* %102)
  %104 = load i32, i32* @ECOMM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %10, align 4
  br label %65

106:                                              ; preds = %50
  %107 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %108 = load %struct.iowait_work*, %struct.iowait_work** %7, align 8
  %109 = load %struct.sdma_txreq*, %struct.sdma_txreq** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @sdma_check_progress(%struct.sdma_engine* %107, %struct.iowait_work* %108, %struct.sdma_txreq* %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  store i32 0, i32* %10, align 4
  br label %30

117:                                              ; preds = %106
  %118 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %119 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %65

122:                                              ; preds = %65, %18
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iowait_ioww_to_iow(%struct.iowait_work*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__sdma_running(%struct.sdma_engine*) #1

declare dso_local i32 @submit_tx(%struct.sdma_engine*, %struct.sdma_txreq*) #1

declare dso_local i32 @iowait_sdma_inc(i32) #1

declare dso_local i32 @sdma_update_tail(%struct.sdma_engine*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iowait_inc_wait_count(%struct.iowait_work*, i64) #1

declare dso_local i32 @queue_work_on(i32, i32, i32*) #1

declare dso_local i32 @sdma_check_progress(%struct.sdma_engine*, %struct.iowait_work*, %struct.sdma_txreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
