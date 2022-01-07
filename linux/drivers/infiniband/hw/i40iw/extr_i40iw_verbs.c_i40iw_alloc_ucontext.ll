; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.i40iw_device = type { i32, i32, i32 }
%struct.i40iw_alloc_ucontext_req = type { i32 }
%struct.i40iw_alloc_ucontext_resp = type { i32, i32, i32, i32 }
%struct.i40iw_ucontext = type { i32, i32, i32, i32, i32, %struct.i40iw_device* }

@EINVAL = common dso_local global i32 0, align 4
@I40IW_ABI_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unsupported provider library version %u.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.ib_udata*)* @i40iw_alloc_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_alloc_ucontext(%struct.ib_ucontext* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.i40iw_device*, align 8
  %8 = alloca %struct.i40iw_alloc_ucontext_req, align 4
  %9 = alloca %struct.i40iw_alloc_ucontext_resp, align 4
  %10 = alloca %struct.i40iw_ucontext*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %11 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %12 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %11, i32 0, i32 0
  %13 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  store %struct.ib_device* %13, %struct.ib_device** %6, align 8
  %14 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %15 = call %struct.i40iw_device* @to_iwdev(%struct.ib_device* %14)
  store %struct.i40iw_device* %15, %struct.i40iw_device** %7, align 8
  %16 = bitcast %struct.i40iw_alloc_ucontext_resp* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %18 = call %struct.i40iw_ucontext* @to_ucontext(%struct.ib_ucontext* %17)
  store %struct.i40iw_ucontext* %18, %struct.i40iw_ucontext** %10, align 8
  %19 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %20 = call i64 @ib_copy_from_udata(%struct.i40iw_alloc_ucontext_req* %8, %struct.ib_udata* %19, i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %83

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.i40iw_alloc_ucontext_req, %struct.i40iw_alloc_ucontext_req* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.i40iw_alloc_ucontext_req, %struct.i40iw_alloc_ucontext_req* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I40IW_ABI_VER, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %29, %25
  %35 = getelementptr inbounds %struct.i40iw_alloc_ucontext_req, %struct.i40iw_alloc_ucontext_req* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %83

40:                                               ; preds = %29
  %41 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %42 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.i40iw_alloc_ucontext_resp, %struct.i40iw_alloc_ucontext_resp* %9, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %46 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.i40iw_alloc_ucontext_resp, %struct.i40iw_alloc_ucontext_resp* %9, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %50 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 2
  %53 = getelementptr inbounds %struct.i40iw_alloc_ucontext_resp, %struct.i40iw_alloc_ucontext_resp* %9, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.i40iw_alloc_ucontext_req, %struct.i40iw_alloc_ucontext_req* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.i40iw_alloc_ucontext_resp, %struct.i40iw_alloc_ucontext_resp* %9, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %58 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %10, align 8
  %59 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %58, i32 0, i32 5
  store %struct.i40iw_device* %57, %struct.i40iw_device** %59, align 8
  %60 = getelementptr inbounds %struct.i40iw_alloc_ucontext_req, %struct.i40iw_alloc_ucontext_req* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %10, align 8
  %63 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %65 = call i64 @ib_copy_to_udata(%struct.ib_udata* %64, %struct.i40iw_alloc_ucontext_resp* %9, i32 16)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %40
  %68 = load i32, i32* @EFAULT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %83

70:                                               ; preds = %40
  %71 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %10, align 8
  %72 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %71, i32 0, i32 4
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %10, align 8
  %75 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %74, i32 0, i32 3
  %76 = call i32 @spin_lock_init(i32* %75)
  %77 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %10, align 8
  %78 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %77, i32 0, i32 2
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.i40iw_ucontext*, %struct.i40iw_ucontext** %10, align 8
  %81 = getelementptr inbounds %struct.i40iw_ucontext, %struct.i40iw_ucontext* %80, i32 0, i32 1
  %82 = call i32 @spin_lock_init(i32* %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %70, %67, %34, %22
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.i40iw_device* @to_iwdev(%struct.ib_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.i40iw_ucontext* @to_ucontext(%struct.ib_ucontext*) #1

declare dso_local i64 @ib_copy_from_udata(%struct.i40iw_alloc_ucontext_req*, %struct.ib_udata*, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

declare dso_local i64 @ib_copy_to_udata(%struct.ib_udata*, %struct.i40iw_alloc_ucontext_resp*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
