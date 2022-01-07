; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_wss_advance_clean_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_wss_advance_clean_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_wss = type { i32, i32, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_wss*)* @wss_advance_clean_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wss_advance_clean_counter(%struct.rvt_wss* %0) #0 {
  %2 = alloca %struct.rvt_wss*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.rvt_wss* %0, %struct.rvt_wss** %2, align 8
  %6 = load %struct.rvt_wss*, %struct.rvt_wss** %2, align 8
  %7 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %6, i32 0, i32 5
  %8 = call i64 @atomic_dec_and_test(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load %struct.rvt_wss*, %struct.rvt_wss** %2, align 8
  %12 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %11, i32 0, i32 5
  %13 = load %struct.rvt_wss*, %struct.rvt_wss** %2, align 8
  %14 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @atomic_set(i32* %12, i32 %15)
  %17 = load %struct.rvt_wss*, %struct.rvt_wss** %2, align 8
  %18 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %17, i32 0, i32 3
  %19 = call i32 @atomic_inc_return(i32* %18)
  %20 = sub nsw i32 %19, 1
  %21 = load %struct.rvt_wss*, %struct.rvt_wss** %2, align 8
  %22 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %20, %24
  store i32 %25, i32* %3, align 4
  %26 = load %struct.rvt_wss*, %struct.rvt_wss** %2, align 8
  %27 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i64 @xchg(i32* %31, i32 0)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @hweight64(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %10
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.rvt_wss*, %struct.rvt_wss** %2, align 8
  %41 = getelementptr inbounds %struct.rvt_wss, %struct.rvt_wss* %40, i32 0, i32 1
  %42 = call i32 @atomic_sub(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %10
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local i32 @hweight64(i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
