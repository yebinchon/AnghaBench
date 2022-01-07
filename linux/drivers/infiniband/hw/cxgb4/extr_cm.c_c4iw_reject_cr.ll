; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_c4iw_reject_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_c4iw_reject_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i32 }
%struct.c4iw_ep = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ep %p tid %u\0A\00", align 1
@MPA_REQ_RCVD = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@ULP_REJECT = common dso_local global i32 0, align 4
@mpa_rev = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_reject_cr(%struct.iw_cm_id* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iw_cm_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.c4iw_ep*, align 8
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %11 = call %struct.c4iw_ep* @to_ep(%struct.iw_cm_id* %10)
  store %struct.c4iw_ep* %11, %struct.c4iw_ep** %9, align 8
  %12 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %13 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %14 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.c4iw_ep* %12, i32 %15)
  %17 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %18 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %22 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MPA_REQ_RCVD, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %29 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %33 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %32, i32 0, i32 0
  %34 = call i32 @c4iw_put_ep(%struct.TYPE_2__* %33)
  %35 = load i32, i32* @ECONNRESET, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %67

37:                                               ; preds = %3
  %38 = load i32, i32* @ULP_REJECT, align 4
  %39 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %40 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = call i32 @set_bit(i32 %38, i32* %41)
  %43 = load i64, i64* @mpa_rev, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @send_mpa_reject(%struct.c4iw_ep* %47, i8* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %53 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %57 = call i32 @stop_ep_timer(%struct.c4iw_ep* %56)
  %58 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @c4iw_ep_disconnect(%struct.c4iw_ep* %58, i32 %61, i32 %62)
  %64 = load %struct.c4iw_ep*, %struct.c4iw_ep** %9, align 8
  %65 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %64, i32 0, i32 0
  %66 = call i32 @c4iw_put_ep(%struct.TYPE_2__* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %51, %27
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.c4iw_ep* @to_ep(%struct.iw_cm_id*) #1

declare dso_local i32 @pr_debug(i8*, %struct.c4iw_ep*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @c4iw_put_ep(%struct.TYPE_2__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @send_mpa_reject(%struct.c4iw_ep*, i8*, i32) #1

declare dso_local i32 @stop_ep_timer(%struct.c4iw_ep*) #1

declare dso_local i32 @c4iw_ep_disconnect(%struct.c4iw_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
