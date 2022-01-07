; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_get_uobj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_get_uobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_uobj = type { i64 }
%struct.siw_ucontext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.siw_uobj* (%struct.siw_ucontext*, i64, i64)* @siw_get_uobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.siw_uobj* @siw_get_uobj(%struct.siw_ucontext* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.siw_uobj*, align 8
  %5 = alloca %struct.siw_ucontext*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.siw_uobj*, align 8
  store %struct.siw_ucontext* %0, %struct.siw_ucontext** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.siw_ucontext*, %struct.siw_ucontext** %5, align 8
  %10 = getelementptr inbounds %struct.siw_ucontext, %struct.siw_ucontext* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call %struct.siw_uobj* @xa_load(i32* %10, i64 %11)
  store %struct.siw_uobj* %12, %struct.siw_uobj** %8, align 8
  %13 = load %struct.siw_uobj*, %struct.siw_uobj** %8, align 8
  %14 = icmp ne %struct.siw_uobj* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.siw_uobj*, %struct.siw_uobj** %8, align 8
  %17 = getelementptr inbounds %struct.siw_uobj, %struct.siw_uobj* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.siw_uobj*, %struct.siw_uobj** %8, align 8
  store %struct.siw_uobj* %22, %struct.siw_uobj** %4, align 8
  br label %24

23:                                               ; preds = %15, %3
  store %struct.siw_uobj* null, %struct.siw_uobj** %4, align 8
  br label %24

24:                                               ; preds = %23, %21
  %25 = load %struct.siw_uobj*, %struct.siw_uobj** %4, align 8
  ret %struct.siw_uobj* %25
}

declare dso_local %struct.siw_uobj* @xa_load(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
