; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_send_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cm.c_cm_send_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { %struct.cm_port* }
%struct.cm_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.ib_mad_send_wc = type { i32, %struct.ib_mad_send_buf* }
%struct.ib_mad_send_buf = type { i32, i64*, i64 }
%struct.ib_mad_hdr = type { i32 }

@CM_ATTR_ID_OFFSET = common dso_local global i64 0, align 8
@CM_REJ_COUNTER = common dso_local global i64 0, align 8
@CM_XMIT = common dso_local global i64 0, align 8
@CM_XMIT_RETRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_send_wc*)* @cm_send_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_send_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_send_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca %struct.ib_mad_send_wc*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca %struct.cm_port*, align 8
  %7 = alloca i64, align 8
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %3, align 8
  store %struct.ib_mad_send_wc* %1, %struct.ib_mad_send_wc** %4, align 8
  %8 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %9 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %8, i32 0, i32 1
  %10 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %9, align 8
  store %struct.ib_mad_send_buf* %10, %struct.ib_mad_send_buf** %5, align 8
  %11 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %12 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %11, i32 0, i32 0
  %13 = load %struct.cm_port*, %struct.cm_port** %12, align 8
  store %struct.cm_port* %13, %struct.cm_port** %6, align 8
  %14 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %15 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ib_mad_hdr*
  %18 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be16_to_cpu(i32 %19)
  %21 = load i64, i64* @CM_ATTR_ID_OFFSET, align 8
  %22 = sub i64 %20, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %24 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %2
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @CM_REJ_COUNTER, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %35 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %29, %2
  %37 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %38 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 1, %39
  %41 = load %struct.cm_port*, %struct.cm_port** %6, align 8
  %42 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* @CM_XMIT, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i32 @atomic_long_add(i32 %40, i32* %49)
  %51 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %52 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %36
  %56 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %57 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cm_port*, %struct.cm_port** %6, align 8
  %60 = getelementptr inbounds %struct.cm_port, %struct.cm_port* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @CM_XMIT_RETRIES, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = call i32 @atomic_long_add(i32 %58, i32* %67)
  br label %69

69:                                               ; preds = %55, %36
  %70 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %71 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  switch i32 %72, label %76 [
    i32 129, label %73
    i32 128, label %73
  ]

73:                                               ; preds = %69, %69
  %74 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %75 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %74)
  br label %100

76:                                               ; preds = %69
  %77 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %78 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %85 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %92 = load %struct.ib_mad_send_wc*, %struct.ib_mad_send_wc** %4, align 8
  %93 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @cm_process_send_error(%struct.ib_mad_send_buf* %91, i32 %94)
  br label %99

96:                                               ; preds = %83, %76
  %97 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %5, align 8
  %98 = call i32 @cm_free_msg(%struct.ib_mad_send_buf* %97)
  br label %99

99:                                               ; preds = %96, %90
  br label %100

100:                                              ; preds = %99, %73
  ret void
}

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @atomic_long_add(i32, i32*) #1

declare dso_local i32 @cm_free_msg(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @cm_process_send_error(%struct.ib_mad_send_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
