; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_get_7322_faststats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_get_7322_faststats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i64, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.timer_list = type { i32 }

@stats_timer = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@QIBPORTCNTR_WORDRCV = common dso_local global i32 0, align 4
@QIBPORTCNTR_WORDSEND = common dso_local global i32 0, align 4
@QIB_IB_QDR = common dso_local global i32 0, align 4
@QIBL_LINKINIT = common dso_local global i32 0, align 4
@QIBL_LINKARMED = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@QDR_STATIC_ADAPT_INIT_R1 = common dso_local global i32 0, align 4
@QDR_STATIC_ADAPT_INIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ACTIVITY_TIMER = common dso_local global i32 0, align 4
@dd = common dso_local global %struct.qib_devdata* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @qib_get_7322_faststats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_get_7322_faststats(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %9 = ptrtoint %struct.qib_devdata* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @stats_timer, align 4
  %12 = call %struct.qib_devdata* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.qib_devdata* %12, %struct.qib_devdata** %3, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %141, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %144

19:                                               ; preds = %13
  %20 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %21 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %20, i32 0, i32 4
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i64 %24
  store %struct.qib_pportdata* %25, %struct.qib_pportdata** %4, align 8
  %26 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %27 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %19
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @QIB_INITTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %39 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %30, %19
  br label %141

43:                                               ; preds = %37
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %45 = load i32, i32* @QIBPORTCNTR_WORDRCV, align 4
  %46 = call i64 @qib_portcntr_7322(%struct.qib_pportdata* %44, i32 %45)
  %47 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %48 = load i32, i32* @QIBPORTCNTR_WORDSEND, align 4
  %49 = call i64 @qib_portcntr_7322(%struct.qib_pportdata* %47, i32 %48)
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* %6, align 8
  %51 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %52 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %58 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub nsw i64 %62, %61
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %66 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %64
  store i64 %70, i64* %68, align 8
  %71 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %72 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %78 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %140

83:                                               ; preds = %43
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %85 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @QIB_IB_QDR, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %140

90:                                               ; preds = %83
  %91 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %92 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @QIBL_LINKINIT, align 4
  %95 = load i32, i32* @QIBL_LINKARMED, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %93, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %140

101:                                              ; preds = %90
  %102 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %103 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %101
  %109 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %110 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @time_is_before_jiffies(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %108
  %117 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %118 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %122 = call i32 @krp_static_adapt_dis(i32 2)
  %123 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %124 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %116
  %132 = load i32, i32* @QDR_STATIC_ADAPT_INIT_R1, align 4
  br label %135

133:                                              ; preds = %116
  %134 = load i32, i32* @QDR_STATIC_ADAPT_INIT, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %121, i32 %122, i32 %136)
  %138 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %139 = call i32 @force_h1(%struct.qib_pportdata* %138)
  br label %140

140:                                              ; preds = %135, %108, %101, %90, %83, %43
  br label %141

141:                                              ; preds = %140, %42
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %13

144:                                              ; preds = %13
  %145 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %146 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %145, i32 0, i32 2
  %147 = load i64, i64* @jiffies, align 8
  %148 = load i32, i32* @HZ, align 4
  %149 = load i32, i32* @ACTIVITY_TIMER, align 4
  %150 = mul nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %147, %151
  %153 = call i32 @mod_timer(i32* %146, i64 %152)
  ret void
}

declare dso_local %struct.qib_devdata* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @qib_portcntr_7322(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @krp_static_adapt_dis(i32) #1

declare dso_local i32 @force_h1(%struct.qib_pportdata*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
