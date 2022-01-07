; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_free_nq_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_free_nq_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_re_dev*)* @bnxt_re_free_nq_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_re_free_nq_res(%struct.bnxt_re_dev* %0) #0 {
  %2 = alloca %struct.bnxt_re_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %41, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %5
  %13 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %13, i32 0, i32 2
  %15 = call i32 @bnxt_qplib_get_ring_type(i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %17 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @bnxt_re_net_ring_free(%struct.bnxt_re_dev* %16, i32 %24, i32 %25)
  %27 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %28 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %35 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = call i32 @bnxt_qplib_free_nq(%struct.TYPE_2__* %39)
  br label %41

41:                                               ; preds = %12
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %5

44:                                               ; preds = %5
  ret void
}

declare dso_local i32 @bnxt_qplib_get_ring_type(i32*) #1

declare dso_local i32 @bnxt_re_net_ring_free(%struct.bnxt_re_dev*, i32, i32) #1

declare dso_local i32 @bnxt_qplib_free_nq(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
