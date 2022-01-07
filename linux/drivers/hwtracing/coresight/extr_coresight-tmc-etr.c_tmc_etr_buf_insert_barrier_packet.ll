; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_buf_insert_barrier_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_buf_insert_barrier_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_buf = type { i32 }

@CORESIGHT_BARRIER_PKT_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.etr_buf*, i64)* @tmc_etr_buf_insert_barrier_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tmc_etr_buf_insert_barrier_packet(%struct.etr_buf* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.etr_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.etr_buf* %0, %struct.etr_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @CORESIGHT_BARRIER_PKT_SIZE, align 8
  %11 = call i64 @tmc_etr_buf_get_data(%struct.etr_buf* %8, i64 %9, i64 %10, i8** %7)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @CORESIGHT_BARRIER_PKT_SIZE, align 8
  %14 = icmp slt i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %3, align 8
  br label %27

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @coresight_insert_barrier_packet(i8* %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @CORESIGHT_BARRIER_PKT_SIZE, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @tmc_etr_buf_get_data(%struct.etr_buf*, i64, i64, i8**) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @coresight_insert_barrier_packet(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
