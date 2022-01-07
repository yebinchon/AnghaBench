; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_sync_etr_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_sync_etr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_buf = type { i64, i64, i64, i64, i32, %struct.catu_etr_buf* }
%struct.catu_etr_buf = type { %struct.tmc_sg_table* }
%struct.tmc_sg_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etr_buf*, i64, i64)* @catu_sync_etr_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catu_sync_etr_buf(%struct.etr_buf* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.etr_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.catu_etr_buf*, align 8
  %8 = alloca %struct.tmc_sg_table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.etr_buf* %0, %struct.etr_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %12 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %11, i32 0, i32 5
  %13 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %12, align 8
  store %struct.catu_etr_buf* %13, %struct.catu_etr_buf** %7, align 8
  %14 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %7, align 8
  %15 = getelementptr inbounds %struct.catu_etr_buf, %struct.catu_etr_buf* %14, i32 0, i32 0
  %16 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %15, align 8
  store %struct.tmc_sg_table* %16, %struct.tmc_sg_table** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %19 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %24 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  store i64 %26, i64* %10, align 8
  %27 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %28 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %36 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %42 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %45 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %40, %31
  br label %55

49:                                               ; preds = %3
  %50 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %51 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %54 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %48
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %58 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.etr_buf*, %struct.etr_buf** %4, align 8
  %62 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @tmc_sg_table_sync_data_range(%struct.tmc_sg_table* %59, i64 %60, i64 %63)
  ret void
}

declare dso_local i32 @tmc_sg_table_sync_data_range(%struct.tmc_sg_table*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
