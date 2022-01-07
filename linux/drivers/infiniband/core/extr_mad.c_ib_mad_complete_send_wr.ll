; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_complete_send_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_complete_send_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { i64, i32, i64, i32, %struct.ib_mad_agent_private* }
%struct.ib_mad_agent_private = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, %struct.ib_mad_send_wc*)* }
%struct.ib_mad_send_wc = type { i64 }

@IB_RMPP_RESULT_CONSUMED = common dso_local global i32 0, align 4
@IB_RMPP_RESULT_UNHANDLED = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_RMPP_RESULT_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_send_wr_private*, align 8
  %4 = alloca %struct.ib_mad_send_wc*, align 8
  %5 = alloca %struct.ib_mad_agent_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %3, align 8
  store %struct.ib_mad_send_wc* %1, %struct.ib_mad_send_wc** %4, align 8
  %8 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %9 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %8, i32 0, i32 4
  %10 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %9, align 8
  store %struct.ib_mad_agent_private* %10, %struct.ib_mad_agent_private** %5, align 8
  %11 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %12 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %16 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %15, i32 0, i32 1
  %17 = call i64 @ib_mad_kernel_rmpp_agent(%struct.TYPE_3__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %21 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %22 = call i32 @ib_process_rmpp_send_wc(%struct.ib_mad_send_wr_private* %20, %struct.ib_mad_send_wc* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IB_RMPP_RESULT_CONSUMED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %123

27:                                               ; preds = %19
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IB_RMPP_RESULT_UNHANDLED, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %32 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IB_WC_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %38 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IB_WC_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %44 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %47 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %49 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %54 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %42, %36, %30
  %58 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %59 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %65 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %70 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %75 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IB_WC_SUCCESS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %81 = call i32 @wait_for_response(%struct.ib_mad_send_wr_private* %80)
  br label %82

82:                                               ; preds = %79, %73, %68, %63
  br label %123

83:                                               ; preds = %57
  %84 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %85 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %84, i32 0, i32 3
  %86 = call i32 @list_del(i32* %85)
  %87 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %88 = call i32 @adjust_timeout(%struct.ib_mad_agent_private* %87)
  %89 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %90 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %89, i32 0, i32 0
  %91 = load i64, i64* %6, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %94 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @IB_WC_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %83
  %99 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %3, align 8
  %100 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %103 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %98, %83
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @IB_RMPP_RESULT_INTERNAL, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %110 = call i32 @ib_rmpp_send_handler(%struct.ib_mad_send_wc* %109)
  br label %120

111:                                              ; preds = %104
  %112 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %113 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_3__*, %struct.ib_mad_send_wc*)*, i32 (%struct.TYPE_3__*, %struct.ib_mad_send_wc*)** %114, align 8
  %116 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %117 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %116, i32 0, i32 1
  %118 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %119 = call i32 %115(%struct.TYPE_3__* %117, %struct.ib_mad_send_wc* %118)
  br label %120

120:                                              ; preds = %111, %108
  %121 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %122 = call i32 @deref_mad_agent(%struct.ib_mad_agent_private* %121)
  br label %128

123:                                              ; preds = %82, %26
  %124 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %5, align 8
  %125 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %124, i32 0, i32 0
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  br label %128

128:                                              ; preds = %123, %120
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ib_mad_kernel_rmpp_agent(%struct.TYPE_3__*) #1

declare dso_local i32 @ib_process_rmpp_send_wc(%struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wc*) #1

declare dso_local i32 @wait_for_response(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @adjust_timeout(%struct.ib_mad_agent_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_rmpp_send_handler(%struct.ib_mad_send_wc*) #1

declare dso_local i32 @deref_mad_agent(%struct.ib_mad_agent_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
