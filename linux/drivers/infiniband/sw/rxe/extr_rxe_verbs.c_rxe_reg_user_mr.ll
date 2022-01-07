; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_pd = type { %struct.ib_mr }
%struct.rxe_mem = type { %struct.ib_mr }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_mr* (%struct.ib_pd*, i32, i32, i32, i32, %struct.ib_udata*)* @rxe_reg_user_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_mr* @rxe_reg_user_mr(%struct.ib_pd* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.rxe_dev*, align 8
  %16 = alloca %struct.rxe_pd*, align 8
  %17 = alloca %struct.rxe_mem*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %18 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %19 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.rxe_dev* @to_rdev(i32 %20)
  store %struct.rxe_dev* %21, %struct.rxe_dev** %15, align 8
  %22 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %23 = call %struct.rxe_pd* @to_rpd(%struct.ib_pd* %22)
  store %struct.rxe_pd* %23, %struct.rxe_pd** %16, align 8
  %24 = load %struct.rxe_dev*, %struct.rxe_dev** %15, align 8
  %25 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %24, i32 0, i32 0
  %26 = call %struct.rxe_pd* @rxe_alloc(i32* %25)
  %27 = bitcast %struct.rxe_pd* %26 to %struct.rxe_mem*
  store %struct.rxe_mem* %27, %struct.rxe_mem** %17, align 8
  %28 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %29 = icmp ne %struct.rxe_mem* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %14, align 4
  br label %63

33:                                               ; preds = %6
  %34 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %35 = bitcast %struct.rxe_mem* %34 to %struct.rxe_pd*
  %36 = call i32 @rxe_add_index(%struct.rxe_pd* %35)
  %37 = load %struct.rxe_pd*, %struct.rxe_pd** %16, align 8
  %38 = call i32 @rxe_add_ref(%struct.rxe_pd* %37)
  %39 = load %struct.rxe_pd*, %struct.rxe_pd** %16, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %45 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %46 = bitcast %struct.rxe_mem* %45 to %struct.rxe_pd*
  %47 = call i32 @rxe_mem_init_user(%struct.rxe_pd* %39, i32 %40, i32 %41, i32 %42, i32 %43, %struct.ib_udata* %44, %struct.rxe_pd* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %54

51:                                               ; preds = %33
  %52 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %53 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %52, i32 0, i32 0
  store %struct.ib_mr* %53, %struct.ib_mr** %7, align 8
  br label %66

54:                                               ; preds = %50
  %55 = load %struct.rxe_pd*, %struct.rxe_pd** %16, align 8
  %56 = call i32 @rxe_drop_ref(%struct.rxe_pd* %55)
  %57 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %58 = bitcast %struct.rxe_mem* %57 to %struct.rxe_pd*
  %59 = call i32 @rxe_drop_index(%struct.rxe_pd* %58)
  %60 = load %struct.rxe_mem*, %struct.rxe_mem** %17, align 8
  %61 = bitcast %struct.rxe_mem* %60 to %struct.rxe_pd*
  %62 = call i32 @rxe_drop_ref(%struct.rxe_pd* %61)
  br label %63

63:                                               ; preds = %54, %30
  %64 = load i32, i32* %14, align 4
  %65 = call %struct.ib_mr* @ERR_PTR(i32 %64)
  store %struct.ib_mr* %65, %struct.ib_mr** %7, align 8
  br label %66

66:                                               ; preds = %63, %51
  %67 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %67
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.rxe_pd* @to_rpd(%struct.ib_pd*) #1

declare dso_local %struct.rxe_pd* @rxe_alloc(i32*) #1

declare dso_local i32 @rxe_add_index(%struct.rxe_pd*) #1

declare dso_local i32 @rxe_add_ref(%struct.rxe_pd*) #1

declare dso_local i32 @rxe_mem_init_user(%struct.rxe_pd*, i32, i32, i32, i32, %struct.ib_udata*, %struct.rxe_pd*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_pd*) #1

declare dso_local i32 @rxe_drop_index(%struct.rxe_pd*) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
