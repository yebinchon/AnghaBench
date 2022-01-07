; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_create_pbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_create_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { i32 }
%struct.pbl_context = type { %struct.TYPE_13__, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.efa_mr = type { i32 }
%struct.efa_com_reg_mr_params = type { i32, %struct.TYPE_16__, i64, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to create pbl[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_dev*, %struct.pbl_context*, %struct.efa_mr*, %struct.efa_com_reg_mr_params*)* @efa_create_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efa_create_pbl(%struct.efa_dev* %0, %struct.pbl_context* %1, %struct.efa_mr* %2, %struct.efa_com_reg_mr_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efa_dev*, align 8
  %7 = alloca %struct.pbl_context*, align 8
  %8 = alloca %struct.efa_mr*, align 8
  %9 = alloca %struct.efa_com_reg_mr_params*, align 8
  %10 = alloca i32, align 4
  store %struct.efa_dev* %0, %struct.efa_dev** %6, align 8
  store %struct.pbl_context* %1, %struct.pbl_context** %7, align 8
  store %struct.efa_mr* %2, %struct.efa_mr** %8, align 8
  store %struct.efa_com_reg_mr_params* %3, %struct.efa_com_reg_mr_params** %9, align 8
  %11 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %12 = load %struct.pbl_context*, %struct.pbl_context** %7, align 8
  %13 = load %struct.efa_mr*, %struct.efa_mr** %8, align 8
  %14 = getelementptr inbounds %struct.efa_mr, %struct.efa_mr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %9, align 8
  %17 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %9, align 8
  %20 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pbl_create(%struct.efa_dev* %11, %struct.pbl_context* %12, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %27 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ibdev_dbg(i32* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %105

31:                                               ; preds = %4
  %32 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %9, align 8
  %33 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.pbl_context*, %struct.pbl_context** %7, align 8
  %35 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %9, align 8
  %41 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.pbl_context*, %struct.pbl_context** %7, align 8
  %43 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %31
  %47 = load %struct.pbl_context*, %struct.pbl_context** %7, align 8
  %48 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %9, align 8
  %51 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.pbl_context*, %struct.pbl_context** %7, align 8
  %55 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %9, align 8
  %60 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %9, align 8
  %65 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = call i32 @efa_com_set_dma_addr(i32 %58, i32* %63, i32* %68)
  br label %104

70:                                               ; preds = %31
  %71 = load %struct.pbl_context*, %struct.pbl_context** %7, align 8
  %72 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %9, align 8
  %81 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load %struct.pbl_context*, %struct.pbl_context** %7, align 8
  %85 = getelementptr inbounds %struct.pbl_context, %struct.pbl_context* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %9, align 8
  %94 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.efa_com_reg_mr_params*, %struct.efa_com_reg_mr_params** %9, align 8
  %99 = getelementptr inbounds %struct.efa_com_reg_mr_params, %struct.efa_com_reg_mr_params* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = call i32 @efa_com_set_dma_addr(i32 %92, i32* %97, i32* %102)
  br label %104

104:                                              ; preds = %70, %46
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %25
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @pbl_create(%struct.efa_dev*, %struct.pbl_context*, i32, i32, i32) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @efa_com_set_dma_addr(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
