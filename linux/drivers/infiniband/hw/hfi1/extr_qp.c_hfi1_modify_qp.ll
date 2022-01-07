; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i32, i32, %struct.hfi1_qp_priv*, %struct.ib_qp }
%struct.hfi1_qp_priv = type { i8*, i8*, i8* }
%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i64 }
%struct.ib_udata = type { i32 }

@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QP_PATH_MIG_STATE = common dso_local global i32 0, align 4
@IB_MIG_MIGRATED = common dso_local global i64 0, align 8
@IB_MIG_ARMED = common dso_local global i64 0, align 8
@HFI1_S_AHG_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_modify_qp(%struct.rvt_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.rvt_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_udata*, align 8
  %9 = alloca %struct.ib_qp*, align 8
  %10 = alloca %struct.hfi1_qp_priv*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %8, align 8
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %12 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %11, i32 0, i32 4
  store %struct.ib_qp* %12, %struct.ib_qp** %9, align 8
  %13 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %14 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %13, i32 0, i32 3
  %15 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %14, align 8
  store %struct.hfi1_qp_priv* %15, %struct.hfi1_qp_priv** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @IB_QP_AV, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %4
  %21 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %22 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 1
  %26 = call i8* @ah_to_sc(i32 %23, i32* %25)
  %27 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  %28 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %30 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  %31 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @qp_to_sdma_engine(%struct.rvt_qp* %29, i8* %32)
  %34 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  %35 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %37 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  %38 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i8* @qp_to_send_context(%struct.rvt_qp* %36, i8* %39)
  %41 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  %42 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %44 = call i32 @qp_set_16b(%struct.rvt_qp* %43)
  br label %45

45:                                               ; preds = %20, %4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IB_QP_PATH_MIG_STATE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %45
  %51 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %52 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IB_MIG_MIGRATED, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %50
  %57 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %58 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IB_MIG_ARMED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = load i32, i32* @HFI1_S_AHG_CLEAR, align 4
  %64 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %65 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %69 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %72 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %71, i32 0, i32 1
  %73 = call i8* @ah_to_sc(i32 %70, i32* %72)
  %74 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  %75 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %77 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  %78 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @qp_to_sdma_engine(%struct.rvt_qp* %76, i8* %79)
  %81 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  %82 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %84 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  %85 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @qp_to_send_context(%struct.rvt_qp* %83, i8* %86)
  %88 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  %89 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %91 = call i32 @qp_set_16b(%struct.rvt_qp* %90)
  br label %92

92:                                               ; preds = %62, %56, %50, %45
  %93 = load %struct.rvt_qp*, %struct.rvt_qp** %5, align 8
  %94 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @opfn_qp_init(%struct.rvt_qp* %93, %struct.ib_qp_attr* %94, i32 %95)
  ret void
}

declare dso_local i8* @ah_to_sc(i32, i32*) #1

declare dso_local i8* @qp_to_sdma_engine(%struct.rvt_qp*, i8*) #1

declare dso_local i8* @qp_to_send_context(%struct.rvt_qp*, i8*) #1

declare dso_local i32 @qp_set_16b(%struct.rvt_qp*) #1

declare dso_local i32 @opfn_qp_init(%struct.rvt_qp*, %struct.ib_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
