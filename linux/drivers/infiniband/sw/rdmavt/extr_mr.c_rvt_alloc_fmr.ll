; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_alloc_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mr.c_rvt_alloc_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ib_fmr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_fmr_attr = type { i32, i32 }
%struct.rvt_fmr = type { %struct.TYPE_5__, %struct.ib_fmr }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@RVT_SEGSZ = common dso_local global i32 0, align 4
@mr = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PERCPU_REF_INIT_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_fmr* @rvt_alloc_fmr(%struct.ib_pd* %0, i32 %1, %struct.ib_fmr_attr* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_fmr_attr*, align 8
  %7 = alloca %struct.rvt_fmr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_fmr*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_fmr_attr* %2, %struct.ib_fmr_attr** %6, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %6, align 8
  %14 = getelementptr inbounds %struct.ib_fmr_attr, %struct.ib_fmr_attr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RVT_SEGSZ, align 4
  %17 = add nsw i32 %15, %16
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* @RVT_SEGSZ, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mr, i32 0, i32 0), align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @struct_size(%struct.rvt_fmr* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.rvt_fmr* @kzalloc(i32 %24, i32 %25)
  store %struct.rvt_fmr* %26, %struct.rvt_fmr** %7, align 8
  %27 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %28 = icmp ne %struct.rvt_fmr* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  br label %88

30:                                               ; preds = %3
  %31 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %32 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %31, i32 0, i32 0
  %33 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %34 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %6, align 8
  %35 = getelementptr inbounds %struct.ib_fmr_attr, %struct.ib_fmr_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PERCPU_REF_INIT_ATOMIC, align 4
  %38 = call i32 @rvt_init_mregion(%struct.TYPE_5__* %32, %struct.ib_pd* %33, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %88

42:                                               ; preds = %30
  %43 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %44 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %43, i32 0, i32 0
  %45 = call i32 @rvt_alloc_lkey(%struct.TYPE_5__* %44, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %84

49:                                               ; preds = %42
  %50 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %51 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %55 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %58 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %62 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %66 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %6, align 8
  %69 = getelementptr inbounds %struct.ib_fmr_attr, %struct.ib_fmr_attr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %72 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.ib_fmr_attr*, %struct.ib_fmr_attr** %6, align 8
  %75 = getelementptr inbounds %struct.ib_fmr_attr, %struct.ib_fmr_attr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %78 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %81 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %80, i32 0, i32 1
  store %struct.ib_fmr* %81, %struct.ib_fmr** %9, align 8
  br label %82

82:                                               ; preds = %88, %49
  %83 = load %struct.ib_fmr*, %struct.ib_fmr** %9, align 8
  ret %struct.ib_fmr* %83

84:                                               ; preds = %48
  %85 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %86 = getelementptr inbounds %struct.rvt_fmr, %struct.rvt_fmr* %85, i32 0, i32 0
  %87 = call i32 @rvt_deinit_mregion(%struct.TYPE_5__* %86)
  br label %88

88:                                               ; preds = %84, %41, %29
  %89 = load %struct.rvt_fmr*, %struct.rvt_fmr** %7, align 8
  %90 = call i32 @kfree(%struct.rvt_fmr* %89)
  %91 = load i32, i32* %10, align 4
  %92 = call %struct.ib_fmr* @ERR_PTR(i32 %91)
  store %struct.ib_fmr* %92, %struct.ib_fmr** %9, align 8
  br label %82
}

declare dso_local %struct.rvt_fmr* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.rvt_fmr*, i32, i32) #1

declare dso_local i32 @rvt_init_mregion(%struct.TYPE_5__*, %struct.ib_pd*, i32, i32) #1

declare dso_local i32 @rvt_alloc_lkey(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @rvt_deinit_mregion(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.rvt_fmr*) #1

declare dso_local %struct.ib_fmr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
