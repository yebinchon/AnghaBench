; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_free_etr_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_free_etr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_buf = type { i64, %struct.catu_etr_buf* }
%struct.catu_etr_buf = type { i32 }

@ETR_MODE_CATU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etr_buf*)* @catu_free_etr_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catu_free_etr_buf(%struct.etr_buf* %0) #0 {
  %2 = alloca %struct.etr_buf*, align 8
  %3 = alloca %struct.catu_etr_buf*, align 8
  store %struct.etr_buf* %0, %struct.etr_buf** %2, align 8
  %4 = load %struct.etr_buf*, %struct.etr_buf** %2, align 8
  %5 = icmp ne %struct.etr_buf* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.etr_buf*, %struct.etr_buf** %2, align 8
  %8 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ETR_MODE_CATU, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = load %struct.etr_buf*, %struct.etr_buf** %2, align 8
  %14 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %13, i32 0, i32 1
  %15 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %14, align 8
  %16 = icmp ne %struct.catu_etr_buf* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %6, %1
  br label %28

18:                                               ; preds = %12
  %19 = load %struct.etr_buf*, %struct.etr_buf** %2, align 8
  %20 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %19, i32 0, i32 1
  %21 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %20, align 8
  store %struct.catu_etr_buf* %21, %struct.catu_etr_buf** %3, align 8
  %22 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %3, align 8
  %23 = getelementptr inbounds %struct.catu_etr_buf, %struct.catu_etr_buf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tmc_free_sg_table(i32 %24)
  %26 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %3, align 8
  %27 = call i32 @kfree(%struct.catu_etr_buf* %26)
  br label %28

28:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @tmc_free_sg_table(i32) #1

declare dso_local i32 @kfree(%struct.catu_etr_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
