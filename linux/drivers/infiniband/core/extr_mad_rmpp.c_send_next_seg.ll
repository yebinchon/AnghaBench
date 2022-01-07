; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad_rmpp.c_send_next_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad_rmpp.c_send_next_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_send_wr_private = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.ib_rmpp_mad* }
%struct.ib_rmpp_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i8* }

@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_FLAG_FIRST = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_FLAG_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_send_wr_private*)* @send_next_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_next_seg(%struct.ib_mad_send_wr_private* %0) #0 {
  %2 = alloca %struct.ib_mad_send_wr_private*, align 8
  %3 = alloca %struct.ib_rmpp_mad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ib_mad_send_wr_private* %0, %struct.ib_mad_send_wr_private** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %7 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %8, align 8
  store %struct.ib_rmpp_mad* %9, %struct.ib_rmpp_mad** %3, align 8
  %10 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %11 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %10, i32 0, i32 0
  %12 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %13 = call i32 @ib_set_rmpp_flags(%struct.TYPE_4__* %11, i32 %12)
  %14 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %15 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = call i8* @cpu_to_be32(i32 %17)
  %19 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %20 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i8* %18, i8** %21, align 8
  %22 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %23 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %46

26:                                               ; preds = %1
  %27 = load i32, i32* @IB_MGMT_RMPP_FLAG_FIRST, align 4
  %28 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %29 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 8
  %33 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %34 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %38 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %36, %40
  %42 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %43 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %26, %1
  %47 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %48 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %51 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %46
  %56 = load i32, i32* @IB_MGMT_RMPP_FLAG_LAST, align 4
  %57 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %58 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %56
  store i32 %61, i32* %59, align 8
  %62 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %63 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %67 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %55, %46
  %71 = load i32, i32* %5, align 4
  %72 = call i8* @cpu_to_be32(i32 %71)
  %73 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %3, align 8
  %74 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %77 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load i32, i32* %4, align 4
  %84 = icmp sgt i32 %83, 2000
  br i1 %84, label %85, label %89

85:                                               ; preds = %82, %70
  %86 = call i32 @msecs_to_jiffies(i32 2000)
  %87 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %88 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %82
  %90 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %2, align 8
  %91 = call i32 @ib_send_mad(%struct.ib_mad_send_wr_private* %90)
  ret i32 %91
}

declare dso_local i32 @ib_set_rmpp_flags(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ib_send_mad(%struct.ib_mad_send_wr_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
