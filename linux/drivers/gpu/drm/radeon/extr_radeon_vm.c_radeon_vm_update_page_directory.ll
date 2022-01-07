; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_update_page_directory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_update_page_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_vm = type { i32, %struct.TYPE_5__*, %struct.radeon_bo* }
%struct.TYPE_5__ = type { i64, %struct.radeon_bo* }
%struct.radeon_bo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.radeon_ib = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@RADEON_VM_PTE_COUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@R600_PTE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vm_update_page_directory(%struct.radeon_device* %0, %struct.radeon_vm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_vm*, align 8
  %6 = alloca %struct.radeon_bo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.radeon_ib, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.radeon_bo*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %5, align 8
  %19 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %19, i32 0, i32 2
  %21 = load %struct.radeon_bo*, %struct.radeon_bo** %20, align 8
  store %struct.radeon_bo* %21, %struct.radeon_bo** %6, align 8
  %22 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %23 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* @RADEON_VM_PTE_COUNT, align 4
  %25 = mul nsw i32 %24, 8
  store i32 %25, i32* %8, align 4
  store i64 -1, i64* %9, align 8
  store i64 -1, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i32 64, i32* %13, align 4
  %26 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 6
  %30 = load i32, i32* %13, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ugt i32 %32, 1048575
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %183

37:                                               ; preds = %2
  %38 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %39 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %40 = load i32, i32* %13, align 4
  %41 = mul i32 %40, 4
  %42 = call i32 @radeon_ib_get(%struct.radeon_device* %38, i32 %39, %struct.radeon_ib* %14, i32* null, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %3, align 4
  br label %183

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %14, i32 0, i32 0
  store i32 0, i32* %48, align 8
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %129, %47
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %52 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ule i32 %50, %53
  br i1 %54, label %55, label %132

55:                                               ; preds = %49
  %56 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.radeon_bo*, %struct.radeon_bo** %62, align 8
  store %struct.radeon_bo* %63, %struct.radeon_bo** %16, align 8
  %64 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %65 = icmp eq %struct.radeon_bo* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %129

67:                                               ; preds = %55
  %68 = load %struct.radeon_bo*, %struct.radeon_bo** %16, align 8
  %69 = call i64 @radeon_bo_gpu_offset(%struct.radeon_bo* %68)
  store i64 %69, i64* %18, align 8
  %70 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %71 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %18, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %129

81:                                               ; preds = %67
  %82 = load i64, i64* %18, align 8
  %83 = load %struct.radeon_vm*, %struct.radeon_vm** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i64 %82, i64* %89, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* %12, align 4
  %92 = mul i32 %91, 8
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %90, %93
  store i64 %94, i64* %17, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = mul i32 8, %96
  %98 = zext i32 %97 to i64
  %99 = add nsw i64 %95, %98
  %100 = load i64, i64* %17, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %111, label %102

102:                                              ; preds = %81
  %103 = load i64, i64* %10, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %11, align 4
  %106 = mul i32 %104, %105
  %107 = zext i32 %106 to i64
  %108 = add nsw i64 %103, %107
  %109 = load i64, i64* %18, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %102, %81
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @R600_PTE_VALID, align 4
  %121 = call i32 @radeon_vm_set_pages(%struct.radeon_device* %115, %struct.radeon_ib* %14, i64 %116, i64 %117, i32 %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %114, %111
  store i32 1, i32* %11, align 4
  %123 = load i64, i64* %17, align 8
  store i64 %123, i64* %9, align 8
  %124 = load i64, i64* %18, align 8
  store i64 %124, i64* %10, align 8
  br label %128

125:                                              ; preds = %102
  %126 = load i32, i32* %11, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128, %80, %66
  %130 = load i32, i32* %12, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %49

132:                                              ; preds = %49
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @R600_PTE_VALID, align 4
  %142 = call i32 @radeon_vm_set_pages(%struct.radeon_device* %136, %struct.radeon_ib* %14, i64 %137, i64 %138, i32 %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %135, %132
  %144 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %14, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %180

147:                                              ; preds = %143
  %148 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %149 = call i32 @radeon_asic_vm_pad_ib(%struct.radeon_device* %148, %struct.radeon_ib* %14)
  %150 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %151 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %14, i32 0, i32 2
  %152 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %153 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @radeon_sync_resv(%struct.radeon_device* %150, i32* %151, i32 %156, i32 1)
  %158 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %14, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = icmp ugt i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @WARN_ON(i32 %162)
  %164 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %165 = call i32 @radeon_ib_schedule(%struct.radeon_device* %164, %struct.radeon_ib* %14, i32* null, i32 0)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %147
  %169 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %170 = call i32 @radeon_ib_free(%struct.radeon_device* %169, %struct.radeon_ib* %14)
  %171 = load i32, i32* %15, align 4
  store i32 %171, i32* %3, align 4
  br label %183

172:                                              ; preds = %147
  %173 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %14, i32 0, i32 1
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  store i32 1, i32* %175, align 4
  %176 = load %struct.radeon_bo*, %struct.radeon_bo** %6, align 8
  %177 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %14, i32 0, i32 1
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = call i32 @radeon_bo_fence(%struct.radeon_bo* %176, %struct.TYPE_8__* %178, i32 0)
  br label %180

180:                                              ; preds = %172, %143
  %181 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %182 = call i32 @radeon_ib_free(%struct.radeon_device* %181, %struct.radeon_ib* %14)
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %180, %168, %45, %34
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i64 @radeon_bo_gpu_offset(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @radeon_vm_set_pages(%struct.radeon_device*, %struct.radeon_ib*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @radeon_asic_vm_pad_ib(%struct.radeon_device*, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_sync_resv(%struct.radeon_device*, i32*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_bo_fence(%struct.radeon_bo*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
