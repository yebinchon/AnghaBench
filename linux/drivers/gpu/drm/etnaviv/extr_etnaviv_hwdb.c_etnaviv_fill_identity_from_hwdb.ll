; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_hwdb.c_etnaviv_fill_identity_from_hwdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_hwdb.c_etnaviv_fill_identity_from_hwdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.etnaviv_gpu = type { %struct.etnaviv_chip_identity }
%struct.etnaviv_chip_identity = type { i64, i64 }

@etnaviv_chip_identities = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @etnaviv_fill_identity_from_hwdb(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etnaviv_gpu*, align 8
  %4 = alloca %struct.etnaviv_chip_identity*, align 8
  %5 = alloca i32, align 4
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %3, align 8
  %6 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %3, align 8
  %7 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %6, i32 0, i32 0
  store %struct.etnaviv_chip_identity* %7, %struct.etnaviv_chip_identity** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @etnaviv_chip_identities, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @etnaviv_chip_identities, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.etnaviv_chip_identity*, %struct.etnaviv_chip_identity** %4, align 8
  %21 = getelementptr inbounds %struct.etnaviv_chip_identity, %struct.etnaviv_chip_identity* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %13
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @etnaviv_chip_identities, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.etnaviv_chip_identity*, %struct.etnaviv_chip_identity** %4, align 8
  %32 = getelementptr inbounds %struct.etnaviv_chip_identity, %struct.etnaviv_chip_identity* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.etnaviv_chip_identity*, %struct.etnaviv_chip_identity** %4, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @etnaviv_chip_identities, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = call i32 @memcpy(%struct.etnaviv_chip_identity* %36, %struct.TYPE_4__* %40, i32 16)
  store i32 1, i32* %2, align 4
  br label %47

42:                                               ; preds = %24, %13
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %8

46:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(%struct.etnaviv_chip_identity*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
