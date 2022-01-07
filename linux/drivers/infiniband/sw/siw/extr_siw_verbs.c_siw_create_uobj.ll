; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_create_uobj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_create_uobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_ucontext = type { i32, i32 }
%struct.siw_uobj = type { i8*, i32 }
%struct.xa_limit = type { i32 }

@SIW_UOBJ_MAX_KEY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SIW_INVAL_UOBJ_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_ucontext*, i8*, i32)* @siw_create_uobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_create_uobj(%struct.siw_ucontext* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.siw_ucontext*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.siw_uobj*, align 8
  %9 = alloca %struct.xa_limit, align 4
  %10 = alloca i32, align 4
  store %struct.siw_ucontext* %0, %struct.siw_ucontext** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @SIW_UOBJ_MAX_KEY, align 4
  %12 = call i32 @XA_LIMIT(i32 0, i32 %11)
  %13 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.siw_uobj* @kzalloc(i32 16, i32 %14)
  store %struct.siw_uobj* %15, %struct.siw_uobj** %8, align 8
  %16 = load %struct.siw_uobj*, %struct.siw_uobj** %8, align 8
  %17 = icmp ne %struct.siw_uobj* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @SIW_INVAL_UOBJ_KEY, align 4
  store i32 %19, i32* %4, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.siw_ucontext*, %struct.siw_ucontext** %5, align 8
  %22 = getelementptr inbounds %struct.siw_ucontext, %struct.siw_ucontext* %21, i32 0, i32 1
  %23 = load %struct.siw_uobj*, %struct.siw_uobj** %8, align 8
  %24 = load %struct.siw_ucontext*, %struct.siw_ucontext** %5, align 8
  %25 = getelementptr inbounds %struct.siw_ucontext, %struct.siw_ucontext* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = getelementptr inbounds %struct.xa_limit, %struct.xa_limit* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @xa_alloc_cyclic(i32* %22, i32* %10, %struct.siw_uobj* %23, i32 %28, i32* %25, i32 %26)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.siw_uobj*, %struct.siw_uobj** %8, align 8
  %33 = call i32 @kfree(%struct.siw_uobj* %32)
  %34 = load i32, i32* @SIW_INVAL_UOBJ_KEY, align 4
  store i32 %34, i32* %4, align 4
  br label %44

35:                                               ; preds = %20
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @PAGE_ALIGN(i32 %36)
  %38 = load %struct.siw_uobj*, %struct.siw_uobj** %8, align 8
  %39 = getelementptr inbounds %struct.siw_uobj, %struct.siw_uobj* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.siw_uobj*, %struct.siw_uobj** %8, align 8
  %42 = getelementptr inbounds %struct.siw_uobj, %struct.siw_uobj* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %35, %31, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @XA_LIMIT(i32, i32) #1

declare dso_local %struct.siw_uobj* @kzalloc(i32, i32) #1

declare dso_local i64 @xa_alloc_cyclic(i32*, i32*, %struct.siw_uobj*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.siw_uobj*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
