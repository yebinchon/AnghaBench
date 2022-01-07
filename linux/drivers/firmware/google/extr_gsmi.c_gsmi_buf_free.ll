; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_gsmi.c_gsmi_buf_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_gsmi.c_gsmi_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gsmi_buf = type { i32, i64 }

@gsmi_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsmi_buf*)* @gsmi_buf_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsmi_buf_free(%struct.gsmi_buf* %0) #0 {
  %2 = alloca %struct.gsmi_buf*, align 8
  store %struct.gsmi_buf* %0, %struct.gsmi_buf** %2, align 8
  %3 = load %struct.gsmi_buf*, %struct.gsmi_buf** %2, align 8
  %4 = icmp ne %struct.gsmi_buf* %3, null
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load %struct.gsmi_buf*, %struct.gsmi_buf** %2, align 8
  %7 = getelementptr inbounds %struct.gsmi_buf, %struct.gsmi_buf* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gsmi_dev, i32 0, i32 0), align 4
  %12 = load %struct.gsmi_buf*, %struct.gsmi_buf** %2, align 8
  %13 = getelementptr inbounds %struct.gsmi_buf, %struct.gsmi_buf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.gsmi_buf*, %struct.gsmi_buf** %2, align 8
  %16 = getelementptr inbounds %struct.gsmi_buf, %struct.gsmi_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dma_pool_free(i32 %11, i64 %14, i32 %17)
  br label %19

19:                                               ; preds = %10, %5
  %20 = load %struct.gsmi_buf*, %struct.gsmi_buf** %2, align 8
  %21 = call i32 @kfree(%struct.gsmi_buf* %20)
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @dma_pool_free(i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.gsmi_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
