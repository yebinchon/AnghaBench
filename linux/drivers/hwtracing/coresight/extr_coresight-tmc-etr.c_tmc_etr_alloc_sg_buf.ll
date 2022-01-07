; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_alloc_sg_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_alloc_sg_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.etr_buf = type { %struct.etr_sg_table*, i32, i32, i32 }
%struct.etr_sg_table = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETR_MODE_ETR_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmc_drvdata*, %struct.etr_buf*, i32, i8**)* @tmc_etr_alloc_sg_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_etr_alloc_sg_buf(%struct.tmc_drvdata* %0, %struct.etr_buf* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tmc_drvdata*, align 8
  %7 = alloca %struct.etr_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.etr_sg_table*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %6, align 8
  store %struct.etr_buf* %1, %struct.etr_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %13 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %11, align 8
  %16 = load %struct.device*, %struct.device** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %19 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i8**, i8*** %9, align 8
  %22 = call %struct.etr_sg_table* @tmc_init_etr_sg_table(%struct.device* %16, i32 %17, i32 %20, i8** %21)
  store %struct.etr_sg_table* %22, %struct.etr_sg_table** %10, align 8
  %23 = load %struct.etr_sg_table*, %struct.etr_sg_table** %10, align 8
  %24 = call i64 @IS_ERR(%struct.etr_sg_table* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %41

29:                                               ; preds = %4
  %30 = load %struct.etr_sg_table*, %struct.etr_sg_table** %10, align 8
  %31 = getelementptr inbounds %struct.etr_sg_table, %struct.etr_sg_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %34 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ETR_MODE_ETR_SG, align 4
  %36 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %37 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.etr_sg_table*, %struct.etr_sg_table** %10, align 8
  %39 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %40 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %39, i32 0, i32 0
  store %struct.etr_sg_table* %38, %struct.etr_sg_table** %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %29, %26
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.etr_sg_table* @tmc_init_etr_sg_table(%struct.device*, i32, i32, i8**) #1

declare dso_local i64 @IS_ERR(%struct.etr_sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
