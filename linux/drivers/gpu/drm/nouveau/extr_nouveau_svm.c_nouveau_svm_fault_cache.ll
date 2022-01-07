; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_fault_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svm_fault_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_svm = type { i32 }
%struct.nouveau_svm_fault_buffer = type { i64, %struct.nouveau_svm_fault**, %struct.nvif_object }
%struct.nouveau_svm_fault = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"fault %016llx %016llx %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_svm*, %struct.nouveau_svm_fault_buffer*, i32)* @nouveau_svm_fault_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_svm_fault_cache(%struct.nouveau_svm* %0, %struct.nouveau_svm_fault_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_svm*, align 8
  %5 = alloca %struct.nouveau_svm_fault_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvif_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nouveau_svm_fault*, align 8
  store %struct.nouveau_svm* %0, %struct.nouveau_svm** %4, align 8
  store %struct.nouveau_svm_fault_buffer* %1, %struct.nouveau_svm_fault_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %21, i32 0, i32 2
  store %struct.nvif_object* %22, %struct.nvif_object** %7, align 8
  %23 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 0
  %26 = call i32 @nvif_rd32(%struct.nvif_object* %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 4
  %30 = call i32 @nvif_rd32(%struct.nvif_object* %27, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 8
  %34 = call i32 @nvif_rd32(%struct.nvif_object* %31, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 12
  %38 = call i32 @nvif_rd32(%struct.nvif_object* %35, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 16
  %42 = call i32 @nvif_rd32(%struct.nvif_object* %39, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 20
  %46 = call i32 @nvif_rd32(%struct.nvif_object* %43, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 24
  %50 = call i32 @nvif_rd32(%struct.nvif_object* %47, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 28
  %54 = call i32 @nvif_rd32(%struct.nvif_object* %51, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 %55, 32
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = and i32 %59, 520093696
  %61 = ashr i32 %60, 24
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %15, align 4
  %63 = and i32 %62, 1048576
  %64 = ashr i32 %63, 20
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %65, 32512
  %67 = ashr i32 %66, 8
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %68, -2147483648
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @WARN_ON(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %3
  br label %172

76:                                               ; preds = %3
  %77 = load %struct.nvif_object*, %struct.nvif_object** %7, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 28
  %80 = call i32 @nvif_mask(%struct.nvif_object* %77, i32 %79, i32 -2147483648, i32 0)
  %81 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %82 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %81, i32 0, i32 1
  %83 = load %struct.nouveau_svm_fault**, %struct.nouveau_svm_fault*** %82, align 8
  %84 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %85 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %83, i64 %86
  %88 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %87, align 8
  %89 = icmp ne %struct.nouveau_svm_fault* %88, null
  br i1 %89, label %115, label %90

90:                                               ; preds = %76
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.nouveau_svm_fault* @kmalloc(i32 36, i32 %91)
  store %struct.nouveau_svm_fault* %92, %struct.nouveau_svm_fault** %20, align 8
  %93 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %94 = icmp ne %struct.nouveau_svm_fault* %93, null
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @WARN_ON(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load %struct.nouveau_svm*, %struct.nouveau_svm** %4, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @nouveau_svm_fault_cancel(%struct.nouveau_svm* %100, i32 %101, i32 %102, i32 %103, i32 %104)
  br label %172

106:                                              ; preds = %90
  %107 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %108 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %109 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %108, i32 0, i32 1
  %110 = load %struct.nouveau_svm_fault**, %struct.nouveau_svm_fault*** %109, align 8
  %111 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %112 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %110, i64 %113
  store %struct.nouveau_svm_fault* %107, %struct.nouveau_svm_fault** %114, align 8
  br label %115

115:                                              ; preds = %106, %76
  %116 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %117 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %116, i32 0, i32 1
  %118 = load %struct.nouveau_svm_fault**, %struct.nouveau_svm_fault*** %117, align 8
  %119 = load %struct.nouveau_svm_fault_buffer*, %struct.nouveau_svm_fault_buffer** %5, align 8
  %120 = getelementptr inbounds %struct.nouveau_svm_fault_buffer, %struct.nouveau_svm_fault_buffer* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %120, align 8
  %123 = getelementptr inbounds %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %118, i64 %121
  %124 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %123, align 8
  store %struct.nouveau_svm_fault* %124, %struct.nouveau_svm_fault** %20, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %127 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %11, align 4
  %129 = shl i32 %128, 32
  %130 = load i32, i32* %10, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %133 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = shl i32 %134, 32
  %136 = load i32, i32* %12, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %139 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %142 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %145 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %148 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %15, align 4
  %150 = and i32 %149, 983040
  %151 = ashr i32 %150, 16
  %152 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %153 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %156 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %155, i32 0, i32 7
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %15, align 4
  %158 = and i32 %157, 31
  %159 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %160 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 4
  %161 = load %struct.nouveau_svm*, %struct.nouveau_svm** %4, align 8
  %162 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %163 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %166 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.nouveau_svm_fault*, %struct.nouveau_svm_fault** %20, align 8
  %169 = getelementptr inbounds %struct.nouveau_svm_fault, %struct.nouveau_svm_fault* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @SVM_DBG(%struct.nouveau_svm* %161, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %164, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %115, %99, %75
  ret void
}

declare dso_local i32 @nvif_rd32(%struct.nvif_object*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nvif_mask(%struct.nvif_object*, i32, i32, i32) #1

declare dso_local %struct.nouveau_svm_fault* @kmalloc(i32, i32) #1

declare dso_local i32 @nouveau_svm_fault_cancel(%struct.nouveau_svm*, i32, i32, i32, i32) #1

declare dso_local i32 @SVM_DBG(%struct.nouveau_svm*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
