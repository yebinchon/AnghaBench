; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cq.c_siw_reap_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cq.c_siw_reap_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.siw_cq = type { i64, i64, i32, i32, %struct.siw_cqe* }
%struct.siw_cqe = type { i32, i64, i64, i64, i32, i32, i32 }
%struct.ib_wc = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32 }

@SIW_WQE_VALID = common dso_local global i32 0, align 4
@map_cqe_status = common dso_local global %struct.TYPE_4__* null, align 8
@map_wc_opcode = common dso_local global i32* null, align 8
@SIW_WQE_REM_INVAL = common dso_local global i32 0, align 4
@IB_WC_WITH_INVALIDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"idx %u, type %d, flags %2x, id 0x%pK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_reap_cqe(%struct.siw_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siw_cq*, align 8
  %5 = alloca %struct.ib_wc*, align 8
  %6 = alloca %struct.siw_cqe*, align 8
  %7 = alloca i64, align 8
  store %struct.siw_cq* %0, %struct.siw_cq** %4, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %5, align 8
  %8 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %9 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %8, i32 0, i32 2
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %13 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %12, i32 0, i32 4
  %14 = load %struct.siw_cqe*, %struct.siw_cqe** %13, align 8
  %15 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %16 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %19 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = urem i64 %17, %20
  %22 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %14, i64 %21
  store %struct.siw_cqe* %22, %struct.siw_cqe** %6, align 8
  %23 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %24 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @READ_ONCE(i32 %25)
  %27 = load i32, i32* @SIW_WQE_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %121

30:                                               ; preds = %2
  %31 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %32 = call i32 @memset(%struct.ib_wc* %31, i32 0, i32 32)
  %33 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %34 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %37 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %36, i32 0, i32 6
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @map_cqe_status, align 8
  %39 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %40 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %46 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** @map_wc_opcode, align 8
  %48 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %49 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %54 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %56 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %59 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %61 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @likely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %30
  %66 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %67 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @SIW_WQE_REM_INVAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %74 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %77 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @IB_WC_WITH_INVALIDATE, align 4
  %80 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %81 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %65
  %83 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %84 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %87 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %89 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %90 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %93 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = urem i64 %91, %94
  %96 = trunc i64 %95 to i32
  %97 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %98 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %101 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %104 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 @siw_dbg_cq(%struct.siw_cq* %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %96, i64 %99, i32 %102, i8* %106)
  br label %108

108:                                              ; preds = %82, %30
  %109 = load %struct.siw_cqe*, %struct.siw_cqe** %6, align 8
  %110 = getelementptr inbounds %struct.siw_cqe, %struct.siw_cqe* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @WRITE_ONCE(i32 %111, i32 0)
  %113 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %114 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %114, align 8
  %117 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %118 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %117, i32 0, i32 2
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  store i32 1, i32* %3, align 4
  br label %126

121:                                              ; preds = %2
  %122 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %123 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %122, i32 0, i32 2
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @spin_unlock_irqrestore(i32* %123, i64 %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %121, %108
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @siw_dbg_cq(%struct.siw_cq*, i8*, i32, i64, i32, i8*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
