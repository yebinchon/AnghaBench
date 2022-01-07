; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_push_pkts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_push_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.qib_user_sdma_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_pportdata*, %struct.qib_user_sdma_queue*, %struct.list_head*, i32)* @qib_user_sdma_push_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_user_sdma_push_pkts(%struct.qib_pportdata* %0, %struct.qib_user_sdma_queue* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qib_pportdata*, align 8
  %7 = alloca %struct.qib_user_sdma_queue*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %6, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %12 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ECOMM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %114

24:                                               ; preds = %4
  %25 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %7, align 8
  %26 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %68

31:                                               ; preds = %24
  %32 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %33 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %32, i32 0, i32 1
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %37 = call i32 @__qib_sdma_running(%struct.qib_pportdata* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %31
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %45 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %44, i32 0, i32 1
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* @ECOMM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %114

50:                                               ; preds = %31
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %7, align 8
  %53 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.list_head*, %struct.list_head** %8, align 8
  %57 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %58 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %57, i32 0, i32 2
  %59 = call i32 @list_splice_tail_init(%struct.list_head* %56, %struct.list_head* %58)
  %60 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %61 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %62 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %61, i32 0, i32 2
  %63 = call i32 @qib_user_sdma_send_desc(%struct.qib_pportdata* %60, %struct.list_head* %62)
  %64 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %65 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %64, i32 0, i32 1
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  store i32 0, i32* %5, align 4
  br label %114

68:                                               ; preds = %24
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %7, align 8
  %71 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %108, %68
  %75 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %76 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %75, i32 0, i32 1
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %80 = call i32 @__qib_sdma_running(%struct.qib_pportdata* %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %74
  %87 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %88 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %87, i32 0, i32 1
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = load i32, i32* @ECOMM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %114

93:                                               ; preds = %74
  %94 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %95 = load %struct.list_head*, %struct.list_head** %8, align 8
  %96 = call i32 @qib_user_sdma_send_desc(%struct.qib_pportdata* %94, %struct.list_head* %95)
  %97 = load %struct.list_head*, %struct.list_head** %8, align 8
  %98 = call i32 @list_empty(%struct.list_head* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %102 = call i32 @qib_sdma_make_progress(%struct.qib_pportdata* %101)
  br label %103

103:                                              ; preds = %100, %93
  %104 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %105 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %104, i32 0, i32 1
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  br label %108

108:                                              ; preds = %103
  %109 = load %struct.list_head*, %struct.list_head** %8, align 8
  %110 = call i32 @list_empty(%struct.list_head* %109)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br i1 %112, label %74, label %113

113:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %86, %50, %43, %21
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__qib_sdma_running(%struct.qib_pportdata*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_splice_tail_init(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @qib_user_sdma_send_desc(%struct.qib_pportdata*, %struct.list_head*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @qib_sdma_make_progress(%struct.qib_pportdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
