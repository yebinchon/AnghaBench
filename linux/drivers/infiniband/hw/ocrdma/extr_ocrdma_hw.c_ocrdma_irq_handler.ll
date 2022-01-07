; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_eq = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.ocrdma_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_eqe = type { i32 }

@OCRDMA_EQE_MAJOR_CODE_MASK = common dso_local global i32 0, align 4
@OCRDMA_EQE_MAJOR_CODE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_MAJOR_CODE_SENTINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"EQ full on eqid = 0x%x, eqe = 0x%x\0A\00", align 1
@OCRDMA_EQE_VALID_MASK = common dso_local global i32 0, align 4
@OCRDMA_EQE_FOR_CQE_MASK = common dso_local global i32 0, align 4
@OCRDMA_EQE_RESOURCE_ID_SHIFT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ocrdma_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocrdma_eq*, align 8
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca %struct.ocrdma_eqe, align 4
  %8 = alloca %struct.ocrdma_eqe*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ocrdma_eq*
  store %struct.ocrdma_eq* %13, %struct.ocrdma_eq** %5, align 8
  %14 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %15 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %14, i32 0, i32 3
  %16 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %15, align 8
  store %struct.ocrdma_dev* %16, %struct.ocrdma_dev** %6, align 8
  %17 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %18 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %82, %2
  %21 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %22 = call %struct.ocrdma_eqe* @ocrdma_get_eqe(%struct.ocrdma_eq* %21)
  store %struct.ocrdma_eqe* %22, %struct.ocrdma_eqe** %8, align 8
  %23 = load %struct.ocrdma_eqe*, %struct.ocrdma_eqe** %8, align 8
  %24 = bitcast %struct.ocrdma_eqe* %7 to i8*
  %25 = bitcast %struct.ocrdma_eqe* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = call i32 @ocrdma_le32_to_cpu(%struct.ocrdma_eqe* %7, i32 4)
  %27 = getelementptr inbounds %struct.ocrdma_eqe, %struct.ocrdma_eqe* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OCRDMA_EQE_MAJOR_CODE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @OCRDMA_EQE_MAJOR_CODE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @OCRDMA_MAJOR_CODE_SENTINAL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %20
  %37 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %38 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ocrdma_eqe, %struct.ocrdma_eqe* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %36, %20
  %45 = getelementptr inbounds %struct.ocrdma_eqe, %struct.ocrdma_eqe* %7, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @OCRDMA_EQE_VALID_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %85

51:                                               ; preds = %44
  %52 = load %struct.ocrdma_eqe*, %struct.ocrdma_eqe** %8, align 8
  %53 = getelementptr inbounds %struct.ocrdma_eqe, %struct.ocrdma_eqe* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %55 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %56 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ocrdma_ring_eq_db(%struct.ocrdma_dev* %54, i32 %58, i32 0, i32 1, i32 1)
  %60 = getelementptr inbounds %struct.ocrdma_eqe, %struct.ocrdma_eqe* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OCRDMA_EQE_FOR_CQE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.ocrdma_eqe, %struct.ocrdma_eqe* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @OCRDMA_EQE_RESOURCE_ID_SHIFT, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %9, align 4
  %70 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ocrdma_cq_handler(%struct.ocrdma_dev* %70, i32 %71)
  br label %73

73:                                               ; preds = %65, %51
  %74 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %75 = call i32 @ocrdma_eq_inc_tail(%struct.ocrdma_eq* %74)
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %20, label %85

85:                                               ; preds = %82, %50
  %86 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %87 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %92 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %5, align 8
  %93 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ocrdma_ring_eq_db(%struct.ocrdma_dev* %91, i32 %95, i32 1, i32 1, i32 0)
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %97
}

declare dso_local %struct.ocrdma_eqe* @ocrdma_get_eqe(%struct.ocrdma_eq*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocrdma_le32_to_cpu(%struct.ocrdma_eqe*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @ocrdma_ring_eq_db(%struct.ocrdma_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @ocrdma_cq_handler(%struct.ocrdma_dev*, i32) #1

declare dso_local i32 @ocrdma_eq_inc_tail(%struct.ocrdma_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
