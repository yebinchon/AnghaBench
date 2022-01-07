; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.rvt_mr = type { %struct.TYPE_5__, %struct.ib_mr }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @rvt_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvt_mr*, align 8
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %10 = call %struct.TYPE_6__* @ibpd_to_rvtpd(%struct.ib_pd* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @EPERM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.ib_mr* @ERR_PTR(i32 %16)
  store %struct.ib_mr* %17, %struct.ib_mr** %3, align 8
  br label %62

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.rvt_mr* @kzalloc(i32 8, i32 %19)
  store %struct.rvt_mr* %20, %struct.rvt_mr** %6, align 8
  %21 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %22 = icmp ne %struct.rvt_mr* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ib_mr* @ERR_PTR(i32 %25)
  store %struct.ib_mr* %26, %struct.ib_mr** %7, align 8
  br label %59

27:                                               ; preds = %18
  %28 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %29 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %28, i32 0, i32 0
  %30 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %31 = call i32 @rvt_init_mregion(%struct.TYPE_5__* %29, %struct.ib_pd* %30, i32 0, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.ib_mr* @ERR_PTR(i32 %35)
  store %struct.ib_mr* %36, %struct.ib_mr** %7, align 8
  br label %59

37:                                               ; preds = %27
  %38 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %39 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %38, i32 0, i32 0
  %40 = call i32 @rvt_alloc_lkey(%struct.TYPE_5__* %39, i32 1)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.ib_mr* @ERR_PTR(i32 %44)
  store %struct.ib_mr* %45, %struct.ib_mr** %7, align 8
  br label %55

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %49 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %52 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %51, i32 0, i32 1
  store %struct.ib_mr* %52, %struct.ib_mr** %7, align 8
  br label %53

53:                                               ; preds = %59, %46
  %54 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  store %struct.ib_mr* %54, %struct.ib_mr** %3, align 8
  br label %62

55:                                               ; preds = %43
  %56 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %57 = getelementptr inbounds %struct.rvt_mr, %struct.rvt_mr* %56, i32 0, i32 0
  %58 = call i32 @rvt_deinit_mregion(%struct.TYPE_5__* %57)
  br label %59

59:                                               ; preds = %55, %34, %23
  %60 = load %struct.rvt_mr*, %struct.rvt_mr** %6, align 8
  %61 = call i32 @kfree(%struct.rvt_mr* %60)
  br label %53

62:                                               ; preds = %53, %14
  %63 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %63
}

declare dso_local %struct.TYPE_6__* @ibpd_to_rvtpd(%struct.ib_pd*) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.rvt_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @rvt_init_mregion(%struct.TYPE_5__*, %struct.ib_pd*, i32, i32) #1

declare dso_local i32 @rvt_alloc_lkey(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @rvt_deinit_mregion(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.rvt_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
