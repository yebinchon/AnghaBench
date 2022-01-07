; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_sync_sysfs_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_sync_sysfs_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { %struct.etr_buf*, %struct.etr_buf* }
%struct.etr_buf = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmc_drvdata*)* @tmc_etr_sync_sysfs_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmc_etr_sync_sysfs_buf(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca %struct.tmc_drvdata*, align 8
  %3 = alloca %struct.etr_buf*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %2, align 8
  %4 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %5 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %4, i32 0, i32 1
  %6 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  store %struct.etr_buf* %6, %struct.etr_buf** %3, align 8
  %7 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %8 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %7, i32 0, i32 0
  %9 = load %struct.etr_buf*, %struct.etr_buf** %8, align 8
  %10 = load %struct.etr_buf*, %struct.etr_buf** %3, align 8
  %11 = icmp ne %struct.etr_buf* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %17 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %16, i32 0, i32 0
  %18 = load %struct.etr_buf*, %struct.etr_buf** %17, align 8
  %19 = call i32 @tmc_etr_free_sysfs_buf(%struct.etr_buf* %18)
  %20 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %21 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %20, i32 0, i32 0
  store %struct.etr_buf* null, %struct.etr_buf** %21, align 8
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %24 = call i32 @tmc_sync_etr_buf(%struct.tmc_drvdata* %23)
  %25 = load %struct.etr_buf*, %struct.etr_buf** %3, align 8
  %26 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.etr_buf*, %struct.etr_buf** %3, align 8
  %31 = load %struct.etr_buf*, %struct.etr_buf** %3, align 8
  %32 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @tmc_etr_buf_insert_barrier_packet(%struct.etr_buf* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %22
  br label %36

36:                                               ; preds = %35, %15
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tmc_etr_free_sysfs_buf(%struct.etr_buf*) #1

declare dso_local i32 @tmc_sync_etr_buf(%struct.tmc_drvdata*) #1

declare dso_local i32 @tmc_etr_buf_insert_barrier_packet(%struct.etr_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
