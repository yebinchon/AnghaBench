; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_sgl.c_acc_get_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_sgl.c_acc_get_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_acc_hw_sgl = type opaque
%struct.hisi_acc_sgl_pool = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hisi_acc_hw_sgl* @acc_get_sgl(%struct.hisi_acc_sgl_pool* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.hisi_acc_hw_sgl*, align 8
  %5 = alloca %struct.hisi_acc_sgl_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.hisi_acc_sgl_pool* %0, %struct.hisi_acc_sgl_pool** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %8 = load %struct.hisi_acc_sgl_pool*, %struct.hisi_acc_sgl_pool** %5, align 8
  %9 = icmp ne %struct.hisi_acc_sgl_pool* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = load i64*, i64** %7, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.hisi_acc_sgl_pool*, %struct.hisi_acc_sgl_pool** %5, align 8
  %16 = getelementptr inbounds %struct.hisi_acc_sgl_pool, %struct.hisi_acc_sgl_pool* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load %struct.hisi_acc_sgl_pool*, %struct.hisi_acc_sgl_pool** %5, align 8
  %21 = getelementptr inbounds %struct.hisi_acc_sgl_pool, %struct.hisi_acc_sgl_pool* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19, %13, %10, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i8* @ERR_PTR(i32 %26)
  %28 = bitcast i8* %27 to %struct.hisi_acc_hw_sgl*
  store %struct.hisi_acc_hw_sgl* %28, %struct.hisi_acc_hw_sgl** %4, align 8
  br label %53

29:                                               ; preds = %19
  %30 = load %struct.hisi_acc_sgl_pool*, %struct.hisi_acc_sgl_pool** %5, align 8
  %31 = getelementptr inbounds %struct.hisi_acc_sgl_pool, %struct.hisi_acc_sgl_pool* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hisi_acc_sgl_pool*, %struct.hisi_acc_sgl_pool** %5, align 8
  %34 = getelementptr inbounds %struct.hisi_acc_sgl_pool, %struct.hisi_acc_sgl_pool* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %32, %38
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  %41 = load %struct.hisi_acc_sgl_pool*, %struct.hisi_acc_sgl_pool** %5, align 8
  %42 = getelementptr inbounds %struct.hisi_acc_sgl_pool, %struct.hisi_acc_sgl_pool* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.hisi_acc_sgl_pool*, %struct.hisi_acc_sgl_pool** %5, align 8
  %46 = getelementptr inbounds %struct.hisi_acc_sgl_pool, %struct.hisi_acc_sgl_pool* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %44, i64 %50
  %52 = bitcast i8* %51 to %struct.hisi_acc_hw_sgl*
  store %struct.hisi_acc_hw_sgl* %52, %struct.hisi_acc_hw_sgl** %4, align 8
  br label %53

53:                                               ; preds = %29, %24
  %54 = load %struct.hisi_acc_hw_sgl*, %struct.hisi_acc_hw_sgl** %4, align 8
  ret %struct.hisi_acc_hw_sgl* %54
}

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
