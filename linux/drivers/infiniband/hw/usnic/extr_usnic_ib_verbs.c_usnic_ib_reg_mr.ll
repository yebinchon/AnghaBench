; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_reg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_verbs.c_usnic_ib_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i64, i64 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.usnic_ib_mr = type { %struct.ib_mr, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"start 0x%llx va 0x%llx length 0x%llx\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @usnic_ib_reg_mr(%struct.ib_pd* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca %struct.usnic_ib_mr*, align 8
  %15 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @usnic_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.usnic_ib_mr* @kzalloc(i32 24, i32 %20)
  store %struct.usnic_ib_mr* %21, %struct.usnic_ib_mr** %14, align 8
  %22 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %14, align 8
  %23 = icmp ne %struct.usnic_ib_mr* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.ib_mr* @ERR_PTR(i32 %26)
  store %struct.ib_mr* %27, %struct.ib_mr** %7, align 8
  br label %73

28:                                               ; preds = %6
  %29 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %30 = call %struct.TYPE_2__* @to_upd(%struct.ib_pd* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @usnic_uiom_reg_get(i32 %32, i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %14, align 8
  %38 = getelementptr inbounds %struct.usnic_ib_mr, %struct.usnic_ib_mr* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %14, align 8
  %40 = getelementptr inbounds %struct.usnic_ib_mr, %struct.usnic_ib_mr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @IS_ERR_OR_NULL(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %28
  %45 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %14, align 8
  %46 = getelementptr inbounds %struct.usnic_ib_mr, %struct.usnic_ib_mr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %14, align 8
  %51 = getelementptr inbounds %struct.usnic_ib_mr, %struct.usnic_ib_mr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @PTR_ERR(i64 %52)
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @EFAULT, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %49
  %58 = phi i32 [ %53, %49 ], [ %56, %54 ]
  store i32 %58, i32* %15, align 4
  br label %68

59:                                               ; preds = %28
  %60 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %14, align 8
  %61 = getelementptr inbounds %struct.usnic_ib_mr, %struct.usnic_ib_mr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %14, align 8
  %64 = getelementptr inbounds %struct.usnic_ib_mr, %struct.usnic_ib_mr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %14, align 8
  %67 = getelementptr inbounds %struct.usnic_ib_mr, %struct.usnic_ib_mr* %66, i32 0, i32 0
  store %struct.ib_mr* %67, %struct.ib_mr** %7, align 8
  br label %73

68:                                               ; preds = %57
  %69 = load %struct.usnic_ib_mr*, %struct.usnic_ib_mr** %14, align 8
  %70 = call i32 @kfree(%struct.usnic_ib_mr* %69)
  %71 = load i32, i32* %15, align 4
  %72 = call %struct.ib_mr* @ERR_PTR(i32 %71)
  store %struct.ib_mr* %72, %struct.ib_mr** %7, align 8
  br label %73

73:                                               ; preds = %68, %59, %24
  %74 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %74
}

declare dso_local i32 @usnic_dbg(i8*, i32, i32, i32) #1

declare dso_local %struct.usnic_ib_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i64 @usnic_uiom_reg_get(i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @to_upd(%struct.ib_pd*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @kfree(%struct.usnic_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
