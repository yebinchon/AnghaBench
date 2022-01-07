; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_device = type { i32 }
%struct.siw_qp = type { %struct.TYPE_2__*, i32, %struct.siw_device*, i32 }
%struct.TYPE_2__ = type { i32 }

@xa_limit_32b = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"new QP\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_qp_add(%struct.siw_device* %0, %struct.siw_qp* %1) #0 {
  %3 = alloca %struct.siw_device*, align 8
  %4 = alloca %struct.siw_qp*, align 8
  %5 = alloca i32, align 4
  store %struct.siw_device* %0, %struct.siw_device** %3, align 8
  store %struct.siw_qp* %1, %struct.siw_qp** %4, align 8
  %6 = load %struct.siw_device*, %struct.siw_device** %3, align 8
  %7 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %6, i32 0, i32 0
  %8 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %9 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %13 = load i32, i32* @xa_limit_32b, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @xa_alloc(i32* %7, i32* %11, %struct.siw_qp* %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %2
  %19 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %20 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %19, i32 0, i32 3
  %21 = call i32 @kref_init(i32* %20)
  %22 = load %struct.siw_device*, %struct.siw_device** %3, align 8
  %23 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %24 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %23, i32 0, i32 2
  store %struct.siw_device* %22, %struct.siw_device** %24, align 8
  %25 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %26 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %31 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.siw_qp*, %struct.siw_qp** %4, align 8
  %33 = call i32 @siw_dbg_qp(%struct.siw_qp* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %18, %2
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @xa_alloc(i32*, i32*, %struct.siw_qp*, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @siw_dbg_qp(%struct.siw_qp*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
