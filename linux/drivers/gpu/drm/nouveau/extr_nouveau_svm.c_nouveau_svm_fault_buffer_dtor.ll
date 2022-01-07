; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_fault_buffer_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_fault_buffer_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_svm = type { %struct.nouveau_svm_fault_buffer* }
%struct.nouveau_svm_fault_buffer = type { i32, i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_svm*, i32)* @nouveau_svm_fault_buffer_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_svm_fault_buffer_dtor(%struct.nouveau_svm* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_svm_fault_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.nouveau_svm* %0, %struct.nouveau_svm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_svm*, %struct.nouveau_svm** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_svm, %struct.nouveau_svm* %7, i32 0, i32 0
  %9 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %9, i64 %11
  store %struct.nouveau_svm_fault_buffer* %12, %struct.nouveau_svm_fault_buffer** %5, align 8
  %13 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %20 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %19, i32 0, i32 3
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br label %33

33:                                               ; preds = %27, %18
  %34 = phi i1 [ false, %18 ], [ %32, %27 ]
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @kfree(i64 %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %18

47:                                               ; preds = %33
  %48 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %49 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %48, i32 0, i32 3
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 @kvfree(i64* %50)
  br label %52

52:                                               ; preds = %47, %2
  %53 = load %struct.nouveau_svm*, %struct.nouveau_svm** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @nouveau_svm_fault_buffer_fini(%struct.nouveau_svm* %53, i32 %54)
  %56 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %56, i32 0, i32 2
  %58 = call i32 @nvif_notify_fini(i32* %57)
  %59 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %59, i32 0, i32 1
  %61 = call i32 @nvif_object_fini(i32* %60)
  ret void
}

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @kvfree(i64*) #1

declare dso_local i32 @nouveau_svm_fault_buffer_fini(%struct.nouveau_svm*, i32) #1

declare dso_local i32 @nvif_notify_fini(i32*) #1

declare dso_local i32 @nvif_object_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
