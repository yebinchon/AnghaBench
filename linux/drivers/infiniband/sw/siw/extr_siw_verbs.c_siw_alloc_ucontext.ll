; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.siw_device = type { i32, i32 }
%struct.siw_ucontext = type { %struct.siw_device*, i64, i32 }
%struct.siw_uresp_alloc_ctx = type { i32 }

@SIW_MAX_CONTEXT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@XA_FLAGS_ALLOC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"success. now %d context(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failure %d. now %d context(s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_alloc_ucontext(%struct.ib_ucontext* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.siw_device*, align 8
  %7 = alloca %struct.siw_ucontext*, align 8
  %8 = alloca %struct.siw_uresp_alloc_ctx, align 4
  %9 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %10 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %11 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.siw_device* @to_siw_dev(i32 %12)
  store %struct.siw_device* %13, %struct.siw_device** %6, align 8
  %14 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %15 = call %struct.siw_ucontext* @to_siw_ctx(%struct.ib_ucontext* %14)
  store %struct.siw_ucontext* %15, %struct.siw_ucontext** %7, align 8
  %16 = bitcast %struct.siw_uresp_alloc_ctx* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load %struct.siw_device*, %struct.siw_device** %6, align 8
  %18 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %17, i32 0, i32 0
  %19 = call i64 @atomic_inc_return(i32* %18)
  %20 = load i64, i64* @SIW_MAX_CONTEXT, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.siw_ucontext*, %struct.siw_ucontext** %7, align 8
  %27 = getelementptr inbounds %struct.siw_ucontext, %struct.siw_ucontext* %26, i32 0, i32 2
  %28 = load i32, i32* @XA_FLAGS_ALLOC, align 4
  %29 = call i32 @xa_init_flags(i32* %27, i32 %28)
  %30 = load %struct.siw_ucontext*, %struct.siw_ucontext** %7, align 8
  %31 = getelementptr inbounds %struct.siw_ucontext, %struct.siw_ucontext* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.siw_device*, %struct.siw_device** %6, align 8
  %33 = load %struct.siw_ucontext*, %struct.siw_ucontext** %7, align 8
  %34 = getelementptr inbounds %struct.siw_ucontext, %struct.siw_ucontext* %33, i32 0, i32 0
  store %struct.siw_device* %32, %struct.siw_device** %34, align 8
  %35 = load %struct.siw_device*, %struct.siw_device** %6, align 8
  %36 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.siw_uresp_alloc_ctx, %struct.siw_uresp_alloc_ctx* %8, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %40 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 4
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %61

47:                                               ; preds = %25
  %48 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %49 = call i32 @ib_copy_to_udata(%struct.ib_udata* %48, %struct.siw_uresp_alloc_ctx* %8, i32 4)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %61

53:                                               ; preds = %47
  %54 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %55 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.siw_device*, %struct.siw_device** %6, align 8
  %58 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %57, i32 0, i32 0
  %59 = call i32 @atomic_read(i32* %58)
  %60 = call i32 (i32, i8*, i32, ...) @siw_dbg(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 0, i32* %3, align 4
  br label %74

61:                                               ; preds = %52, %44, %22
  %62 = load %struct.siw_device*, %struct.siw_device** %6, align 8
  %63 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %62, i32 0, i32 0
  %64 = call i32 @atomic_dec(i32* %63)
  %65 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %66 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.siw_device*, %struct.siw_device** %6, align 8
  %70 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %69, i32 0, i32 0
  %71 = call i32 @atomic_read(i32* %70)
  %72 = call i32 (i32, i8*, i32, ...) @siw_dbg(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %61, %53
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local %struct.siw_ucontext* @to_siw_ctx(%struct.ib_ucontext*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @xa_init_flags(i32*, i32) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, %struct.siw_uresp_alloc_ctx*, i32) #1

declare dso_local i32 @siw_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
