; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_alloc_etr_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_alloc_etr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i32 }
%struct.etr_buf = type { i32, %struct.catu_etr_buf*, i32, i32 }
%struct.catu_etr_buf = type { i32, %struct.tmc_sg_table* }
%struct.tmc_sg_table = type { i32 }
%struct.coresight_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETR_MODE_CATU = common dso_local global i32 0, align 4
@CATU_DEFAULT_INADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmc_drvdata*, %struct.etr_buf*, i32, i8**)* @catu_alloc_etr_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @catu_alloc_etr_buf(%struct.tmc_drvdata* %0, %struct.etr_buf* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tmc_drvdata*, align 8
  %7 = alloca %struct.etr_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.coresight_device*, align 8
  %11 = alloca %struct.tmc_sg_table*, align 8
  %12 = alloca %struct.catu_etr_buf*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %6, align 8
  store %struct.etr_buf* %1, %struct.etr_buf** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %13 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %6, align 8
  %14 = call %struct.coresight_device* @tmc_etr_get_catu_device(%struct.tmc_drvdata* %13)
  store %struct.coresight_device* %14, %struct.coresight_device** %10, align 8
  %15 = load %struct.coresight_device*, %struct.coresight_device** %10, align 8
  %16 = icmp ne %struct.coresight_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %63

20:                                               ; preds = %4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.catu_etr_buf* @kzalloc(i32 16, i32 %21)
  store %struct.catu_etr_buf* %22, %struct.catu_etr_buf** %12, align 8
  %23 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %12, align 8
  %24 = icmp ne %struct.catu_etr_buf* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %63

28:                                               ; preds = %20
  %29 = load %struct.coresight_device*, %struct.coresight_device** %10, align 8
  %30 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %33 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i8**, i8*** %9, align 8
  %36 = call %struct.tmc_sg_table* @catu_init_sg_table(i32* %30, i32 %31, i32 %34, i8** %35)
  store %struct.tmc_sg_table* %36, %struct.tmc_sg_table** %11, align 8
  %37 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %11, align 8
  %38 = call i64 @IS_ERR(%struct.tmc_sg_table* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %12, align 8
  %42 = call i32 @kfree(%struct.catu_etr_buf* %41)
  %43 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %11, align 8
  %44 = call i32 @PTR_ERR(%struct.tmc_sg_table* %43)
  store i32 %44, i32* %5, align 4
  br label %63

45:                                               ; preds = %28
  %46 = load i32, i32* @ETR_MODE_CATU, align 4
  %47 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %48 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %12, align 8
  %50 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %51 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %50, i32 0, i32 1
  store %struct.catu_etr_buf* %49, %struct.catu_etr_buf** %51, align 8
  %52 = load i32, i32* @CATU_DEFAULT_INADDR, align 4
  %53 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  %54 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %11, align 8
  %56 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %12, align 8
  %57 = getelementptr inbounds %struct.catu_etr_buf, %struct.catu_etr_buf* %56, i32 0, i32 1
  store %struct.tmc_sg_table* %55, %struct.tmc_sg_table** %57, align 8
  %58 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %11, align 8
  %59 = getelementptr inbounds %struct.tmc_sg_table, %struct.tmc_sg_table* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.catu_etr_buf*, %struct.catu_etr_buf** %12, align 8
  %62 = getelementptr inbounds %struct.catu_etr_buf, %struct.catu_etr_buf* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %45, %40, %25, %17
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.coresight_device* @tmc_etr_get_catu_device(%struct.tmc_drvdata*) #1

declare dso_local %struct.catu_etr_buf* @kzalloc(i32, i32) #1

declare dso_local %struct.tmc_sg_table* @catu_init_sg_table(i32*, i32, i32, i8**) #1

declare dso_local i64 @IS_ERR(%struct.tmc_sg_table*) #1

declare dso_local i32 @kfree(%struct.catu_etr_buf*) #1

declare dso_local i32 @PTR_ERR(%struct.tmc_sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
