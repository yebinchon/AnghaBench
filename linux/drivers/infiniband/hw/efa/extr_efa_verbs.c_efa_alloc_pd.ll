; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i64, i64 }
%struct.efa_dev = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.efa_ibv_alloc_pd_resp = type { i32 }
%struct.efa_com_alloc_pd_result = type { i32 }
%struct.efa_pd = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Incompatible ABI params, udata not cleared\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to copy udata for alloc_pd\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Allocated pd[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_alloc_pd(%struct.ib_pd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.efa_dev*, align 8
  %7 = alloca %struct.efa_ibv_alloc_pd_resp, align 4
  %8 = alloca %struct.efa_com_alloc_pd_result, align 4
  %9 = alloca %struct.efa_pd*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %11 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %12 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.efa_dev* @to_edev(i32 %13)
  store %struct.efa_dev* %14, %struct.efa_dev** %6, align 8
  %15 = bitcast %struct.efa_ibv_alloc_pd_resp* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %17 = call %struct.efa_pd* @to_epd(%struct.ib_pd* %16)
  store %struct.efa_pd* %17, %struct.efa_pd** %9, align 8
  %18 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %19 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %24 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %25 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ib_is_udata_cleared(%struct.ib_udata* %23, i32 0, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %31 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %30, i32 0, i32 1
  %32 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %10, align 4
  br label %80

35:                                               ; preds = %22, %2
  %36 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %37 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %36, i32 0, i32 2
  %38 = call i32 @efa_com_alloc_pd(i32* %37, %struct.efa_com_alloc_pd_result* %8)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %80

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.efa_com_alloc_pd_result, %struct.efa_com_alloc_pd_result* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.efa_pd*, %struct.efa_pd** %9, align 8
  %46 = getelementptr inbounds %struct.efa_pd, %struct.efa_pd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.efa_com_alloc_pd_result, %struct.efa_com_alloc_pd_result* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.efa_ibv_alloc_pd_resp, %struct.efa_ibv_alloc_pd_resp* %7, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %51 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %42
  %55 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %56 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %57 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @min(i32 4, i64 %58)
  %60 = call i32 @ib_copy_to_udata(%struct.ib_udata* %55, %struct.efa_ibv_alloc_pd_resp* %7, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %65 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %64, i32 0, i32 1
  %66 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %75

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %42
  %69 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %70 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %69, i32 0, i32 1
  %71 = load %struct.efa_pd*, %struct.efa_pd** %9, align 8
  %72 = getelementptr inbounds %struct.efa_pd, %struct.efa_pd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32*, i8*, ...) @ibdev_dbg(i32* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  store i32 0, i32* %3, align 4
  br label %87

75:                                               ; preds = %63
  %76 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %77 = getelementptr inbounds %struct.efa_com_alloc_pd_result, %struct.efa_com_alloc_pd_result* %8, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @efa_pd_dealloc(%struct.efa_dev* %76, i32 %78)
  br label %80

80:                                               ; preds = %75, %41, %29
  %81 = load %struct.efa_dev*, %struct.efa_dev** %6, align 8
  %82 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = call i32 @atomic64_inc(i32* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %80, %68
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.efa_dev* @to_edev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.efa_pd* @to_epd(%struct.ib_pd*) #1

declare dso_local i32 @ib_is_udata_cleared(%struct.ib_udata*, i32, i64) #1

declare dso_local i32 @ibdev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @efa_com_alloc_pd(i32*, %struct.efa_com_alloc_pd_result*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.efa_ibv_alloc_pd_resp*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @efa_pd_dealloc(%struct.efa_dev*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
