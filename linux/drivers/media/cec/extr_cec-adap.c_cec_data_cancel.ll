; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_data_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_data_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_data = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i8*, i32, i8* }
%struct.TYPE_3__ = type { i32, %struct.cec_data* }

@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@CEC_RX_STATUS_ABORTED = common dso_local global i32 0, align 4
@CEC_TX_STATUS_MAX_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_data*, i32)* @cec_data_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_data_cancel(%struct.cec_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cec_data*, align 8
  %4 = alloca i32, align 4
  store %struct.cec_data* %0, %struct.cec_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %6 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.cec_data*, %struct.cec_data** %8, align 8
  %10 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %11 = icmp eq %struct.cec_data* %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %14 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store %struct.cec_data* null, %struct.cec_data** %16, align 8
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %19 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %18, i32 0, i32 3
  %20 = call i32 @list_del_init(i32* %19)
  %21 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %22 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %17
  %29 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %30 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %28, %17
  br label %36

36:                                               ; preds = %35, %12
  %37 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %38 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = call i8* (...) @ktime_get_ns()
  %46 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %47 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  store i8* %45, i8** %48, align 8
  %49 = load i32, i32* @CEC_RX_STATUS_ABORTED, align 4
  %50 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %51 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  br label %73

53:                                               ; preds = %36
  %54 = call i8* (...) @ktime_get_ns()
  %55 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %56 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @CEC_TX_STATUS_MAX_RETRIES, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %62 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 8
  %66 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %67 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %72 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %53, %44
  %74 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %75 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %78 = getelementptr inbounds %struct.cec_data, %struct.cec_data* %77, i32 0, i32 0
  %79 = call i32 @cec_queue_msg_monitor(%struct.TYPE_3__* %76, %struct.TYPE_4__* %78, i32 1)
  %80 = load %struct.cec_data*, %struct.cec_data** %3, align 8
  %81 = call i32 @cec_data_completed(%struct.cec_data* %80)
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i8* @ktime_get_ns(...) #1

declare dso_local i32 @cec_queue_msg_monitor(%struct.TYPE_3__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @cec_data_completed(%struct.cec_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
