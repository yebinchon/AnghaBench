; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_cq_notify_now.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_cq_notify_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cq = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@SIW_NOTIFY_NEXT_COMPLETION = common dso_local global i32 0, align 4
@SIW_NOTIFY_SOLICITED = common dso_local global i32 0, align 4
@SIW_WQE_SOLICITED = common dso_local global i32 0, align 4
@SIW_NOTIFY_NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_cq*, i32)* @siw_cq_notify_now to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_cq_notify_now(%struct.siw_cq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siw_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.siw_cq* %0, %struct.siw_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %8 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %15 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @READ_ONCE(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SIW_NOTIFY_NEXT_COMPLETION, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SIW_NOTIFY_SOLICITED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SIW_WQE_SOLICITED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29, %13
  %35 = load %struct.siw_cq*, %struct.siw_cq** %4, align 8
  %36 = getelementptr inbounds %struct.siw_cq, %struct.siw_cq* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SIW_NOTIFY_NOT, align 4
  %41 = call i32 @WRITE_ONCE(i32 %39, i32 %40)
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %29, %24
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %34, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
