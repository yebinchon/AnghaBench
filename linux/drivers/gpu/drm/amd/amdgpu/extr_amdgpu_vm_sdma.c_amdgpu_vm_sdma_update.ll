; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm_sdma.c_amdgpu_vm_sdma_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm_sdma.c_amdgpu_vm_sdma_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_update_params = type { i32, i64, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_bo = type { %struct.amdgpu_bo* }

@AMDGPU_VM_SDMA_MIN_NUM_DW = common dso_local global i32 0, align 4
@AMDGPU_VM_SDMA_MAX_NUM_DW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i64, i32)* @amdgpu_vm_sdma_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vm_sdma_update(%struct.amdgpu_vm_update_params* %0, %struct.amdgpu_bo* %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_vm_update_params*, align 8
  %10 = alloca %struct.amdgpu_bo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.amdgpu_vm_update_params* %0, %struct.amdgpu_vm_update_params** %9, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  br label %21

21:                                               ; preds = %205, %7
  %22 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %23 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %17, align 4
  %25 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %26 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %17, align 4
  %33 = zext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ult i32 %36, 32
  br i1 %37, label %38, label %78

38:                                               ; preds = %21
  %39 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %40 = call i32 @amdgpu_vm_sdma_commit(%struct.amdgpu_vm_update_params* %39, i32* null)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %20, align 4
  store i32 %44, i32* %8, align 4
  br label %209

45:                                               ; preds = %38
  store i32 32, i32* %17, align 4
  %46 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %47 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = mul i32 %51, 2
  %53 = load i32, i32* %17, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* @AMDGPU_VM_SDMA_MIN_NUM_DW, align 4
  %58 = call i32 @max(i32 %56, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @AMDGPU_VM_SDMA_MAX_NUM_DW, align 4
  %61 = call i32 @min(i32 %59, i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %63 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = mul i32 %65, 4
  %67 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %68 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %67, i32 0, i32 2
  %69 = call i32 @amdgpu_job_alloc_with_ib(%struct.TYPE_9__* %64, i32 %66, %struct.TYPE_10__** %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = load i32, i32* %20, align 4
  store i32 %73, i32* %8, align 4
  br label %209

74:                                               ; preds = %55
  %75 = load i32, i32* %17, align 4
  %76 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %77 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %21
  %79 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %80 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %108, label %83

83:                                               ; preds = %78
  %84 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %85 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %84, i32 0, i32 0
  %86 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %85, align 8
  %87 = icmp ne %struct.amdgpu_bo* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %90 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %91 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %90, i32 0, i32 0
  %92 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i64, i64* %14, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @amdgpu_vm_sdma_set_ptes(%struct.amdgpu_vm_update_params* %89, %struct.amdgpu_bo* %92, i32 %93, i32 %94, i32 %95, i64 %96, i32 %97)
  br label %99

99:                                               ; preds = %88, %83
  %100 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %101 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i64, i64* %14, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @amdgpu_vm_sdma_set_ptes(%struct.amdgpu_vm_update_params* %100, %struct.amdgpu_bo* %101, i32 %102, i32 %103, i32 %104, i64 %105, i32 %106)
  store i32 0, i32* %8, align 4
  br label %209

108:                                              ; preds = %78
  %109 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %110 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %109, i32 0, i32 3
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %118 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %117, i32 0, i32 0
  %119 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %118, align 8
  %120 = icmp ne %struct.amdgpu_bo* %119, null
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 2, i32 1
  %123 = mul nsw i32 %116, %122
  %124 = load i32, i32* %17, align 4
  %125 = sub i32 %124, %123
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = sub i32 %126, 7
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %17, align 4
  %130 = udiv i32 %129, 2
  %131 = call i32 @min(i32 %128, i32 %130)
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = mul i32 %132, 2
  %134 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %135 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %139 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %138, i32 0, i32 2
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %146 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  store i32* %149, i32** %19, align 8
  store i32 0, i32* %16, align 4
  br label %150

150:                                              ; preds = %171, %108
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp ult i32 %151, %152
  br i1 %153, label %154, label %179

154:                                              ; preds = %150
  %155 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %156 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @amdgpu_vm_map_gart(i64 %157, i32 %158)
  %160 = load i32*, i32** %19, align 8
  %161 = load i32, i32* %16, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %159, i32* %163, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32*, i32** %19, align 8
  %166 = load i32, i32* %16, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %164
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %154
  %172 = load i32, i32* %16, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %16, align 4
  %174 = load i64, i64* %14, align 8
  %175 = load i32, i32* %12, align 4
  %176 = zext i32 %175 to i64
  %177 = add nsw i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %12, align 4
  br label %150

179:                                              ; preds = %150
  %180 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %181 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %180, i32 0, i32 0
  %182 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %181, align 8
  %183 = icmp ne %struct.amdgpu_bo* %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %179
  %185 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %186 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %187 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %186, i32 0, i32 0
  %188 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @amdgpu_vm_sdma_copy_ptes(%struct.amdgpu_vm_update_params* %185, %struct.amdgpu_bo* %188, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %184, %179
  %193 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %194 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @amdgpu_vm_sdma_copy_ptes(%struct.amdgpu_vm_update_params* %193, %struct.amdgpu_bo* %194, i32 %195, i32 %196)
  %198 = load i32, i32* %18, align 4
  %199 = mul i32 %198, 8
  %200 = load i32, i32* %11, align 4
  %201 = add i32 %200, %199
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %13, align 4
  %204 = sub i32 %203, %202
  store i32 %204, i32* %13, align 4
  br label %205

205:                                              ; preds = %192
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %21, label %208

208:                                              ; preds = %205
  store i32 0, i32* %8, align 4
  br label %209

209:                                              ; preds = %208, %99, %72, %43
  %210 = load i32, i32* %8, align 4
  ret i32 %210
}

declare dso_local i32 @amdgpu_vm_sdma_commit(%struct.amdgpu_vm_update_params*, i32*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @amdgpu_job_alloc_with_ib(%struct.TYPE_9__*, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @amdgpu_vm_sdma_set_ptes(%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @amdgpu_vm_map_gart(i64, i32) #1

declare dso_local i32 @amdgpu_vm_sdma_copy_ptes(%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
