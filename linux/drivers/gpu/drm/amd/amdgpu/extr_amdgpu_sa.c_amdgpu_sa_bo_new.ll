; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sa.c_amdgpu_sa_bo_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sa.c_amdgpu_sa_bo_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_sa_manager = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_sa_bo = type { i32, i32, i32*, %struct.amdgpu_sa_manager* }
%struct.dma_fence = type { i32 }

@AMDGPU_SA_NUM_FENCE_LISTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_sa_bo_new(%struct.amdgpu_sa_manager* %0, %struct.amdgpu_sa_bo** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_sa_manager*, align 8
  %7 = alloca %struct.amdgpu_sa_bo**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.amdgpu_sa_manager* %0, %struct.amdgpu_sa_manager** %6, align 8
  store %struct.amdgpu_sa_bo** %1, %struct.amdgpu_sa_bo*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @AMDGPU_SA_NUM_FENCE_LISTS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca %struct.dma_fence*, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @AMDGPU_SA_NUM_FENCE_LISTS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %27 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON_ONCE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %198

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %39 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ugt i32 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON_ONCE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %198

48:                                               ; preds = %36
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.amdgpu_sa_bo* @kmalloc(i32 24, i32 %49)
  %51 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %7, align 8
  store %struct.amdgpu_sa_bo* %50, %struct.amdgpu_sa_bo** %51, align 8
  %52 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %7, align 8
  %53 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %52, align 8
  %54 = icmp ne %struct.amdgpu_sa_bo* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %198

58:                                               ; preds = %48
  %59 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %60 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %7, align 8
  %61 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %60, align 8
  %62 = getelementptr inbounds %struct.amdgpu_sa_bo, %struct.amdgpu_sa_bo* %61, i32 0, i32 3
  store %struct.amdgpu_sa_manager* %59, %struct.amdgpu_sa_manager** %62, align 8
  %63 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %7, align 8
  %64 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %63, align 8
  %65 = getelementptr inbounds %struct.amdgpu_sa_bo, %struct.amdgpu_sa_bo* %64, i32 0, i32 2
  store i32* null, i32** %65, align 8
  %66 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %7, align 8
  %67 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %66, align 8
  %68 = getelementptr inbounds %struct.amdgpu_sa_bo, %struct.amdgpu_sa_bo* %67, i32 0, i32 1
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %7, align 8
  %71 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %70, align 8
  %72 = getelementptr inbounds %struct.amdgpu_sa_bo, %struct.amdgpu_sa_bo* %71, i32 0, i32 0
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %75 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @spin_lock(i32* %76)
  br label %78

78:                                               ; preds = %184, %58
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %87, %78
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @AMDGPU_SA_NUM_FENCE_LISTS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %24, i64 %85
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %79

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %107, %90
  %92 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %93 = call i32 @amdgpu_sa_bo_try_free(%struct.amdgpu_sa_manager* %92)
  %94 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %95 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %7, align 8
  %96 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @amdgpu_sa_bo_try_alloc(%struct.amdgpu_sa_manager* %94, %struct.amdgpu_sa_bo* %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %103 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %198

106:                                              ; preds = %91
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %109 = call i64 @amdgpu_sa_bo_next_hole(%struct.amdgpu_sa_manager* %108, %struct.dma_fence** %21, i32* %24)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %91, label %111

111:                                              ; preds = %107
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %133, %111
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @AMDGPU_SA_NUM_FENCE_LISTS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %112
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %21, i64 %118
  %120 = load %struct.dma_fence*, %struct.dma_fence** %119, align 8
  %121 = icmp ne %struct.dma_fence* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %21, i64 %124
  %126 = load %struct.dma_fence*, %struct.dma_fence** %125, align 8
  %127 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %126)
  %128 = load i32, i32* %13, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %13, align 4
  %130 = zext i32 %128 to i64
  %131 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %21, i64 %130
  store %struct.dma_fence* %127, %struct.dma_fence** %131, align 8
  br label %132

132:                                              ; preds = %122, %116
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %112

136:                                              ; preds = %112
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %173

139:                                              ; preds = %136
  %140 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %141 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = call i32 @spin_unlock(i32* %142)
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %146 = call i64 @dma_fence_wait_any_timeout(%struct.dma_fence** %21, i32 %144, i32 0, i32 %145, i32* null)
  store i64 %146, i64* %16, align 8
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %157, %139
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %21, i64 %153
  %155 = load %struct.dma_fence*, %struct.dma_fence** %154, align 8
  %156 = call i32 @dma_fence_put(%struct.dma_fence* %155)
  br label %157

157:                                              ; preds = %151
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %147

160:                                              ; preds = %147
  %161 = load i64, i64* %16, align 8
  %162 = icmp sgt i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %166

164:                                              ; preds = %160
  %165 = load i64, i64* %16, align 8
  br label %166

166:                                              ; preds = %164, %163
  %167 = phi i64 [ 0, %163 ], [ %165, %164 ]
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %15, align 4
  %169 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %170 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = call i32 @spin_lock(i32* %171)
  br label %183

173:                                              ; preds = %136
  %174 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %175 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %174, i32 0, i32 2
  %176 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @amdgpu_sa_event(%struct.amdgpu_sa_manager* %176, i32 %177, i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @wait_event_interruptible_locked(i32 %181, i32 %179)
  store i32 %182, i32* %15, align 4
  br label %183

183:                                              ; preds = %173, %166
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  br i1 %187, label %78, label %188

188:                                              ; preds = %184
  %189 = load %struct.amdgpu_sa_manager*, %struct.amdgpu_sa_manager** %6, align 8
  %190 = getelementptr inbounds %struct.amdgpu_sa_manager, %struct.amdgpu_sa_manager* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = call i32 @spin_unlock(i32* %191)
  %193 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %7, align 8
  %194 = load %struct.amdgpu_sa_bo*, %struct.amdgpu_sa_bo** %193, align 8
  %195 = call i32 @kfree(%struct.amdgpu_sa_bo* %194)
  %196 = load %struct.amdgpu_sa_bo**, %struct.amdgpu_sa_bo*** %7, align 8
  store %struct.amdgpu_sa_bo* null, %struct.amdgpu_sa_bo** %196, align 8
  %197 = load i32, i32* %15, align 4
  store i32 %197, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %198

198:                                              ; preds = %188, %101, %55, %45, %33
  %199 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local %struct.amdgpu_sa_bo* @kmalloc(i32, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @amdgpu_sa_bo_try_free(%struct.amdgpu_sa_manager*) #2

declare dso_local i64 @amdgpu_sa_bo_try_alloc(%struct.amdgpu_sa_manager*, %struct.amdgpu_sa_bo*, i32, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i64 @amdgpu_sa_bo_next_hole(%struct.amdgpu_sa_manager*, %struct.dma_fence**, i32*) #2

declare dso_local %struct.dma_fence* @dma_fence_get(%struct.dma_fence*) #2

declare dso_local i64 @dma_fence_wait_any_timeout(%struct.dma_fence**, i32, i32, i32, i32*) #2

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #2

declare dso_local i32 @wait_event_interruptible_locked(i32, i32) #2

declare dso_local i32 @amdgpu_sa_event(%struct.amdgpu_sa_manager*, i32, i32) #2

declare dso_local i32 @kfree(%struct.amdgpu_sa_bo*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
