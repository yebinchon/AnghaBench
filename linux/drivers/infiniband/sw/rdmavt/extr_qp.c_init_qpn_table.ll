; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_init_qpn_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_init_qpn_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.rvt_qpn_table = type { i32, i32, %struct.rvt_qpn_map*, i32, i32 }
%struct.rvt_qpn_map = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RVT_BITS_PER_PAGE = common dso_local global i32 0, align 4
@RVT_BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Reserving QPNs from 0x%x to 0x%x for non-verbs use\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_dev_info*, %struct.rvt_qpn_table*)* @init_qpn_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_qpn_table(%struct.rvt_dev_info* %0, %struct.rvt_qpn_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvt_dev_info*, align 8
  %5 = alloca %struct.rvt_qpn_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvt_qpn_map*, align 8
  %9 = alloca i32, align 4
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %4, align 8
  store %struct.rvt_qpn_table* %1, %struct.rvt_qpn_table** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %11 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %15 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %13, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %127

22:                                               ; preds = %2
  %23 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %5, align 8
  %24 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %23, i32 0, i32 4
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %27 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %5, align 8
  %31 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %33 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %37 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %35, %39
  %41 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %5, align 8
  %42 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %44 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RVT_BITS_PER_PAGE, align 4
  %48 = sdiv i32 %46, %47
  %49 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %5, align 8
  %50 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %52 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RVT_BITS_PER_PAGE_MASK, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %5, align 8
  %58 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %57, i32 0, i32 2
  %59 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %58, align 8
  %60 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %5, align 8
  %61 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %59, i64 %63
  store %struct.rvt_qpn_map* %64, %struct.rvt_qpn_map** %8, align 8
  %65 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %66 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %67 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %71 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @rvt_pr_info(%struct.rvt_dev_info* %65, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %73)
  %75 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %76 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %122, %22
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %4, align 8
  %82 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sle i32 %80, %84
  br i1 %85, label %86, label %125

86:                                               ; preds = %79
  %87 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %8, align 8
  %88 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %86
  %92 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %5, align 8
  %93 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %8, align 8
  %94 = call i32 @get_map_page(%struct.rvt_qpn_table* %92, %struct.rvt_qpn_map* %93)
  %95 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %8, align 8
  %96 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %9, align 4
  br label %125

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %8, align 8
  %106 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @set_bit(i32 %104, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @RVT_BITS_PER_PAGE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %103
  %115 = load %struct.rvt_qpn_table*, %struct.rvt_qpn_table** %5, align 8
  %116 = getelementptr inbounds %struct.rvt_qpn_table, %struct.rvt_qpn_table* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.rvt_qpn_map*, %struct.rvt_qpn_map** %8, align 8
  %120 = getelementptr inbounds %struct.rvt_qpn_map, %struct.rvt_qpn_map* %119, i32 1
  store %struct.rvt_qpn_map* %120, %struct.rvt_qpn_map** %8, align 8
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %114, %103
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %79

125:                                              ; preds = %99, %79
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %19
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rvt_pr_info(%struct.rvt_dev_info*, i8*, i32, i32) #1

declare dso_local i32 @get_map_page(%struct.rvt_qpn_table*, %struct.rvt_qpn_map*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
