; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_register_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_register_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.c4iw_pd = type { i32 }
%struct.c4iw_mr = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@T4_STAG_UNSET = common dso_local global i32 0, align 4
@FW_RI_STAG_NSMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_dev*, %struct.c4iw_pd*, %struct.c4iw_mr*, i32)* @register_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_mem(%struct.c4iw_dev* %0, %struct.c4iw_pd* %1, %struct.c4iw_mr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.c4iw_dev*, align 8
  %7 = alloca %struct.c4iw_pd*, align 8
  %8 = alloca %struct.c4iw_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %6, align 8
  store %struct.c4iw_pd* %1, %struct.c4iw_pd** %7, align 8
  store %struct.c4iw_mr* %2, %struct.c4iw_mr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @T4_STAG_UNSET, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %14 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %13, i32 0, i32 0
  %15 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %16 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FW_RI_STAG_NSMR, align 4
  %20 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %21 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %27 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i32 [ %29, %25 ], [ 0, %30 ]
  %33 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %34 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %38 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %42 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %46 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %31
  %51 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %52 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %56

55:                                               ; preds = %31
  br label %56

56:                                               ; preds = %55, %50
  %57 = phi i32 [ %54, %50 ], [ -1, %55 ]
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, 12
  %60 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %61 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %65 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %69 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @write_tpt_entry(i32* %14, i32 0, i32* %10, i32 1, i32 %18, i32 %19, i32 %32, i32 %36, i32 %40, i32 %44, i32 %57, i32 %59, i32 %63, i32 %67, i32* null, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %56
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %108

76:                                               ; preds = %56
  %77 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @finish_mem_reg(%struct.c4iw_mr* %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %76
  %83 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %84 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %83, i32 0, i32 0
  %85 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %86 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %90 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %94 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %98 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %101 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dereg_mem(i32* %84, i32 %88, i32 %92, i32 %96, i32* %99, i32 %102)
  %104 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %105 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %82, %76
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %74
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @write_tpt_entry(i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @finish_mem_reg(%struct.c4iw_mr*, i32) #1

declare dso_local i32 @dereg_mem(i32*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
