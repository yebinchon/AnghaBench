; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.ib_recv_wr*, i32, i32 }
%struct.siw_srq = type { i64, i64, i32, i32, %struct.siw_rqe*, i32 }
%struct.siw_rqe = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"[SRQ]: no kernel post_recv for mapped srq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"SRQ full\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"[SRQ]: too many sge's: %d\0A\00", align 1
@SIW_WQE_VALID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"[SRQ]: error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_post_srq_recv(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.siw_srq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.siw_rqe*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %12 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %13 = call %struct.siw_srq* @to_siw_srq(%struct.ib_srq* %12)
  store %struct.siw_srq* %13, %struct.siw_srq** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.siw_srq*, %struct.siw_srq** %7, align 8
  %15 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %24 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, ...) @siw_dbg_pd(i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %119

29:                                               ; preds = %3
  %30 = load %struct.siw_srq*, %struct.siw_srq** %7, align 8
  %31 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %30, i32 0, i32 3
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %82, %29
  %35 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %36 = icmp ne %struct.ib_recv_wr* %35, null
  br i1 %36, label %37, label %114

37:                                               ; preds = %34
  %38 = load %struct.siw_srq*, %struct.siw_srq** %7, align 8
  %39 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.siw_srq*, %struct.siw_srq** %7, align 8
  %42 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = urem i64 %40, %43
  store i64 %44, i64* %10, align 8
  %45 = load %struct.siw_srq*, %struct.siw_srq** %7, align 8
  %46 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %45, i32 0, i32 4
  %47 = load %struct.siw_rqe*, %struct.siw_rqe** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %47, i64 %48
  store %struct.siw_rqe* %49, %struct.siw_rqe** %11, align 8
  %50 = load %struct.siw_rqe*, %struct.siw_rqe** %11, align 8
  %51 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %37
  %55 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %56 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @siw_dbg_pd(i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %114

61:                                               ; preds = %37
  %62 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %63 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.siw_srq*, %struct.siw_srq** %7, align 8
  %66 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %61
  %73 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %74 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %77 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @siw_dbg_pd(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %114

82:                                               ; preds = %61
  %83 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %84 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.siw_rqe*, %struct.siw_rqe** %11, align 8
  %87 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %89 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.siw_rqe*, %struct.siw_rqe** %11, align 8
  %92 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %94 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.siw_rqe*, %struct.siw_rqe** %11, align 8
  %97 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %100 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @siw_copy_sgl(i32 %95, i32 %98, i32 %101)
  %103 = call i32 (...) @smp_wmb()
  %104 = load i64, i64* @SIW_WQE_VALID, align 8
  %105 = load %struct.siw_rqe*, %struct.siw_rqe** %11, align 8
  %106 = getelementptr inbounds %struct.siw_rqe, %struct.siw_rqe* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.siw_srq*, %struct.siw_srq** %7, align 8
  %108 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %112 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %111, i32 0, i32 1
  %113 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %112, align 8
  store %struct.ib_recv_wr* %113, %struct.ib_recv_wr** %5, align 8
  br label %34

114:                                              ; preds = %72, %54, %34
  %115 = load %struct.siw_srq*, %struct.siw_srq** %7, align 8
  %116 = getelementptr inbounds %struct.siw_srq, %struct.siw_srq* %115, i32 0, i32 3
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  br label %119

119:                                              ; preds = %114, %22
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %127 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i32, i8*, ...) @siw_dbg_pd(i32 %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %132 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %131, %struct.ib_recv_wr** %132, align 8
  br label %133

133:                                              ; preds = %125, %119
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local %struct.siw_srq* @to_siw_srq(%struct.ib_srq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @siw_dbg_pd(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @siw_copy_sgl(i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
