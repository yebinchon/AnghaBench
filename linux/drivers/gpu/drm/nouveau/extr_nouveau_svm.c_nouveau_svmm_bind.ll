; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svmm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_svm.c_nouveau_svmm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.nouveau_cli = type { i32 }
%struct.drm_nouveau_svm_bind = type { i64, i64, i32, i64, i64, i64, i64, i64 }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NOUVEAU_SVM_BIND_VALID_MASK = common dso_local global i32 0, align 4
@NOUVEAU_SVM_BIND_COMMAND_SHIFT = common dso_local global i32 0, align 4
@NOUVEAU_SVM_BIND_COMMAND_MASK = common dso_local global i32 0, align 4
@NOUVEAU_SVM_BIND_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@NOUVEAU_SVM_BIND_PRIORITY_MASK = common dso_local global i32 0, align 4
@NOUVEAU_SVM_BIND_TARGET_SHIFT = common dso_local global i32 0, align 4
@NOUVEAU_SVM_BIND_TARGET_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_svmm_bind(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.nouveau_cli*, align 8
  %9 = alloca %struct.drm_nouveau_svm_bind*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mm_struct*, align 8
  %17 = alloca %struct.vm_area_struct*, align 8
  %18 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %20 = call %struct.nouveau_cli* @nouveau_cli(%struct.drm_file* %19)
  store %struct.nouveau_cli* %20, %struct.nouveau_cli** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.drm_nouveau_svm_bind*
  store %struct.drm_nouveau_svm_bind* %22, %struct.drm_nouveau_svm_bind** %9, align 8
  %23 = load i64, i64* @PAGE_MASK, align 8
  %24 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %25 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load i64, i64* @PAGE_MASK, align 8
  %29 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %30 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %34 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %3
  %38 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %39 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %3
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %198

45:                                               ; preds = %37
  %46 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %47 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NOUVEAU_SVM_BIND_VALID_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %198

56:                                               ; preds = %45
  %57 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %58 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %61 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp uge i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %198

67:                                               ; preds = %56
  %68 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %69 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %198

75:                                               ; preds = %67
  %76 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %77 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NOUVEAU_SVM_BIND_COMMAND_SHIFT, align 4
  %80 = ashr i32 %78, %79
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @NOUVEAU_SVM_BIND_COMMAND_MASK, align 4
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  switch i32 %84, label %86 [
    i32 129, label %85
  ]

85:                                               ; preds = %75
  br label %89

86:                                               ; preds = %75
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %198

89:                                               ; preds = %85
  %90 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %91 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @NOUVEAU_SVM_BIND_PRIORITY_SHIFT, align 4
  %94 = ashr i32 %92, %93
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* @NOUVEAU_SVM_BIND_PRIORITY_MASK, align 4
  %96 = load i32, i32* %12, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %12, align 4
  %98 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %99 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @NOUVEAU_SVM_BIND_TARGET_SHIFT, align 4
  %102 = ashr i32 %100, %101
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @NOUVEAU_SVM_BIND_TARGET_MASK, align 4
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  switch i32 %106, label %108 [
    i32 128, label %107
  ]

107:                                              ; preds = %89
  br label %111

108:                                              ; preds = %89
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %198

111:                                              ; preds = %107
  %112 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %113 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %198

119:                                              ; preds = %111
  %120 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %121 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PAGE_SHIFT, align 8
  %124 = shl i64 %122, %123
  store i64 %124, i64* %15, align 8
  %125 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %126 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %15, align 8
  %129 = add i64 %127, %128
  %130 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %131 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ule i64 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %119
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %198

137:                                              ; preds = %119
  %138 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %139 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %15, align 8
  %142 = add i64 %140, %141
  %143 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %144 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ugt i64 %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %198

150:                                              ; preds = %137
  %151 = load i32, i32* @current, align 4
  %152 = call %struct.mm_struct* @get_task_mm(i32 %151)
  store %struct.mm_struct* %152, %struct.mm_struct** %16, align 8
  %153 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %154 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %153, i32 0, i32 0
  %155 = call i32 @down_read(i32* %154)
  %156 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %157 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %13, align 8
  %159 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %160 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* %15, align 8
  %163 = add i64 %161, %162
  store i64 %163, i64* %14, align 8
  br label %164

164:                                              ; preds = %176, %150
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* %14, align 8
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %168, label %190

168:                                              ; preds = %164
  %169 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* %14, align 8
  %172 = call %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct* %169, i64 %170, i64 %171)
  store %struct.vm_area_struct* %172, %struct.vm_area_struct** %17, align 8
  %173 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  %174 = icmp ne %struct.vm_area_struct* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %168
  br label %190

176:                                              ; preds = %168
  %177 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  %178 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i64, i64* %14, align 8
  %181 = call i64 @min(i32 %179, i64 %180)
  store i64 %181, i64* %18, align 8
  %182 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %183 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.vm_area_struct*, %struct.vm_area_struct** %17, align 8
  %186 = load i64, i64* %13, align 8
  %187 = load i64, i64* %18, align 8
  %188 = call i32 @nouveau_dmem_migrate_vma(i32 %184, %struct.vm_area_struct* %185, i64 %186, i64 %187)
  %189 = load i64, i64* %18, align 8
  store i64 %189, i64* %13, align 8
  br label %164

190:                                              ; preds = %175, %164
  %191 = load %struct.drm_nouveau_svm_bind*, %struct.drm_nouveau_svm_bind** %9, align 8
  %192 = getelementptr inbounds %struct.drm_nouveau_svm_bind, %struct.drm_nouveau_svm_bind* %191, i32 0, i32 3
  store i64 0, i64* %192, align 8
  %193 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %194 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %193, i32 0, i32 0
  %195 = call i32 @up_read(i32* %194)
  %196 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  %197 = call i32 @mmput(%struct.mm_struct* %196)
  store i32 0, i32* %4, align 4
  br label %198

198:                                              ; preds = %190, %147, %134, %116, %108, %86, %72, %64, %53, %42
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.nouveau_cli* @nouveau_cli(%struct.drm_file*) #1

declare dso_local %struct.mm_struct* @get_task_mm(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma_intersection(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @nouveau_dmem_migrate_vma(i32, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
