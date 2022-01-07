; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i32, i32 }
%struct.ib_qp_init_attr = type { i32, i32, i32 }
%struct.usnic_ib_qp_grp = type { %struct.TYPE_3__, i32, %struct.usnic_ib_vf* }
%struct.TYPE_3__ = type { i32 }
%struct.usnic_ib_vf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Unexpected qp_type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usnic_ib_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_qp_init_attr*, align 8
  %10 = alloca %struct.usnic_ib_qp_grp*, align 8
  %11 = alloca %struct.usnic_ib_vf*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %9, align 8
  %13 = call i32 @usnic_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %15 = bitcast %struct.ib_qp_attr* %14 to %struct.ib_qp_init_attr*
  %16 = call i32 @memset(%struct.ib_qp_init_attr* %15, i32 0, i32 12)
  %17 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %18 = call i32 @memset(%struct.ib_qp_init_attr* %17, i32 0, i32 12)
  %19 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %20 = call %struct.usnic_ib_qp_grp* @to_uqp_grp(%struct.ib_qp* %19)
  store %struct.usnic_ib_qp_grp* %20, %struct.usnic_ib_qp_grp** %10, align 8
  %21 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %10, align 8
  %22 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %21, i32 0, i32 2
  %23 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %22, align 8
  store %struct.usnic_ib_vf* %23, %struct.usnic_ib_vf** %11, align 8
  %24 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %11, align 8
  %25 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = call i32 @usnic_dbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %10, align 8
  %31 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %34 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %10, align 8
  %36 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %39 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %10, align 8
  %41 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %47 [
    i32 128, label %44
  ]

44:                                               ; preds = %4
  %45 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %46 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %55

47:                                               ; preds = %4
  %48 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %10, align 8
  %49 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @usnic_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %61

55:                                               ; preds = %44
  %56 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %11, align 8
  %57 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  store i32 0, i32* %5, align 4
  br label %68

61:                                               ; preds = %47
  %62 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %11, align 8
  %63 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %55
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @usnic_dbg(i8*) #1

declare dso_local i32 @memset(%struct.ib_qp_init_attr*, i32, i32) #1

declare dso_local %struct.usnic_ib_qp_grp* @to_uqp_grp(%struct.ib_qp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usnic_err(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
