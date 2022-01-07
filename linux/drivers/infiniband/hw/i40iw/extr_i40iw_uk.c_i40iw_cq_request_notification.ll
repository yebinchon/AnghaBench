; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_cq_request_notification.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_uk.c_i40iw_cq_request_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cq_uk = type { i32, i32, i32 }

@I40IW_CQ_DBSA_ARM_SEQ_NUM = common dso_local global i32 0, align 4
@I40IW_CQ_DBSA_SW_CQ_SELECT = common dso_local global i32 0, align 4
@I40IW_CQ_DBSA_ARM_NEXT_SE = common dso_local global i32 0, align 4
@IW_CQ_COMPL_EVENT = common dso_local global i32 0, align 4
@I40IW_CQ_DBSA_ARM_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cq_uk*, i32)* @i40iw_cq_request_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_cq_request_notification(%struct.i40iw_cq_uk* %0, i32 %1) #0 {
  %3 = alloca %struct.i40iw_cq_uk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40iw_cq_uk* %0, %struct.i40iw_cq_uk** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @get_64bit_val(i32 %12, i32 32, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @I40IW_CQ_DBSA_ARM_SEQ_NUM, align 4
  %16 = call i64 @RS_64(i32 %14, i32 %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @I40IW_CQ_DBSA_SW_CQ_SELECT, align 4
  %22 = call i64 @RS_64(i32 %20, i32 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @I40IW_CQ_DBSA_ARM_NEXT_SE, align 4
  %26 = call i64 @RS_64(i32 %24, i32 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @IW_CQ_COMPL_EVENT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @I40IW_CQ_DBSA_ARM_SEQ_NUM, align 4
  %37 = call i32 @LS_64(i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @I40IW_CQ_DBSA_SW_CQ_SELECT, align 4
  %40 = call i32 @LS_64(i32 %38, i32 %39)
  %41 = or i32 %37, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @I40IW_CQ_DBSA_ARM_NEXT_SE, align 4
  %44 = call i32 @LS_64(i32 %42, i32 %43)
  %45 = or i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @I40IW_CQ_DBSA_ARM_NEXT, align 4
  %48 = call i32 @LS_64(i32 %46, i32 %47)
  %49 = or i32 %45, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %3, align 8
  %51 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @set_64bit_val(i32 %52, i32 32, i32 %53)
  %55 = call i32 (...) @wmb()
  %56 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %3, align 8
  %57 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.i40iw_cq_uk*, %struct.i40iw_cq_uk** %3, align 8
  %60 = getelementptr inbounds %struct.i40iw_cq_uk, %struct.i40iw_cq_uk* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @writel(i32 %58, i32 %61)
  ret void
}

declare dso_local i32 @get_64bit_val(i32, i32, i32*) #1

declare dso_local i64 @RS_64(i32, i32) #1

declare dso_local i32 @LS_64(i32, i32) #1

declare dso_local i32 @set_64bit_val(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
