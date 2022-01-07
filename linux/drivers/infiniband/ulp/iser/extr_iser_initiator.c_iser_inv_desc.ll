; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_inv_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_inv_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_fr_desc = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [40 x i8] c"Bogus remote invalidation for rkey %#x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iser_fr_desc*, i64)* @iser_inv_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_inv_desc(%struct.iser_fr_desc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iser_fr_desc*, align 8
  %5 = alloca i64, align 8
  store %struct.iser_fr_desc* %0, %struct.iser_fr_desc** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %4, align 8
  %7 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %4, align 8
  %13 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %11, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %10, %2
  %20 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %4, align 8
  %21 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %4, align 8
  %27 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %25, %31
  br label %33

33:                                               ; preds = %24, %19
  %34 = phi i1 [ false, %19 ], [ %32, %24 ]
  br label %35

35:                                               ; preds = %33, %10
  %36 = phi i1 [ true, %10 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @iser_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.iser_fr_desc*, %struct.iser_fr_desc** %4, align 8
  %47 = getelementptr inbounds %struct.iser_fr_desc, %struct.iser_fr_desc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iser_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
