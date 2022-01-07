; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.siw_device = type { i32 }
%struct.siw_mr = type { %struct.TYPE_2__*, %struct.ib_mr }
%struct.TYPE_2__ = type { i32, i32 }
%struct.siw_pbl = type { i32 }

@SIW_MAX_MR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"too many mr's\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"mr type %d unsupported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SIW_MAX_SGE_PBL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"too many sge's: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"pbl allocation failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"[MEM %u]: success\0A\00", align 1
@rcu = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @siw_alloc_mr(%struct.ib_pd* %0, i32 %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.siw_device*, align 8
  %11 = alloca %struct.siw_mr*, align 8
  %12 = alloca %struct.siw_pbl*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %14 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %15 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.siw_device* @to_siw_dev(i32 %16)
  store %struct.siw_device* %17, %struct.siw_device** %10, align 8
  store %struct.siw_mr* null, %struct.siw_mr** %11, align 8
  store %struct.siw_pbl* null, %struct.siw_pbl** %12, align 8
  %18 = load %struct.siw_device*, %struct.siw_device** %10, align 8
  %19 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %18, i32 0, i32 0
  %20 = call i64 @atomic_inc_return(i32* %19)
  %21 = load i64, i64* @SIW_MAX_MR, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %25 = call i32 (%struct.ib_pd*, i8*, ...) @siw_dbg_pd(%struct.ib_pd* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %13, align 4
  br label %93

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (%struct.ib_pd*, i8*, ...) @siw_dbg_pd(%struct.ib_pd* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  br label %93

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SIW_MAX_SGE_PBL, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (%struct.ib_pd*, i8*, ...) @siw_dbg_pd(%struct.ib_pd* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %93

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.siw_pbl* @siw_pbl_alloc(i32 %49)
  store %struct.siw_pbl* %50, %struct.siw_pbl** %12, align 8
  %51 = load %struct.siw_pbl*, %struct.siw_pbl** %12, align 8
  %52 = call i64 @IS_ERR(%struct.siw_pbl* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.siw_pbl*, %struct.siw_pbl** %12, align 8
  %56 = call i32 @PTR_ERR(%struct.siw_pbl* %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 (%struct.ib_pd*, i8*, ...) @siw_dbg_pd(%struct.ib_pd* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  store %struct.siw_pbl* null, %struct.siw_pbl** %12, align 8
  br label %93

60:                                               ; preds = %48
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.siw_mr* @kzalloc(i32 16, i32 %61)
  store %struct.siw_mr* %62, %struct.siw_mr** %11, align 8
  %63 = load %struct.siw_mr*, %struct.siw_mr** %11, align 8
  %64 = icmp ne %struct.siw_mr* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %13, align 4
  br label %93

68:                                               ; preds = %60
  %69 = load %struct.siw_mr*, %struct.siw_mr** %11, align 8
  %70 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %71 = load %struct.siw_pbl*, %struct.siw_pbl** %12, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = mul nsw i32 %72, %73
  %75 = call i32 @siw_mr_add_mem(%struct.siw_mr* %69, %struct.ib_pd* %70, %struct.siw_pbl* %71, i32 0, i32 %74, i32 0)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %93

79:                                               ; preds = %68
  %80 = load %struct.siw_mr*, %struct.siw_mr** %11, align 8
  %81 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  %84 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %85 = load %struct.siw_mr*, %struct.siw_mr** %11, align 8
  %86 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.ib_pd*, i8*, ...) @siw_dbg_pd(%struct.ib_pd* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load %struct.siw_mr*, %struct.siw_mr** %11, align 8
  %92 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %91, i32 0, i32 1
  store %struct.ib_mr* %92, %struct.ib_mr** %5, align 8
  br label %120

93:                                               ; preds = %78, %65, %54, %42, %32, %23
  %94 = load %struct.siw_device*, %struct.siw_device** %10, align 8
  %95 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %94, i32 0, i32 0
  %96 = call i32 @atomic_dec(i32* %95)
  %97 = load %struct.siw_mr*, %struct.siw_mr** %11, align 8
  %98 = icmp ne %struct.siw_mr* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load %struct.siw_pbl*, %struct.siw_pbl** %12, align 8
  %101 = call i32 @kfree(%struct.siw_pbl* %100)
  br label %114

102:                                              ; preds = %93
  %103 = load %struct.siw_mr*, %struct.siw_mr** %11, align 8
  %104 = getelementptr inbounds %struct.siw_mr, %struct.siw_mr* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = icmp ne %struct.TYPE_2__* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.siw_mr*, %struct.siw_mr** %11, align 8
  %109 = call i32 @siw_mr_drop_mem(%struct.siw_mr* %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.siw_mr*, %struct.siw_mr** %11, align 8
  %112 = load i32, i32* @rcu, align 4
  %113 = call i32 @kfree_rcu(%struct.siw_mr* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %99
  %115 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 (%struct.ib_pd*, i8*, ...) @siw_dbg_pd(%struct.ib_pd* %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = call %struct.ib_mr* @ERR_PTR(i32 %118)
  store %struct.ib_mr* %119, %struct.ib_mr** %5, align 8
  br label %120

120:                                              ; preds = %114, %79
  %121 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  ret %struct.ib_mr* %121
}

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @siw_dbg_pd(%struct.ib_pd*, i8*, ...) #1

declare dso_local %struct.siw_pbl* @siw_pbl_alloc(i32) #1

declare dso_local i64 @IS_ERR(%struct.siw_pbl*) #1

declare dso_local i32 @PTR_ERR(%struct.siw_pbl*) #1

declare dso_local %struct.siw_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @siw_mr_add_mem(%struct.siw_mr*, %struct.ib_pd*, %struct.siw_pbl*, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @kfree(%struct.siw_pbl*) #1

declare dso_local i32 @siw_mr_drop_mem(%struct.siw_mr*) #1

declare dso_local i32 @kfree_rcu(%struct.siw_mr*, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
