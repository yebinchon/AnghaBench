; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_fault_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_fault_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_svm_fault = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @nouveau_svm_fault_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_svm_fault_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nouveau_svm_fault*, align 8
  %7 = alloca %struct.nouveau_svm_fault*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.nouveau_svm_fault**
  %11 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %10, align 8
  store %struct.nouveau_svm_fault* %11, %struct.nouveau_svm_fault** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.nouveau_svm_fault**
  %14 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %13, align 8
  store %struct.nouveau_svm_fault* %14, %struct.nouveau_svm_fault** %7, align 8
  %15 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %6, align 8
  %16 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %7, align 8
  %19 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %2
  %26 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %6, align 8
  %27 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %7, align 8
  %30 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %62

36:                                               ; preds = %25
  %37 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %6, align 8
  %38 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %6, align 8
  %43 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 3
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ true, %36 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %7, align 8
  %50 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %7, align 8
  %55 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 3
  br label %58

58:                                               ; preds = %53, %46
  %59 = phi i1 [ true, %46 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  %61 = sub nsw i32 %48, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %34, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
