; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_copy_srq_uresp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_copy_srq_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ocrdma_srq = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.ib_udata = type { i32 }
%struct.ocrdma_create_srq_uresp = type { i32, i32, i32, i32, i32*, i32, i32, i64, i32 }

@OCRDMA_ASIC_GEN_SKH_R = common dso_local global i64 0, align 8
@OCRDMA_DB_GEN2_RQ_OFFSET = common dso_local global i32 0, align 4
@OCRDMA_DB_RQ_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_srq*, %struct.ib_udata*)* @ocrdma_copy_srq_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_copy_srq_uresp(%struct.ocrdma_dev* %0, %struct.ocrdma_srq* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_dev*, align 8
  %6 = alloca %struct.ocrdma_srq*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_create_srq_uresp, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %5, align 8
  store %struct.ocrdma_srq* %1, %struct.ocrdma_srq** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %10 = call i32 @memset(%struct.ocrdma_create_srq_uresp* %9, i32 0, i32 48)
  %11 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %6, align 8
  %12 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 8
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %6, align 8
  %18 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @virt_to_phys(i32 %20)
  %22 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %6, align 8
  %26 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %31 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %6, align 8
  %35 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %40 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %38, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %33, %44
  %46 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 7
  store i64 %45, i64* %46, align 8
  %47 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %48 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %6, align 8
  %53 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 6
  store i32 %55, i32* %56, align 4
  %57 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %58 = call i64 @ocrdma_get_asic_type(%struct.ocrdma_dev* %57)
  %59 = load i64, i64* @OCRDMA_ASIC_GEN_SKH_R, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %3
  %62 = load i32, i32* @OCRDMA_DB_GEN2_RQ_OFFSET, align 4
  %63 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 5
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 2
  store i32 24, i32* %64, align 8
  br label %69

65:                                               ; preds = %3
  %66 = load i32, i32* @OCRDMA_DB_RQ_OFFSET, align 4
  %67 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 5
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 2
  store i32 16, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %71 = call i32 @ib_copy_to_udata(%struct.ib_udata* %70, %struct.ocrdma_create_srq_uresp* %9, i32 48)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %95

76:                                               ; preds = %69
  %77 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %6, align 8
  %78 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.ocrdma_create_srq_uresp, %struct.ocrdma_create_srq_uresp* %9, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ocrdma_add_mmap(i32 %81, i32 %85, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %95

93:                                               ; preds = %76
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %91, %74
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @memset(%struct.ocrdma_create_srq_uresp*, i32, i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i64 @ocrdma_get_asic_type(%struct.ocrdma_dev*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.ocrdma_create_srq_uresp*, i32) #1

declare dso_local i32 @ocrdma_add_mmap(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
