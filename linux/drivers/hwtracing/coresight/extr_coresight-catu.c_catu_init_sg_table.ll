; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_init_sg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_init_sg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_sg_table = type { i32 }
%struct.device = type { i32 }

@SZ_1M = common dso_local global i32 0, align 4
@CATU_PAGES_PER_SYSPAGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Setup table %p, size %ldKB, %d table pages\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tmc_sg_table* (%struct.device*, i32, i32, i8**)* @catu_init_sg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tmc_sg_table* @catu_init_sg_table(%struct.device* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.tmc_sg_table*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tmc_sg_table*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SZ_1M, align 4
  %14 = call i32 @DIV_ROUND_UP(i32 %12, i32 %13)
  %15 = load i32, i32* @CATU_PAGES_PER_SYSPAGE, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i8**, i8*** %9, align 8
  %24 = call %struct.tmc_sg_table* @tmc_alloc_sg_table(%struct.device* %17, i32 %18, i32 %19, i32 %22, i8** %23)
  store %struct.tmc_sg_table* %24, %struct.tmc_sg_table** %11, align 8
  %25 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %11, align 8
  %26 = call i64 @IS_ERR(%struct.tmc_sg_table* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %11, align 8
  store %struct.tmc_sg_table* %29, %struct.tmc_sg_table** %5, align 8
  br label %43

30:                                               ; preds = %4
  %31 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %11, align 8
  %32 = call i32 @catu_populate_table(%struct.tmc_sg_table* %31)
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %11, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = lshr i64 %36, 10
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.tmc_sg_table* %34, i64 %37, i32 %38)
  %40 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %11, align 8
  %41 = call i32 @catu_dump_table(%struct.tmc_sg_table* %40)
  %42 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %11, align 8
  store %struct.tmc_sg_table* %42, %struct.tmc_sg_table** %5, align 8
  br label %43

43:                                               ; preds = %30, %28
  %44 = load %struct.tmc_sg_table*, %struct.tmc_sg_table** %5, align 8
  ret %struct.tmc_sg_table* %44
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.tmc_sg_table* @tmc_alloc_sg_table(%struct.device*, i32, i32, i32, i8**) #1

declare dso_local i64 @IS_ERR(%struct.tmc_sg_table*) #1

declare dso_local i32 @catu_populate_table(%struct.tmc_sg_table*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.tmc_sg_table*, i64, i32) #1

declare dso_local i32 @catu_dump_table(%struct.tmc_sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
