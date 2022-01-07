; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c__ocrdma_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c__ocrdma_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_5__*, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_pd = type { i32, i32 }
%struct.ocrdma_ucontext = type { i32 }
%struct.ib_udata = type { i32 }

@OCRDMA_ASIC_GEN_SKH_R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_pd*, %struct.ocrdma_ucontext*, %struct.ib_udata*)* @_ocrdma_alloc_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ocrdma_alloc_pd(%struct.ocrdma_dev* %0, %struct.ocrdma_pd* %1, %struct.ocrdma_ucontext* %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca %struct.ocrdma_pd*, align 8
  %8 = alloca %struct.ocrdma_ucontext*, align 8
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %6, align 8
  store %struct.ocrdma_pd* %1, %struct.ocrdma_pd** %7, align 8
  store %struct.ocrdma_ucontext* %2, %struct.ocrdma_ucontext** %8, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %11 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %12 = icmp ne %struct.ib_udata* %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %4
  %14 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %8, align 8
  %15 = icmp ne %struct.ocrdma_ucontext* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %18 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %24 = call i64 @ocrdma_get_asic_type(%struct.ocrdma_dev* %23)
  %25 = load i64, i64* @OCRDMA_ASIC_GEN_SKH_R, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %7, align 8
  %29 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %7, align 8
  %31 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %36 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %40 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %38, %42
  br label %45

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44, %34
  %46 = phi i32 [ %43, %34 ], [ 0, %44 ]
  %47 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %7, align 8
  %48 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %16, %13, %4
  %50 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %51 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %58 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %7, align 8
  %59 = call i32 @ocrdma_get_pd_num(%struct.ocrdma_dev* %57, %struct.ocrdma_pd* %58)
  store i32 %59, i32* %5, align 4
  br label %80

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %72, %60
  %62 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %63 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %7, align 8
  %64 = call i32 @ocrdma_mbx_alloc_pd(%struct.ocrdma_dev* %62, %struct.ocrdma_pd* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %7, align 8
  %69 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %7, align 8
  %74 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  %75 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %7, align 8
  %76 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %75, i32 0, i32 1
  store i32 0, i32* %76, align 4
  br label %61

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %77, %56
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @ocrdma_get_asic_type(%struct.ocrdma_dev*) #1

declare dso_local i32 @ocrdma_get_pd_num(%struct.ocrdma_dev*, %struct.ocrdma_pd*) #1

declare dso_local i32 @ocrdma_mbx_alloc_pd(%struct.ocrdma_dev*, %struct.ocrdma_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
