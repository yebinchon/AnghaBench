; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_set_dif_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_set_dif_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ib_sig_domain = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }

@IB_SIG_TYPE_T10_DIF = common dso_local global i32 0, align 4
@IB_T10DIF_CRC = common dso_local global i32 0, align 4
@TARGET_DIF_TYPE1_PROT = common dso_local global i64 0, align 8
@TARGET_DIF_TYPE2_PROT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*, %struct.ib_sig_domain*)* @isert_set_dif_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isert_set_dif_domain(%struct.se_cmd* %0, %struct.ib_sig_domain* %1) #0 {
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.ib_sig_domain*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store %struct.ib_sig_domain* %1, %struct.ib_sig_domain** %4, align 8
  %5 = load i32, i32* @IB_SIG_TYPE_T10_DIF, align 4
  %6 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %7 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @IB_T10DIF_CRC, align 4
  %9 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %10 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  store i32 %8, i32* %12, align 4
  %13 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %20 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  store i32 %18, i32* %22, align 4
  %23 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %27 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  store i32 %25, i32* %29, align 4
  %30 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %31 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 65535, i32* %33, align 4
  %34 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %35 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %39 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %43 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TARGET_DIF_TYPE1_PROT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %2
  %48 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %49 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TARGET_DIF_TYPE2_PROT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47, %2
  %54 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %55 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
