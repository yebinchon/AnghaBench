; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_c4iw_alloc_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_c4iw_alloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mw = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.c4iw_dev = type { i32, i32 }
%struct.c4iw_pd = type { i32, %struct.c4iw_dev* }
%struct.c4iw_mw = type { i32, i32, %struct.TYPE_2__, %struct.ib_mw, %struct.c4iw_dev* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IB_MW_TYPE_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SGE_MAX_WR_LEN = common dso_local global i32 0, align 4
@FW_RI_STAG_MW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mmid 0x%x mhp %p stag 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mw* @c4iw_alloc_mw(%struct.ib_pd* %0, i32 %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_mw*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.c4iw_dev*, align 8
  %9 = alloca %struct.c4iw_pd*, align 8
  %10 = alloca %struct.c4iw_mw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IB_MW_TYPE_1, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ib_mw* @ERR_PTR(i32 %19)
  store %struct.ib_mw* %20, %struct.ib_mw** %4, align 8
  br label %143

21:                                               ; preds = %3
  %22 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %23 = call %struct.c4iw_pd* @to_c4iw_pd(%struct.ib_pd* %22)
  store %struct.c4iw_pd* %23, %struct.c4iw_pd** %9, align 8
  %24 = load %struct.c4iw_pd*, %struct.c4iw_pd** %9, align 8
  %25 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %24, i32 0, i32 1
  %26 = load %struct.c4iw_dev*, %struct.c4iw_dev** %25, align 8
  store %struct.c4iw_dev* %26, %struct.c4iw_dev** %8, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.c4iw_mw* @kzalloc(i32 32, i32 %27)
  store %struct.c4iw_mw* %28, %struct.c4iw_mw** %10, align 8
  %29 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %30 = icmp ne %struct.c4iw_mw* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ib_mw* @ERR_PTR(i32 %33)
  store %struct.ib_mw* %34, %struct.ib_mw** %4, align 8
  br label %143

35:                                               ; preds = %21
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @c4iw_alloc_wr_wait(i32 %36)
  %38 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %39 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %41 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %138

47:                                               ; preds = %35
  %48 = load i32, i32* @SGE_MAX_WR_LEN, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @alloc_skb(i32 %48, i32 %49)
  %51 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %52 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %54 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %133

60:                                               ; preds = %47
  %61 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %62 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %61, i32 0, i32 0
  %63 = load %struct.c4iw_pd*, %struct.c4iw_pd** %9, align 8
  %64 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %67 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @allocate_window(i32* %62, i32* %12, i32 %65, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %128

73:                                               ; preds = %60
  %74 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %75 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %76 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %75, i32 0, i32 4
  store %struct.c4iw_dev* %74, %struct.c4iw_dev** %76, align 8
  %77 = load %struct.c4iw_pd*, %struct.c4iw_pd** %9, align 8
  %78 = getelementptr inbounds %struct.c4iw_pd, %struct.c4iw_pd* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %81 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* @FW_RI_STAG_MW, align 4
  %84 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %85 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %89 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = ashr i32 %91, 8
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %95 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %98 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i64 @xa_insert_irq(i32* %98, i32 %99, %struct.c4iw_mw* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %73
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %13, align 4
  br label %114

107:                                              ; preds = %73
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %108, %struct.c4iw_mw* %109, i32 %110)
  %112 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %113 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %112, i32 0, i32 3
  store %struct.ib_mw* %113, %struct.ib_mw** %4, align 8
  br label %143

114:                                              ; preds = %104
  %115 = load %struct.c4iw_dev*, %struct.c4iw_dev** %8, align 8
  %116 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %115, i32 0, i32 0
  %117 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %118 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %122 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %125 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @deallocate_window(i32* %116, i32 %120, i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %114, %72
  %129 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %130 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @kfree_skb(i32 %131)
  br label %133

133:                                              ; preds = %128, %57
  %134 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %135 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @c4iw_put_wr_wait(i32 %136)
  br label %138

138:                                              ; preds = %133, %44
  %139 = load %struct.c4iw_mw*, %struct.c4iw_mw** %10, align 8
  %140 = call i32 @kfree(%struct.c4iw_mw* %139)
  %141 = load i32, i32* %13, align 4
  %142 = call %struct.ib_mw* @ERR_PTR(i32 %141)
  store %struct.ib_mw* %142, %struct.ib_mw** %4, align 8
  br label %143

143:                                              ; preds = %138, %107, %31, %17
  %144 = load %struct.ib_mw*, %struct.ib_mw** %4, align 8
  ret %struct.ib_mw* %144
}

declare dso_local %struct.ib_mw* @ERR_PTR(i32) #1

declare dso_local %struct.c4iw_pd* @to_c4iw_pd(%struct.ib_pd*) #1

declare dso_local %struct.c4iw_mw* @kzalloc(i32, i32) #1

declare dso_local i32 @c4iw_alloc_wr_wait(i32) #1

declare dso_local i32 @alloc_skb(i32, i32) #1

declare dso_local i32 @allocate_window(i32*, i32*, i32, i32) #1

declare dso_local i64 @xa_insert_irq(i32*, i32, %struct.c4iw_mw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.c4iw_mw*, i32) #1

declare dso_local i32 @deallocate_window(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @c4iw_put_wr_wait(i32) #1

declare dso_local i32 @kfree(%struct.c4iw_mw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
