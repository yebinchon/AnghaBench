; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_fault_buffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_fault_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_svm = type { %struct.TYPE_6__*, %struct.nouveau_svm_fault_buffer* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvif_object }
%struct.nvif_object = type { i32 }
%struct.nouveau_svm_fault_buffer = type { i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"get %08x put %08x (init)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_svm*, i32)* @nouveau_svm_fault_buffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_svm_fault_buffer_init(%struct.nouveau_svm* %0, i32 %1) #0 {
  %3 = alloca %struct.nouveau_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_svm_fault_buffer*, align 8
  %6 = alloca %struct.nvif_object*, align 8
  store %struct.nouveau_svm* %0, %struct.nouveau_svm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nouveau_svm*, %struct.nouveau_svm** %3, align 8
  %8 = getelementptr inbounds %struct.nouveau_svm, %struct.nouveau_svm* %7, i32 0, i32 1
  %9 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %9, i64 %11
  store %struct.nouveau_svm_fault_buffer* %12, %struct.nouveau_svm_fault_buffer** %5, align 8
  %13 = load %struct.nouveau_svm*, %struct.nouveau_svm** %3, align 8
  %14 = getelementptr inbounds %struct.nouveau_svm, %struct.nouveau_svm* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.nvif_object* %18, %struct.nvif_object** %6, align 8
  %19 = load %struct.nvif_object*, %struct.nvif_object** %6, align 8
  %20 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @nvif_rd32(%struct.nvif_object* %19, i32 %22)
  %24 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.nvif_object*, %struct.nvif_object** %6, align 8
  %27 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %28 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @nvif_rd32(%struct.nvif_object* %26, i32 %29)
  %31 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.nouveau_svm*, %struct.nouveau_svm** %3, align 8
  %34 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @SVM_DBG(%struct.nouveau_svm* %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %39)
  %41 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %41, i32 0, i32 0
  %43 = call i32 @nvif_notify_get(i32* %42)
  ret i32 %43
}

declare dso_local i8* @nvif_rd32(%struct.nvif_object*, i32) #1

declare dso_local i32 @SVM_DBG(%struct.nouveau_svm*, i8*, i8*, i8*) #1

declare dso_local i32 @nvif_notify_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
