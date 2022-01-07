; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_alloc_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_alloc_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_pd = type { %struct.ib_mr }
%struct.rxe_mem = type { %struct.ib_mr }

@IB_MR_TYPE_MEM_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mr* (%struct.ib_pd*, i32, i32, %struct.ib_udata*)* @rxe_alloc_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mr* @rxe_alloc_mr(%struct.ib_pd* %0, i32 %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.rxe_dev*, align 8
  %11 = alloca %struct.rxe_pd*, align 8
  %12 = alloca %struct.rxe_mem*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %14 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %15 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.rxe_dev* @to_rdev(i32 %16)
  store %struct.rxe_dev* %17, %struct.rxe_dev** %10, align 8
  %18 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %19 = call %struct.rxe_pd* @to_rpd(%struct.ib_pd* %18)
  store %struct.rxe_pd* %19, %struct.rxe_pd** %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @IB_MR_TYPE_MEM_REG, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.ib_mr* @ERR_PTR(i32 %25)
  store %struct.ib_mr* %26, %struct.ib_mr** %5, align 8
  br label %66

27:                                               ; preds = %4
  %28 = load %struct.rxe_dev*, %struct.rxe_dev** %10, align 8
  %29 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %28, i32 0, i32 0
  %30 = call %struct.rxe_pd* @rxe_alloc(i32* %29)
  %31 = bitcast %struct.rxe_pd* %30 to %struct.rxe_mem*
  store %struct.rxe_mem* %31, %struct.rxe_mem** %12, align 8
  %32 = load %struct.rxe_mem*, %struct.rxe_mem** %12, align 8
  %33 = icmp ne %struct.rxe_mem* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  br label %63

37:                                               ; preds = %27
  %38 = load %struct.rxe_mem*, %struct.rxe_mem** %12, align 8
  %39 = bitcast %struct.rxe_mem* %38 to %struct.rxe_pd*
  %40 = call i32 @rxe_add_index(%struct.rxe_pd* %39)
  %41 = load %struct.rxe_pd*, %struct.rxe_pd** %11, align 8
  %42 = call i32 @rxe_add_ref(%struct.rxe_pd* %41)
  %43 = load %struct.rxe_pd*, %struct.rxe_pd** %11, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.rxe_mem*, %struct.rxe_mem** %12, align 8
  %46 = bitcast %struct.rxe_mem* %45 to %struct.rxe_pd*
  %47 = call i32 @rxe_mem_init_fast(%struct.rxe_pd* %43, i32 %44, %struct.rxe_pd* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %54

51:                                               ; preds = %37
  %52 = load %struct.rxe_mem*, %struct.rxe_mem** %12, align 8
  %53 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %52, i32 0, i32 0
  store %struct.ib_mr* %53, %struct.ib_mr** %5, align 8
  br label %66

54:                                               ; preds = %50
  %55 = load %struct.rxe_pd*, %struct.rxe_pd** %11, align 8
  %56 = call i32 @rxe_drop_ref(%struct.rxe_pd* %55)
  %57 = load %struct.rxe_mem*, %struct.rxe_mem** %12, align 8
  %58 = bitcast %struct.rxe_mem* %57 to %struct.rxe_pd*
  %59 = call i32 @rxe_drop_index(%struct.rxe_pd* %58)
  %60 = load %struct.rxe_mem*, %struct.rxe_mem** %12, align 8
  %61 = bitcast %struct.rxe_mem* %60 to %struct.rxe_pd*
  %62 = call i32 @rxe_drop_ref(%struct.rxe_pd* %61)
  br label %63

63:                                               ; preds = %54, %34
  %64 = load i32, i32* %13, align 4
  %65 = call %struct.ib_mr* @ERR_PTR(i32 %64)
  store %struct.ib_mr* %65, %struct.ib_mr** %5, align 8
  br label %66

66:                                               ; preds = %63, %51, %23
  %67 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  ret %struct.ib_mr* %67
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.rxe_pd* @to_rpd(%struct.ib_pd*) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.rxe_pd* @rxe_alloc(i32*) #1

declare dso_local i32 @rxe_add_index(%struct.rxe_pd*) #1

declare dso_local i32 @rxe_add_ref(%struct.rxe_pd*) #1

declare dso_local i32 @rxe_mem_init_fast(%struct.rxe_pd*, i32, %struct.rxe_pd*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_pd*) #1

declare dso_local i32 @rxe_drop_index(%struct.rxe_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
