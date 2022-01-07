; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_writev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { %struct.qib_pportdata*, %struct.qib_devdata* }
%struct.qib_pportdata = type { i64 }
%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qib_user_sdma_queue = type { i64, i32, i32, i64 }
%struct.iovec = type { i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_user_sdma_writev(%struct.qib_ctxtdata* %0, %struct.qib_user_sdma_queue* %1, %struct.iovec* %2, i64 %3) #0 {
  %5 = alloca %struct.qib_ctxtdata*, align 8
  %6 = alloca %struct.qib_user_sdma_queue*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qib_devdata*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.list_head, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %5, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %6, align 8
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %17 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %16, i32 0, i32 1
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %17, align 8
  store %struct.qib_devdata* %18, %struct.qib_devdata** %9, align 8
  %19 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %5, align 8
  %20 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %19, i32 0, i32 0
  %21 = load %struct.qib_pportdata*, %struct.qib_pportdata** %20, align 8
  store %struct.qib_pportdata* %21, %struct.qib_pportdata** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %22 = call i32 @INIT_LIST_HEAD(%struct.list_head* %12)
  %23 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %24 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %27 = call i32 @qib_sdma_running(%struct.qib_pportdata* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %113

30:                                               ; preds = %4
  %31 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %32 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %35 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %40 = call i32 @qib_user_sdma_hwqueue_clean(%struct.qib_pportdata* %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %43 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %48 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %49 = call i32 @qib_user_sdma_queue_clean(%struct.qib_pportdata* %47, %struct.qib_user_sdma_queue* %48)
  br label %50

50:                                               ; preds = %46, %41
  br label %51

51:                                               ; preds = %111, %50
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %112

54:                                               ; preds = %51
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %56 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %57 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %58 = load %struct.iovec*, %struct.iovec** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @qib_user_sdma_queue_pkts(%struct.qib_devdata* %55, %struct.qib_pportdata* %56, %struct.qib_user_sdma_queue* %57, %struct.iovec* %58, i64 %59, %struct.list_head* %12, i32* %14, i32* %15)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %113

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %8, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.iovec*, %struct.iovec** %7, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds %struct.iovec, %struct.iovec* %70, i64 %71
  store %struct.iovec* %72, %struct.iovec** %7, align 8
  br label %73

73:                                               ; preds = %64
  %74 = call i32 @list_empty(%struct.list_head* %12)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %111, label %76

76:                                               ; preds = %73
  %77 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %78 = call i32 @qib_sdma_descq_freecnt(%struct.qib_pportdata* %77)
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %83 = call i32 @qib_user_sdma_hwqueue_clean(%struct.qib_pportdata* %82)
  %84 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %85 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %90 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %91 = call i32 @qib_user_sdma_queue_clean(%struct.qib_pportdata* %89, %struct.qib_user_sdma_queue* %90)
  br label %92

92:                                               ; preds = %88, %81
  br label %93

93:                                               ; preds = %92, %76
  %94 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %95 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @qib_user_sdma_push_pkts(%struct.qib_pportdata* %94, %struct.qib_user_sdma_queue* %95, %struct.list_head* %12, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %113

101:                                              ; preds = %93
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %107 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %110, %73
  br label %51

112:                                              ; preds = %51
  br label %113

113:                                              ; preds = %112, %100, %63, %29
  %114 = call i32 @list_empty(%struct.list_head* %12)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %9, align 8
  %118 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %122 = call i32 @qib_user_sdma_free_pkt_list(i32* %120, %struct.qib_user_sdma_queue* %121, %struct.list_head* %12)
  br label %123

123:                                              ; preds = %116, %113
  %124 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %125 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %124, i32 0, i32 2
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  br label %133

131:                                              ; preds = %123
  %132 = load i32, i32* %13, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  ret i32 %134
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qib_sdma_running(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_user_sdma_hwqueue_clean(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_user_sdma_queue_clean(%struct.qib_pportdata*, %struct.qib_user_sdma_queue*) #1

declare dso_local i32 @qib_user_sdma_queue_pkts(%struct.qib_devdata*, %struct.qib_pportdata*, %struct.qib_user_sdma_queue*, %struct.iovec*, i64, %struct.list_head*, i32*, i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @qib_sdma_descq_freecnt(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_user_sdma_push_pkts(%struct.qib_pportdata*, %struct.qib_user_sdma_queue*, %struct.list_head*, i32) #1

declare dso_local i32 @qib_user_sdma_free_pkt_list(i32*, %struct.qib_user_sdma_queue*, %struct.list_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
