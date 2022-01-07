; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_validate_mad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_validate_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_hdr = type { i64, i64, i64, i64 }
%struct.ib_mad_qp_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IB_MGMT_BASE_VERSION = common dso_local global i64 0, align 8
@OPA_MGMT_BASE_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"MAD received with unsupported base version %d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"(opa)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_CM = common dso_local global i64 0, align 8
@IB_MGMT_CLASSPORTINFO_ATTR_ID = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_hdr*, %struct.ib_mad_qp_info*, i32)* @validate_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_mad(%struct.ib_mad_hdr* %0, %struct.ib_mad_qp_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_mad_hdr*, align 8
  %5 = alloca %struct.ib_mad_qp_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ib_mad_hdr* %0, %struct.ib_mad_hdr** %4, align 8
  store %struct.ib_mad_qp_info* %1, %struct.ib_mad_qp_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %5, align 8
  %10 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %15 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IB_MGMT_BASE_VERSION, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %24 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OPA_MGMT_BASE_VERSION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22, %19
  %29 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %31, i8* %35)
  br label %79

37:                                               ; preds = %22, %3
  %38 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %39 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %45 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43, %37
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %49
  br label %78

54:                                               ; preds = %43
  %55 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %56 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IB_MGMT_CLASS_CM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %62 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IB_MGMT_CLASSPORTINFO_ATTR_ID, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %4, align 8
  %68 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IB_MGMT_METHOD_SEND, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %79

73:                                               ; preds = %66, %60, %54
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %73
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78, %72, %28
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @pr_err(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
