; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_c4iw_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_c4iw_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.c4iw_dev = type { i32 }
%struct.c4iw_pd = type { i32, %struct.c4iw_dev* }
%struct.c4iw_mr = type { i32, i32, %struct.TYPE_2__, %struct.ib_mr, %struct.c4iw_dev* }
%struct.TYPE_2__ = type { i32, i64, i32, i64, i32, i32, i64, i64, i64, i32 }

@T4_STAG_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ib_pd %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SGE_MAX_WR_LEN = common dso_local global i32 0, align 4
@IB_ACCESS_MW_BIND = common dso_local global i32 0, align 4
@FW_RI_STAG_NSMR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @c4iw_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c4iw_dev*, align 8
  %7 = alloca %struct.c4iw_pd*, align 8
  %8 = alloca %struct.c4iw_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @T4_STAG_UNSET, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.ib_pd* %12)
  %14 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %15 = call %struct.c4iw_pd* @to_c4iw_pd(%struct.ib_pd* %14)
  store %struct.c4iw_pd* %15, %struct.c4iw_pd** %7, align 8
  %16 = load %struct.c4iw_pd*, %struct.c4iw_pd** %7, align 8
  %17 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %16, i32 0, i32 1
  %18 = load %struct.c4iw_dev*, %struct.c4iw_dev** %17, align 8
  store %struct.c4iw_dev* %18, %struct.c4iw_dev** %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.c4iw_mr* @kzalloc(i32 96, i32 %19)
  store %struct.c4iw_mr* %20, %struct.c4iw_mr** %8, align 8
  %21 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %22 = icmp ne %struct.c4iw_mr* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ib_mr* @ERR_PTR(i32 %25)
  store %struct.ib_mr* %26, %struct.ib_mr** %3, align 8
  br label %163

27:                                               ; preds = %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @c4iw_alloc_wr_wait(i32 %28)
  %30 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %31 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %33 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %158

39:                                               ; preds = %27
  %40 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %41 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @c4iw_init_wr_wait(i32 %42)
  %44 = load i32, i32* @SGE_MAX_WR_LEN, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @alloc_skb(i32 %44, i32 %45)
  %47 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %48 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %50 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %153

56:                                               ; preds = %39
  %57 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %58 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %59 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %58, i32 0, i32 4
  store %struct.c4iw_dev* %57, %struct.c4iw_dev** %59, align 8
  %60 = load %struct.c4iw_pd*, %struct.c4iw_pd** %7, align 8
  %61 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %64 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 9
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @c4iw_ib_to_tpt_access(i32 %66)
  %68 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %69 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @IB_ACCESS_MW_BIND, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @IB_ACCESS_MW_BIND, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %78 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %81 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 8
  store i64 0, i64* %82, align 8
  %83 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %84 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 7
  store i64 0, i64* %85, align 8
  %86 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %87 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 6
  store i64 0, i64* %88, align 8
  %89 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %90 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i64 -1, i64* %91, align 8
  %92 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %93 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %96 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %95, i32 0, i32 0
  %97 = load %struct.c4iw_pd*, %struct.c4iw_pd** %7, align 8
  %98 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @FW_RI_STAG_NSMR, align 4
  %101 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %102 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %106 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %110 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @write_tpt_entry(i32* %96, i32 0, i32* %10, i32 1, i32 %99, i32 %100, i32 %104, i32 %108, i32 0, i32 0, i64 -1, i32 0, i32 0, i32 0, i32* null, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %56
  br label %148

116:                                              ; preds = %56
  %117 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @finish_mem_reg(%struct.c4iw_mr* %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %126

123:                                              ; preds = %116
  %124 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %125 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %124, i32 0, i32 3
  store %struct.ib_mr* %125, %struct.ib_mr** %3, align 8
  br label %163

126:                                              ; preds = %122
  %127 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %128 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %127, i32 0, i32 0
  %129 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %130 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %134 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %138 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %142 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %145 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @dereg_mem(i32* %128, i32 %132, i64 %136, i32 %140, i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %126, %115
  %149 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %150 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @kfree_skb(i32 %151)
  br label %153

153:                                              ; preds = %148, %53
  %154 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %155 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @c4iw_put_wr_wait(i32 %156)
  br label %158

158:                                              ; preds = %153, %36
  %159 = load %struct.c4iw_mr*, %struct.c4iw_mr** %8, align 8
  %160 = call i32 @kfree(%struct.c4iw_mr* %159)
  %161 = load i32, i32* %9, align 4
  %162 = call %struct.ib_mr* @ERR_PTR(i32 %161)
  store %struct.ib_mr* %162, %struct.ib_mr** %3, align 8
  br label %163

163:                                              ; preds = %158, %123, %23
  %164 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %164
}

declare dso_local i32 @pr_debug(i8*, %struct.ib_pd*) #1

declare dso_local %struct.c4iw_pd* @to_c4iw_pd(%struct.ib_pd*) #1

declare dso_local %struct.c4iw_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @c4iw_alloc_wr_wait(i32) #1

declare dso_local i32 @c4iw_init_wr_wait(i32) #1

declare dso_local i32 @alloc_skb(i32, i32) #1

declare dso_local i32 @c4iw_ib_to_tpt_access(i32) #1

declare dso_local i32 @write_tpt_entry(i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @finish_mem_reg(%struct.c4iw_mr*, i32) #1

declare dso_local i32 @dereg_mem(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @c4iw_put_wr_wait(i32) #1

declare dso_local i32 @kfree(%struct.c4iw_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
