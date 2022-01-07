; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i64 }
%struct.siw_cep = type { i64, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SIW_EPSTATE_RECVD_MPAREQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of state\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"cep->state %d, pd_len %d\0A\00", align 1
@MPA_REVISION_1 = common dso_local global i64 0, align 8
@MPA_RR_FLAG_REJECT = common dso_local global i32 0, align 4
@SIW_EPSTATE_CLOSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_reject(%struct.iw_cm_id* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iw_cm_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.siw_cep*, align 8
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %10 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.siw_cep*
  store %struct.siw_cep* %12, %struct.siw_cep** %8, align 8
  %13 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %14 = call i32 @siw_cep_set_inuse(%struct.siw_cep* %13)
  %15 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %16 = call i32 @siw_cep_put(%struct.siw_cep* %15)
  %17 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %18 = call i32 @siw_cancel_mpatimer(%struct.siw_cep* %17)
  %19 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %20 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SIW_EPSTATE_RECVD_MPAREQ, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %26 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %28 = call i32 @siw_cep_set_free(%struct.siw_cep* %27)
  %29 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %30 = call i32 @siw_cep_put(%struct.siw_cep* %29)
  %31 = load i32, i32* @ECONNRESET, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %80

33:                                               ; preds = %3
  %34 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %35 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %36 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (%struct.siw_cep*, i8*, ...) @siw_dbg_cep(%struct.siw_cep* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %37, i32 %38)
  %40 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %41 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @__mpa_rr_revision(i32 %45)
  %47 = load i64, i64* @MPA_REVISION_1, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %33
  %50 = load i32, i32* @MPA_RR_FLAG_REJECT, align 4
  %51 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %52 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %50
  store i32 %57, i32* %55, align 8
  %58 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @siw_send_mpareqrep(%struct.siw_cep* %58, i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %33
  %63 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %64 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @siw_socket_disassoc(i32* %65)
  %67 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %68 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @sock_release(i32* %69)
  %71 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %72 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load i64, i64* @SIW_EPSTATE_CLOSED, align 8
  %74 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %75 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %77 = call i32 @siw_cep_set_free(%struct.siw_cep* %76)
  %78 = load %struct.siw_cep*, %struct.siw_cep** %8, align 8
  %79 = call i32 @siw_cep_put(%struct.siw_cep* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %62, %24
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @siw_cep_set_inuse(%struct.siw_cep*) #1

declare dso_local i32 @siw_cep_put(%struct.siw_cep*) #1

declare dso_local i32 @siw_cancel_mpatimer(%struct.siw_cep*) #1

declare dso_local i32 @siw_dbg_cep(%struct.siw_cep*, i8*, ...) #1

declare dso_local i32 @siw_cep_set_free(%struct.siw_cep*) #1

declare dso_local i64 @__mpa_rr_revision(i32) #1

declare dso_local i32 @siw_send_mpareqrep(%struct.siw_cep*, i8*, i32) #1

declare dso_local i32 @siw_socket_disassoc(i32*) #1

declare dso_local i32 @sock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
